package org.osmdroid.tileprovider.util;

import android.util.Log;

public class Counters {
    static final String TAG = "osmCounters";
    public static int countOOM = 0;
    public static int fileCacheHit = 0;
    public static int fileCacheMiss = 0;
    public static int fileCacheOOM = 0;
    public static int fileCacheSaveErrors = 0;
    public static int tileDownloadErrors = 0;

    public static void printToLogcat() {
        Log.d(TAG, "countOOM " + countOOM);
        Log.d(TAG, "tileDownloadErrors " + tileDownloadErrors);
        Log.d(TAG, "fileCacheSaveErrors " + fileCacheSaveErrors);
        Log.d(TAG, "fileCacheMiss " + fileCacheMiss);
        Log.d(TAG, "fileCacheOOM " + fileCacheOOM);
        Log.d(TAG, "fileCacheHit " + fileCacheHit);
    }

    public static void reset() {
        countOOM = 0;
        tileDownloadErrors = 0;
        fileCacheSaveErrors = 0;
        fileCacheMiss = 0;
        fileCacheOOM = 0;
        fileCacheHit = 0;
    }
}
