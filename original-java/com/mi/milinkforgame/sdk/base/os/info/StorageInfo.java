package com.mi.milinkforgame.sdk.base.os.info;

import android.os.StatFs;
import java.io.File;

public class StorageInfo {
    private long availableSize;
    private File rootPath;
    private long totalSize;

    public File getRootPath() {
        return this.rootPath;
    }

    public void setRootPath(File file) {
        this.rootPath = file;
    }

    public long getTotalSize() {
        return this.totalSize;
    }

    public void setTotalSize(long j) {
        this.totalSize = j;
    }

    public long getAvailableSize() {
        return this.availableSize;
    }

    public void setAvailableSize(long j) {
        this.availableSize = j;
    }

    public static StorageInfo fromFile(File file) {
        StorageInfo storageInfo = new StorageInfo();
        storageInfo.setRootPath(file);
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            long blockSize = (long) statFs.getBlockSize();
            long availableBlocks = (long) statFs.getAvailableBlocks();
            storageInfo.setTotalSize(((long) statFs.getBlockCount()) * blockSize);
            storageInfo.setAvailableSize(blockSize * availableBlocks);
        } catch (Exception e) {
            storageInfo.setAvailableSize(0);
            storageInfo.setTotalSize(0);
        }
        return storageInfo;
    }

    public String toString() {
        String absolutePath;
        String str = "[%s : %d / %d]";
        Object[] objArr = new Object[3];
        if (this.rootPath == null) {
            absolutePath = "NULL";
        } else {
            absolutePath = this.rootPath.getAbsolutePath();
        }
        objArr[0] = absolutePath;
        objArr[1] = Long.valueOf(getAvailableSize());
        objArr[2] = Long.valueOf(getTotalSize());
        return String.format(str, objArr);
    }
}
