package com.nostra13.universalimageloader.cache.disc.impl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.core.DefaultConfigurationFactory;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public abstract class BaseDiskCache implements DiskCache {
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final CompressFormat DEFAULT_COMPRESS_FORMAT = CompressFormat.PNG;
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    private static final String ERROR_ARG_NULL = " argument must be not null";
    private static final String TEMP_IMAGE_POSTFIX = ".tmp";
    protected int bufferSize;
    protected final File cacheDir;
    protected CompressFormat compressFormat;
    protected int compressQuality;
    protected final FileNameGenerator fileNameGenerator;
    protected final File reserveCacheDir;

    public BaseDiskCache(File file) {
        this(file, null);
    }

    public BaseDiskCache(File file, File file2) {
        this(file, file2, DefaultConfigurationFactory.createFileNameGenerator());
    }

    public BaseDiskCache(File file, File file2, FileNameGenerator fileNameGenerator2) {
        this.bufferSize = 32768;
        this.compressFormat = DEFAULT_COMPRESS_FORMAT;
        this.compressQuality = 100;
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        } else if (fileNameGenerator2 == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        } else {
            this.cacheDir = file;
            this.reserveCacheDir = file2;
            this.fileNameGenerator = fileNameGenerator2;
        }
    }

    public File getDirectory() {
        return this.cacheDir;
    }

    public File get(String str) {
        return getFile(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0057  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean save(java.lang.String r7, java.io.InputStream r8, com.nostra13.universalimageloader.utils.IoUtils.CopyListener r9) throws java.io.IOException {
        /*
            r6 = this;
            r2 = 0
            java.io.File r3 = r6.getFile(r7)
            java.io.File r4 = new java.io.File
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r3.getAbsolutePath()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = ".tmp"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            java.io.BufferedOutputStream r5 = new java.io.BufferedOutputStream     // Catch:{ all -> 0x004a }
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch:{ all -> 0x004a }
            r0.<init>(r4)     // Catch:{ all -> 0x004a }
            int r1 = r6.bufferSize     // Catch:{ all -> 0x004a }
            r5.<init>(r0, r1)     // Catch:{ all -> 0x004a }
            int r0 = r6.bufferSize     // Catch:{ all -> 0x0045 }
            boolean r1 = com.nostra13.universalimageloader.utils.IoUtils.copyStream(r8, r5, r9, r0)     // Catch:{ all -> 0x0045 }
            com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5)     // Catch:{ all -> 0x005b }
            if (r1 == 0) goto L_0x003f
            boolean r0 = r4.renameTo(r3)
            if (r0 != 0) goto L_0x003f
            r1 = r2
        L_0x003f:
            if (r1 != 0) goto L_0x0044
            r4.delete()
        L_0x0044:
            return r1
        L_0x0045:
            r0 = move-exception
            com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5)     // Catch:{ all -> 0x004a }
            throw r0     // Catch:{ all -> 0x004a }
        L_0x004a:
            r0 = move-exception
            r1 = r2
        L_0x004c:
            if (r1 == 0) goto L_0x0055
            boolean r3 = r4.renameTo(r3)
            if (r3 != 0) goto L_0x0055
            r1 = r2
        L_0x0055:
            if (r1 != 0) goto L_0x005a
            r4.delete()
        L_0x005a:
            throw r0
        L_0x005b:
            r0 = move-exception
            goto L_0x004c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache.save(java.lang.String, java.io.InputStream, com.nostra13.universalimageloader.utils.IoUtils$CopyListener):boolean");
    }

    public boolean save(String str, Bitmap bitmap) throws IOException {
        File file = getFile(str);
        File file2 = new File(file.getAbsolutePath() + ".tmp");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), this.bufferSize);
        try {
            boolean compress = bitmap.compress(this.compressFormat, this.compressQuality, bufferedOutputStream);
            IoUtils.closeSilently(bufferedOutputStream);
            if (compress && !file2.renameTo(file)) {
                compress = false;
            }
            if (!compress) {
                file2.delete();
            }
            bitmap.recycle();
            return compress;
        } catch (Throwable th) {
            IoUtils.closeSilently(bufferedOutputStream);
            file2.delete();
            throw th;
        }
    }

    public boolean remove(String str) {
        return getFile(str).delete();
    }

    public void close() {
    }

    public void clear() {
        File[] listFiles = this.cacheDir.listFiles();
        if (listFiles != null) {
            for (File delete : listFiles) {
                delete.delete();
            }
        }
    }

    /* access modifiers changed from: protected */
    public File getFile(String str) {
        String generate = this.fileNameGenerator.generate(str);
        File file = this.cacheDir;
        if (!this.cacheDir.exists() && !this.cacheDir.mkdirs() && this.reserveCacheDir != null && (this.reserveCacheDir.exists() || this.reserveCacheDir.mkdirs())) {
            file = this.reserveCacheDir;
        }
        return new File(file, generate);
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
