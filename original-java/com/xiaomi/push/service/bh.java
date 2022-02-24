package com.xiaomi.push.service;

/* loaded from: classes2.dex */
public abstract class bh {
    public static String A = "ext_client_attr";
    public static String B = "ext_cloud_attr";
    public static String C = "ext_pkg_name";
    public static String D = "ext_notify_id";
    public static String E = "ext_clicked_button";
    public static String F = "ext_notify_type";
    public static String G = "ext_session";
    public static String H = "sig";
    public static String I = "ext_notify_title";
    public static String J = "ext_notify_description";
    public static String K = "ext_messenger";
    public static String L = "title";
    public static String M = "description";
    public static String N = "notifyId";
    public static String O = "dump";

    /* renamed from: a  reason: collision with root package name */
    public static String f9282a = "1";

    /* renamed from: b  reason: collision with root package name */
    public static String f9283b = "2";

    /* renamed from: c  reason: collision with root package name */
    public static String f9284c = "3";
    public static String d = "com.xiaomi.push.OPEN_CHANNEL";
    public static String e = "com.xiaomi.push.SEND_MESSAGE";
    public static String f = "com.xiaomi.push.SEND_IQ";
    public static String g = "com.xiaomi.push.BATCH_SEND_MESSAGE";
    public static String h = "com.xiaomi.push.SEND_PRES";
    public static String i = "com.xiaomi.push.CLOSE_CHANNEL";
    public static String j = "com.xiaomi.push.FORCE_RECONN";
    public static String k = "com.xiaomi.push.RESET_CONN";
    public static String l = "com.xiaomi.push.UPDATE_CHANNEL_INFO";
    public static String m = "com.xiaomi.push.SEND_STATS";
    public static String n = "com.xiaomi.push.HANDLE_FCM_MSG";
    public static String o = "com.xiaomi.push.CHANGE_HOST";
    public static String p = "miui.intent.action.PARENTS_GUARDIAN_CHANGED";
    public static String q = "com.xiaomi.push.PING_TIMER";
    public static String r = "ext_user_id";
    public static String s = "ext_user_server";
    public static String t = "ext_user_res";
    public static String u = "ext_chid";
    public static String v = "ext_sid";
    public static String w = "ext_token";
    public static String x = "ext_auth_method";
    public static String y = "ext_security";
    public static String z = "ext_kick";

    public static String a(int i2) {
        switch (i2) {
            case 0:
                return "ERROR_OK";
            case 1:
                return "ERROR_SERVICE_NOT_INSTALLED";
            case 2:
                return "ERROR_NETWORK_NOT_AVAILABLE";
            case 3:
                return "ERROR_NETWORK_FAILED";
            case 4:
                return "ERROR_ACCESS_DENIED";
            case 5:
                return "ERROR_AUTH_FAILED";
            case 6:
                return "ERROR_MULTI_LOGIN";
            case 7:
                return "ERROR_SERVER_ERROR";
            case 8:
                return "ERROR_RECEIVE_TIMEOUT";
            case 9:
                return "ERROR_READ_ERROR";
            case 10:
                return "ERROR_SEND_ERROR";
            case 11:
                return "ERROR_RESET";
            case 12:
                return "ERROR_NO_CLIENT";
            case 13:
                return "ERROR_SERVER_STREAM";
            case 14:
                return "ERROR_THREAD_BLOCK";
            case 15:
                return "ERROR_SERVICE_DESTROY";
            case 16:
                return "ERROR_SESSION_CHANGED";
            case 17:
                return "ERROR_READ_TIMEOUT";
            case 18:
                return "ERROR_CONNECTIING_TIMEOUT";
            case 19:
                return "ERROR_USER_BLOCKED";
            case 20:
                return "ERROR_REDIRECT";
            case 21:
                return "ERROR_BIND_TIMEOUT";
            case 22:
                return "ERROR_PING_TIMEOUT";
            default:
                return String.valueOf(i2);
        }
    }
}
