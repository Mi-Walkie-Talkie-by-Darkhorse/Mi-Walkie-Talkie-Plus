package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.Editor;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class LruDiskCache implements DiskCache {
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final CompressFormat DEFAULT_COMPRESS_FORMAT = CompressFormat.PNG;
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    private static final String ERROR_ARG_NEGATIVE = " argument must be positive number";
    private static final String ERROR_ARG_NULL = " argument must be not null";
    protected int bufferSize;
    protected DiskLruCache cache;
    protected CompressFormat compressFormat;
    protected int compressQuality;
    protected final FileNameGenerator fileNameGenerator;
    private File reserveCacheDir;

    public LruDiskCache(File file, FileNameGenerator fileNameGenerator2, long j) throws IOException {
        this(file, null, fileNameGenerator2, j, 0);
    }

    public LruDiskCache(File file, File file2, FileNameGenerator fileNameGenerator2, long j, int i) throws IOException {
        long j2;
        int i2;
        this.bufferSize = 32768;
        this.compressFormat = DEFAULT_COMPRESS_FORMAT;
        this.compressQuality = 100;
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        } else if (j < 0) {
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        } else if (i < 0) {
            throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
        } else if (fileNameGenerator2 == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        } else {
            if (j == 0) {
                j2 = FileTracerConfig.FOREVER;
            } else {
                j2 = j;
            }
            if (i == 0) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = i;
            }
            this.reserveCacheDir = file2;
            this.fileNameGenerator = fileNameGenerator2;
            initCache(file, file2, j2, i2);
        }
    }

    private void initCache(File file, File file2, long j, int i) throws IOException {
        try {
            this.cache = DiskLruCache.open(file, 1, 1, j, i);
        } catch (IOException e) {
            L.e(e);
            if (file2 != null) {
                initCache(file2, null, j, i);
            }
            if (this.cache == null) {
                throw e;
            }
        }
    }

    public File getDirectory() {
        return this.cache.getDirectory();
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.io.File get(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache r1 = r3.cache     // Catch:{ IOException -> 0x0019, all -> 0x0024 }
            java.lang.String r2 = r3.getKey(r4)     // Catch:{ IOException -> 0x0019, all -> 0x0024 }
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$Snapshot r2 = r1.get(r2)     // Catch:{ IOException -> 0x0019, all -> 0x0024 }
            if (r2 != 0) goto L_0x0013
        L_0x000d:
            if (r2 == 0) goto L_0x0012
            r2.close()
        L_0x0012:
            return r0
        L_0x0013:
            r1 = 0
            java.io.File r0 = r2.getFile(r1)     // Catch:{ IOException -> 0x002f }
            goto L_0x000d
        L_0x0019:
            r1 = move-exception
            r2 = r0
        L_0x001b:
            com.nostra13.universalimageloader.utils.L.e(r1)     // Catch:{ all -> 0x002d }
            if (r2 == 0) goto L_0x0012
            r2.close()
            goto L_0x0012
        L_0x0024:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0027:
            if (r2 == 0) goto L_0x002c
            r2.close()
        L_0x002c:
            throw r0
        L_0x002d:
            r0 = move-exception
            goto L_0x0027
        L_0x002f:
            r1 = move-exception
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.disc.impl.ext.LruDiskCache.get(java.lang.String):java.io.File");
    }

    public boolean save(String str, InputStream inputStream, CopyListener copyListener) throws IOException {
        boolean z = false;
        Editor edit = this.cache.edit(getKey(str));
        if (edit != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0), this.bufferSize);
            try {
                z = IoUtils.copyStream(inputStream, bufferedOutputStream, copyListener, this.bufferSize);
                IoUtils.closeSilently(bufferedOutputStream);
                if (z) {
                    edit.commit();
                } else {
                    edit.abort();
                }
            } catch (Throwable th) {
                IoUtils.closeSilently(bufferedOutputStream);
                edit.abort();
                throw th;
            }
        }
        return z;
    }

    public boolean save(String str, Bitmap bitmap) throws IOException {
        boolean z = false;
        Editor edit = this.cache.edit(getKey(str));
        if (edit != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0), this.bufferSize);
            try {
                z = bitmap.compress(this.compressFormat, this.compressQuality, bufferedOutputStream);
                if (z) {
                    edit.commit();
                } else {
                    edit.abort();
                }
            } finally {
                IoUtils.closeSilently(bufferedOutputStream);
            }
        }
        return z;
    }

    public boolean remove(String str) {
        try {
            return this.cache.remove(getKey(str));
        } catch (IOException e) {
            L.e(e);
            return false;
        }
    }

    public void close() {
        try {
            this.cache.close();
        } catch (IOException e) {
            L.e(e);
        }
        this.cache = null;
    }

    public void clear() {
        try {
            this.cache.delete();
        } catch (IOException e) {
            L.e(e);
        }
        try {
            initCache(this.cache.getDirectory(), this.reserveCacheDir, this.cache.getMaxSize(), this.cache.getMaxFileCount());
        } catch (IOException e2) {
            L.e(e2);
        }
    }

    private String getKey(String str) {
        return this.fileNameGenerator.generate(str);
    }

    public void setBufferSize(int i) {
        this.bufferSize = i;
    }

    public void setCompressFormat(CompressFormat compressFormat2) {
        this.compressFormat = compressFormat2;
    }

    public void setCompressQuality(int i) {
        this.compressQuality = i;
    }
}
