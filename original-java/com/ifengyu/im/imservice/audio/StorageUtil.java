package com.ifengyu.im.imservice.audio;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

public class StorageUtil {
    public static final long K = 1024;
    public static final long M = 1048576;
    static final long THRESHOLD_MIN_SPCAE = 20971520;
    private static final long THRESHOLD_WARNING_SPACE = 104857600;

    public static void init(Context context, String str) {
        ExternalStorage.getInstance().init(context, str);
    }

    public static String getWritePath(String str, StorageType storageType) {
        return getWritePath(null, str, storageType, false);
    }

    private static String getWritePath(Context context, String str, StorageType storageType, boolean z) {
        String writePath = ExternalStorage.getInstance().getWritePath(str, storageType);
        if (TextUtils.isEmpty(writePath)) {
            return null;
        }
        File parentFile = new File(writePath).getParentFile();
        if (parentFile == null || parentFile.exists()) {
            return writePath;
        }
        parentFile.mkdirs();
        return writePath;
    }

    public static boolean isExternalStorageExist() {
        return ExternalStorage.getInstance().isSdkStorageReady();
    }

    public static boolean hasEnoughSpaceForWrite(Context context, StorageType storageType, boolean z) {
        if (!ExternalStorage.getInstance().isSdkStorageReady()) {
            return false;
        }
        long availableExternalSize = ExternalStorage.getInstance().getAvailableExternalSize();
        if (availableExternalSize < storageType.getStorageMinSize()) {
            return false;
        }
        if (availableExternalSize < THRESHOLD_WARNING_SPACE) {
        }
        return true;
    }

    public static String getReadPath(String str, StorageType storageType) {
        return ExternalStorage.getInstance().getReadPath(str, storageType);
    }

    public static String getWritePath(Context context, String str, StorageType storageType) {
        return getWritePath(context, str, storageType, true);
    }

    public static String getDirectoryByDirType(StorageType storageType) {
        return ExternalStorage.getInstance().getDirectoryByDirType(storageType);
    }

    public static String getSystemImagePath() {
        if (VERSION.SDK_INT > 7) {
            return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath() + "/nim/";
        }
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath() + "/nim/";
    }

    public static boolean isInvalidVideoFile(String str) {
        return str.toLowerCase().endsWith(".3gp") || str.toLowerCase().endsWith(".mp4");
    }

    public static void checkValid() {
        ExternalStorage.getInstance().checkStorageValid();
    }
}
