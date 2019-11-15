package com.mi.mimsgsdk.utils;

import java.util.concurrent.ConcurrentHashMap;

public class AttachmentManagerUtils {
    private static final int THREAD_HOLD = 10;
    public static final ConcurrentHashMap<String, Long> mDownloadingResources = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<String, Integer> mFailedDownloadingResStatic = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<Long, Long> mUploadingResources = new ConcurrentHashMap<>();

    public static boolean isResourceDownloading(String str) {
        if (str != null) {
            return mDownloadingResources.containsKey(str);
        }
        return false;
    }

    public static long getResourceDownloadingProgress(String str) {
        Long l = (Long) mDownloadingResources.get(str);
        if (l == null) {
            return 0;
        }
        return l.longValue();
    }

    public static boolean isResourceUploading(Long l) {
        return mUploadingResources.containsKey(l);
    }

    public static long getResourceUploadingProgress(Long l) {
        if (mUploadingResources.containsKey(l)) {
            return ((Long) mUploadingResources.get(l)).longValue();
        }
        return 0;
    }

    public static synchronized boolean isEffectiveRes(String str) {
        boolean z;
        synchronized (AttachmentManagerUtils.class) {
            z = !mFailedDownloadingResStatic.containsKey(str) ? true : ((Integer) mFailedDownloadingResStatic.get(str)).intValue() <= 10;
        }
        return z;
    }

    public static synchronized void updateResInvalidCoefficient(String str) {
        synchronized (AttachmentManagerUtils.class) {
            if (!mFailedDownloadingResStatic.containsKey(str)) {
                mFailedDownloadingResStatic.put(str, Integer.valueOf(1));
            } else {
                mFailedDownloadingResStatic.put(str, Integer.valueOf(((Integer) mFailedDownloadingResStatic.get(str)).intValue() + 1));
            }
        }
    }
}
