package com.xiaomi.utils;

import android.util.Log;

public class PerformanceDetect {
    private static final String TAG = "PerformanceDetect";

    private static native long timeUsedToFilterJni();

    private static native long timeUsedToSmoothFilterJni();

    private static native long timeUsedToSmoothJni();

    private static native long timeUsedToSmoothStickerRenderFilterJni();

    private static native long timeUsedToSmoothStickerRenderJni();

    private static native long timeUsedToStickerRenderFilterJni();

    private static native long timeUsedToStickerRenderJni();

    public static long timeUsedToSmooth() {
        Log.i(TAG, "time used to smooth");
        return timeUsedToSmoothJni();
    }

    public static long timeUsedToStickerRender() {
        Log.i(TAG, "time used to sticker render");
        return timeUsedToStickerRenderJni();
    }

    public static long timeUsedToFilter() {
        Log.i(TAG, "time used to filter");
        return timeUsedToFilterJni();
    }

    public static long timeUsedToSmoothStickerRender() {
        Log.i(TAG, "time used to smooth sticker render");
        return timeUsedToSmoothStickerRenderJni();
    }

    public static long timeUsedToSmoothFilter() {
        Log.i(TAG, "time used to smooth filter");
        return timeUsedToSmoothFilterJni();
    }

    public static long timeUsedToStickerRenderFilter() {
        Log.i(TAG, "time used to sticker render filter");
        return timeUsedToStickerRenderFilterJni();
    }

    public static long timeUsedToSmoothStickerRenderFilter() {
        Log.i(TAG, "time used to smooth sticker render filter");
        return timeUsedToSmoothStickerRenderFilterJni();
    }
}
