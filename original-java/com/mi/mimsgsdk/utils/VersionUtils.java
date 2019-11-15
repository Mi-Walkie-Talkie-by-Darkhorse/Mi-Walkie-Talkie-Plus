package com.mi.mimsgsdk.utils;

import android.content.Context;

public class VersionUtils {
    private static String CHANNEL_DEFAULT = "default";
    private static String CHANNEL_MI_AI_KEFU = "channel_mi_ai_kefu";
    private static String CHANNEL_MI_CAR = "channel_mi_car";
    private static String CHANNEL_MI_GOD = "channel_mi_god";
    private static String CHANNEL_MI_QIANGZHAN = "channel_mi_qiangzhan";
    private static String CHANNEL_MI_REN = "channel_mi_ren";
    private static String CHANNEL_MI_SOUNDBOX = "channel_mi_soundbox";
    private static String CHANNEL_MI_WATCH = "channel_mi_watch";
    private static String CHANNEL_QWANG = "qWang";

    public static String getMiSDKVersionCode() {
        return "1.5.8";
    }

    public static String getMiSDKChannel() {
        return CHANNEL_MI_SOUNDBOX;
    }

    public static String getMiSDKVersion() {
        return "MiSDK_" + getMiSDKVersionCode();
    }

    public static String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            return "";
        }
    }

    public static int getCurrentVersionCode(Context context) {
        boolean z = false;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            return z;
        }
    }
}
