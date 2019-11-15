package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class LoadAndDisplayImageTask implements CopyListener, Runnable {
    private static final String ERROR_NO_IMAGE_STREAM = "No stream for image [%s]";
    private static final String ERROR_POST_PROCESSOR_NULL = "Post-processor returned null [%s]";
    private static final String ERROR_PRE_PROCESSOR_NULL = "Pre-processor returned null [%s]";
    private static final String ERROR_PROCESSOR_FOR_DISK_CACHE_NULL = "Bitmap processor for disk cache returned null [%s]";
    private static final String LOG_CACHE_IMAGE_IN_MEMORY = "Cache image in memory [%s]";
    private static final String LOG_CACHE_IMAGE_ON_DISK = "Cache image on disk [%s]";
    private static final String LOG_DELAY_BEFORE_LOADING = "Delay %d ms before loading...  [%s]";
    private static final String LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING = "...Get cached bitmap from memory after waiting. [%s]";
    private static final String LOG_LOAD_IMAGE_FROM_DISK_CACHE = "Load image from disk cache [%s]";
    private static final String LOG_LOAD_IMAGE_FROM_NETWORK = "Load image from network [%s]";
    private static final String LOG_POSTPROCESS_IMAGE = "PostProcess image before displaying [%s]";
    private static final String LOG_PREPROCESS_IMAGE = "PreProcess image before caching in memory [%s]";
    private static final String LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK = "Process image before cache on disk [%s]";
    private static final String LOG_RESIZE_CACHED_IMAGE_FILE = "Resize image in disk cache [%s]";
    private static final String LOG_RESUME_AFTER_PAUSE = ".. Resume loading [%s]";
    private static final String LOG_START_DISPLAY_IMAGE_TASK = "Start display image task [%s]";
    private static final String LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED = "ImageAware was collected by GC. Task is cancelled. [%s]";
    private static final String LOG_TASK_CANCELLED_IMAGEAWARE_REUSED = "ImageAware is reused for another image. Task is cancelled. [%s]";
    private static final String LOG_TASK_INTERRUPTED = "Task was interrupted [%s]";
    private static final String LOG_WAITING_FOR_IMAGE_LOADED = "Image already is loading. Waiting... [%s]";
    private static final String LOG_WAITING_FOR_RESUME = "ImageLoader is paused. Waiting...  [%s]";
    /* access modifiers changed from: private */
    public final ImageLoaderConfiguration configuration;
    private final ImageDecoder decoder;
    private final ImageDownloader downloader;
    private final ImageLoaderEngine engine;
    private final Handler handler;
    final ImageAware imageAware;
    private final ImageLoadingInfo imageLoadingInfo;
    final ImageLoadingListener listener;
    private LoadedFrom loadedFrom = LoadedFrom.NETWORK;
    private final String memoryCacheKey;
    private final ImageDownloader networkDeniedDownloader;
    final DisplayImageOptions options;
    final ImageLoadingProgressListener progressListener;
    private final ImageDownloader slowNetworkDownloader;
    private final boolean syncLoading;
    private final ImageSize targetSize;
    final String uri;

    class TaskCancelledException extends Exception {
        TaskCancelledException() {
        }
    }

    public LoadAndDisplayImageTask(ImageLoaderEngine imageLoaderEngine, ImageLoadingInfo imageLoadingInfo2, Handler handler2) {
        this.engine = imageLoaderEngine;
        this.imageLoadingInfo = imageLoadingInfo2;
        this.handler = handler2;
        this.configuration = imageLoaderEngine.configuration;
        this.downloader = this.configuration.downloader;
        this.networkDeniedDownloader = this.configuration.networkDeniedDownloader;
        this.slowNetworkDownloader = this.configuration.slowNetworkDownloader;
        this.decoder = this.configuration.decoder;
        this.uri = imageLoadingInfo2.uri;
        this.memoryCacheKey = imageLoadingInfo2.memoryCacheKey;
        this.imageAware = imageLoadingInfo2.imageAware;
        this.targetSize = imageLoadingInfo2.targetSize;
        this.options = imageLoadingInfo2.options;
        this.listener = imageLoadingInfo2.listener;
        this.progressListener = imageLoadingInfo2.progressListener;
        this.syncLoading = this.options.isSyncLoading();
    }

    public void run() {
        if (!waitIfPaused() && !delayIfNeed()) {
            ReentrantLock reentrantLock = this.imageLoadingInfo.loadFromUriLock;
            L.d(LOG_START_DISPLAY_IMAGE_TASK, this.memoryCacheKey);
            if (reentrantLock.isLocked()) {
                L.d(LOG_WAITING_FOR_IMAGE_LOADED, this.memoryCacheKey);
            }
            reentrantLock.lock();
            try {
                checkTaskNotActual();
                Bitmap bitmap = this.configuration.memoryCache.get(this.memoryCacheKey);
                if (bitmap == null || bitmap.isRecycled()) {
                    bitmap = tryLoadBitmap();
                    if (bitmap != null) {
                        checkTaskNotActual();
                        checkTaskInterrupted();
                        if (this.options.shouldPreProcess()) {
                            L.d(LOG_PREPROCESS_IMAGE, this.memoryCacheKey);
                            bitmap = this.options.getPreProcessor().process(bitmap);
                            if (bitmap == null) {
                                L.e(ERROR_PRE_PROCESSOR_NULL, this.memoryCacheKey);
                            }
                        }
                        if (bitmap != null && this.options.isCacheInMemory()) {
                            L.d(LOG_CACHE_IMAGE_IN_MEMORY, this.memoryCacheKey);
                            this.configuration.memoryCache.put(this.memoryCacheKey, bitmap);
                        }
                    } else {
                        return;
                    }
                } else {
                    this.loadedFrom = LoadedFrom.MEMORY_CACHE;
                    L.d(LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING, this.memoryCacheKey);
                }
                if (bitmap != null && this.options.shouldPostProcess()) {
                    L.d(LOG_POSTPROCESS_IMAGE, this.memoryCacheKey);
                    bitmap = this.options.getPostProcessor().process(bitmap);
                    if (bitmap == null) {
                        L.e(ERROR_POST_PROCESSOR_NULL, this.memoryCacheKey);
                    }
                }
                checkTaskNotActual();
                checkTaskInterrupted();
                reentrantLock.unlock();
                runTask(new DisplayBitmapTask(bitmap, this.imageLoadingInfo, this.engine, this.loadedFrom), this.syncLoading, this.handler, this.engine);
            } catch (TaskCancelledException e) {
                fireCancelEvent();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    private boolean waitIfPaused() {
        AtomicBoolean pause = this.engine.getPause();
        if (pause.get()) {
            synchronized (this.engine.getPauseLock()) {
                if (pause.get()) {
                    L.d(LOG_WAITING_FOR_RESUME, this.memoryCacheKey);
                    try {
                        this.engine.getPauseLock().wait();
                        L.d(LOG_RESUME_AFTER_PAUSE, this.memoryCacheKey);
                    } catch (InterruptedException e) {
                        L.e(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
                        return true;
                    }
                }
            }
        }
        return isTaskNotActual();
    }

    private boolean delayIfNeed() {
        if (!this.options.shouldDelayBeforeLoading()) {
            return false;
        }
        L.d(LOG_DELAY_BEFORE_LOADING, Integer.valueOf(this.options.getDelayBeforeLoading()), this.memoryCacheKey);
        try {
            Thread.sleep((long) this.options.getDelayBeforeLoading());
            return isTaskNotActual();
        } catch (InterruptedException e) {
            L.e(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
            return true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004b, code lost:
        if (r0.getHeight() > 0) goto L_0x009f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00a1, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00a8, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a9, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00aa, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00ab, code lost:
        r6 = r0;
        r0 = null;
        r1 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00b7, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00b8, code lost:
        r6 = r0;
        r0 = null;
        r1 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00c4, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00c5, code lost:
        r6 = r0;
        r0 = null;
        r1 = r6;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00a8 A[ExcHandler: TaskCancelledException (r0v9 'e' com.nostra13.universalimageloader.core.LoadAndDisplayImageTask$TaskCancelledException A[CUSTOM_DECLARE]), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap tryLoadBitmap() throws com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.TaskCancelledException {
        /*
            r7 = this;
            r1 = 0
            com.nostra13.universalimageloader.core.ImageLoaderConfiguration r0 = r7.configuration     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            com.nostra13.universalimageloader.cache.disc.DiskCache r0 = r0.diskCache     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            java.lang.String r2 = r7.uri     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            java.io.File r0 = r0.get(r2)     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            if (r0 == 0) goto L_0x00d9
            boolean r2 = r0.exists()     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            if (r2 == 0) goto L_0x00d9
            long r2 = r0.length()     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L_0x00d9
            java.lang.String r2 = "Load image from disk cache [%s]"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            r4 = 0
            java.lang.String r5 = r7.memoryCacheKey     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            r3[r4] = r5     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            com.nostra13.universalimageloader.utils.L.d(r2, r3)     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            com.nostra13.universalimageloader.core.assist.LoadedFrom r2 = com.nostra13.universalimageloader.core.assist.LoadedFrom.DISC_CACHE     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            r7.loadedFrom = r2     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            r7.checkTaskNotActual()     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            com.nostra13.universalimageloader.core.download.ImageDownloader$Scheme r2 = com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.FILE     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            java.lang.String r0 = r0.getAbsolutePath()     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            java.lang.String r0 = r2.wrap(r0)     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
            android.graphics.Bitmap r0 = r7.decodeImage(r0)     // Catch:{ IllegalStateException -> 0x00a0, TaskCancelledException -> 0x00a8, IOException -> 0x00aa, OutOfMemoryError -> 0x00b7, Throwable -> 0x00c4 }
        L_0x003f:
            if (r0 == 0) goto L_0x004d
            int r2 = r0.getWidth()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r2 <= 0) goto L_0x004d
            int r2 = r0.getHeight()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r2 > 0) goto L_0x009f
        L_0x004d:
            java.lang.String r2 = "Load image from network [%s]"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            r4 = 0
            java.lang.String r5 = r7.memoryCacheKey     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            r3[r4] = r5     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            com.nostra13.universalimageloader.utils.L.d(r2, r3)     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            com.nostra13.universalimageloader.core.assist.LoadedFrom r2 = com.nostra13.universalimageloader.core.assist.LoadedFrom.NETWORK     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            r7.loadedFrom = r2     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            java.lang.String r2 = r7.uri     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            com.nostra13.universalimageloader.core.DisplayImageOptions r3 = r7.options     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            boolean r3 = r3.isCacheOnDisk()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r3 == 0) goto L_0x0084
            boolean r3 = r7.tryCacheImageOnDisk()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r3 == 0) goto L_0x0084
            com.nostra13.universalimageloader.core.ImageLoaderConfiguration r3 = r7.configuration     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            com.nostra13.universalimageloader.cache.disc.DiskCache r3 = r3.diskCache     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            java.lang.String r4 = r7.uri     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            java.io.File r3 = r3.get(r4)     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r3 == 0) goto L_0x0084
            com.nostra13.universalimageloader.core.download.ImageDownloader$Scheme r2 = com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.FILE     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            java.lang.String r3 = r3.getAbsolutePath()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            java.lang.String r2 = r2.wrap(r3)     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
        L_0x0084:
            r7.checkTaskNotActual()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            android.graphics.Bitmap r0 = r7.decodeImage(r2)     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r0 == 0) goto L_0x0099
            int r2 = r0.getWidth()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r2 <= 0) goto L_0x0099
            int r2 = r0.getHeight()     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            if (r2 > 0) goto L_0x009f
        L_0x0099:
            com.nostra13.universalimageloader.core.assist.FailReason$FailType r2 = com.nostra13.universalimageloader.core.assist.FailReason.FailType.DECODING_ERROR     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
            r3 = 0
            r7.fireFailEvent(r2, r3)     // Catch:{ IllegalStateException -> 0x00d7, TaskCancelledException -> 0x00a8, IOException -> 0x00d5, OutOfMemoryError -> 0x00d3, Throwable -> 0x00d1 }
        L_0x009f:
            return r0
        L_0x00a0:
            r0 = move-exception
            r0 = r1
        L_0x00a2:
            com.nostra13.universalimageloader.core.assist.FailReason$FailType r2 = com.nostra13.universalimageloader.core.assist.FailReason.FailType.NETWORK_DENIED
            r7.fireFailEvent(r2, r1)
            goto L_0x009f
        L_0x00a8:
            r0 = move-exception
            throw r0
        L_0x00aa:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
        L_0x00ae:
            com.nostra13.universalimageloader.utils.L.e(r1)
            com.nostra13.universalimageloader.core.assist.FailReason$FailType r2 = com.nostra13.universalimageloader.core.assist.FailReason.FailType.IO_ERROR
            r7.fireFailEvent(r2, r1)
            goto L_0x009f
        L_0x00b7:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
        L_0x00bb:
            com.nostra13.universalimageloader.utils.L.e(r1)
            com.nostra13.universalimageloader.core.assist.FailReason$FailType r2 = com.nostra13.universalimageloader.core.assist.FailReason.FailType.OUT_OF_MEMORY
            r7.fireFailEvent(r2, r1)
            goto L_0x009f
        L_0x00c4:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
        L_0x00c8:
            com.nostra13.universalimageloader.utils.L.e(r1)
            com.nostra13.universalimageloader.core.assist.FailReason$FailType r2 = com.nostra13.universalimageloader.core.assist.FailReason.FailType.UNKNOWN
            r7.fireFailEvent(r2, r1)
            goto L_0x009f
        L_0x00d1:
            r1 = move-exception
            goto L_0x00c8
        L_0x00d3:
            r1 = move-exception
            goto L_0x00bb
        L_0x00d5:
            r1 = move-exception
            goto L_0x00ae
        L_0x00d7:
            r2 = move-exception
            goto L_0x00a2
        L_0x00d9:
            r0 = r1
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.tryLoadBitmap():android.graphics.Bitmap");
    }

    private Bitmap decodeImage(String str) throws IOException {
        String str2 = str;
        return this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, str2, this.uri, this.targetSize, this.imageAware.getScaleType(), getDownloader(), this.options));
    }

    private boolean tryCacheImageOnDisk() throws TaskCancelledException {
        L.d(LOG_CACHE_IMAGE_ON_DISK, this.memoryCacheKey);
        try {
            boolean downloadImage = downloadImage();
            if (!downloadImage) {
                return downloadImage;
            }
            int i = this.configuration.maxImageWidthForDiskCache;
            int i2 = this.configuration.maxImageHeightForDiskCache;
            if (i <= 0 && i2 <= 0) {
                return downloadImage;
            }
            L.d(LOG_RESIZE_CACHED_IMAGE_FILE, this.memoryCacheKey);
            resizeAndSaveImage(i, i2);
            return downloadImage;
        } catch (IOException e) {
            L.e(e);
            return false;
        }
    }

    private boolean downloadImage() throws IOException {
        boolean z = false;
        InputStream stream = getDownloader().getStream(this.uri, this.options.getExtraForDownloader());
        if (stream == null) {
            L.e(ERROR_NO_IMAGE_STREAM, this.memoryCacheKey);
        } else {
            try {
                z = this.configuration.diskCache.save(this.uri, stream, this);
            } finally {
                IoUtils.closeSilently(stream);
            }
        }
        return z;
    }

    private boolean resizeAndSaveImage(int i, int i2) throws IOException {
        File file = this.configuration.diskCache.get(this.uri);
        if (file != null && file.exists()) {
            Bitmap decode = this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, Scheme.FILE.wrap(file.getAbsolutePath()), this.uri, new ImageSize(i, i2), ViewScaleType.FIT_INSIDE, getDownloader(), new Builder().cloneFrom(this.options).imageScaleType(ImageScaleType.IN_SAMPLE_INT).build()));
            if (!(decode == null || this.configuration.processorForDiskCache == null)) {
                L.d(LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK, this.memoryCacheKey);
                decode = this.configuration.processorForDiskCache.process(decode);
                if (decode == null) {
                    L.e(ERROR_PROCESSOR_FOR_DISK_CACHE_NULL, this.memoryCacheKey);
                }
            }
            Bitmap bitmap = decode;
            if (bitmap != null) {
                boolean save = this.configuration.diskCache.save(this.uri, bitmap);
                bitmap.recycle();
                return save;
            }
        }
        return false;
    }

    public boolean onBytesCopied(int i, int i2) {
        return this.syncLoading || fireProgressEvent(i, i2);
    }

    private boolean fireProgressEvent(final int i, final int i2) {
        if (isTaskInterrupted() || isTaskNotActual()) {
            return false;
        }
        if (this.progressListener != null) {
            runTask(new Runnable() {
                public void run() {
                    LoadAndDisplayImageTask.this.progressListener.onProgressUpdate(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), i, i2);
                }
            }, false, this.handler, this.engine);
        }
        return true;
    }

    private void fireFailEvent(final FailType failType, final Throwable th) {
        if (!this.syncLoading && !isTaskInterrupted() && !isTaskNotActual()) {
            runTask(new Runnable() {
                public void run() {
                    if (LoadAndDisplayImageTask.this.options.shouldShowImageOnFail()) {
                        LoadAndDisplayImageTask.this.imageAware.setImageDrawable(LoadAndDisplayImageTask.this.options.getImageOnFail(LoadAndDisplayImageTask.this.configuration.resources));
                    }
                    LoadAndDisplayImageTask.this.listener.onLoadingFailed(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), new FailReason(failType, th));
                }
            }, false, this.handler, this.engine);
        }
    }

    private void fireCancelEvent() {
        if (!this.syncLoading && !isTaskInterrupted()) {
            runTask(new Runnable() {
                public void run() {
                    LoadAndDisplayImageTask.this.listener.onLoadingCancelled(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView());
                }
            }, false, this.handler, this.engine);
        }
    }

    private ImageDownloader getDownloader() {
        if (this.engine.isNetworkDenied()) {
            return this.networkDeniedDownloader;
        }
        if (this.engine.isSlowNetwork()) {
            return this.slowNetworkDownloader;
        }
        return this.downloader;
    }

    private void checkTaskNotActual() throws TaskCancelledException {
        checkViewCollected();
        checkViewReused();
    }

    private boolean isTaskNotActual() {
        return isViewCollected() || isViewReused();
    }

    private void checkViewCollected() throws TaskCancelledException {
        if (isViewCollected()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isViewCollected() {
        if (!this.imageAware.isCollected()) {
            return false;
        }
        L.d(LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED, this.memoryCacheKey);
        return true;
    }

    private void checkViewReused() throws TaskCancelledException {
        if (isViewReused()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isViewReused() {
        if (!(!this.memoryCacheKey.equals(this.engine.getLoadingUriForView(this.imageAware)))) {
            return false;
        }
        L.d(LOG_TASK_CANCELLED_IMAGEAWARE_REUSED, this.memoryCacheKey);
        return true;
    }

    private void checkTaskInterrupted() throws TaskCancelledException {
        if (isTaskInterrupted()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isTaskInterrupted() {
        if (!Thread.interrupted()) {
            return false;
        }
        L.d(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public String getLoadingUri() {
        return this.uri;
    }

    static void runTask(Runnable runnable, boolean z, Handler handler2, ImageLoaderEngine imageLoaderEngine) {
        if (z) {
            runnable.run();
        } else if (handler2 == null) {
            imageLoaderEngine.fireCallback(runnable);
        } else {
            handler2.post(runnable);
        }
    }
}
