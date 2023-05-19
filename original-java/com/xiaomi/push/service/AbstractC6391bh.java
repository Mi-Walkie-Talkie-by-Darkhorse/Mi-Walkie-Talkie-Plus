package com.xiaomi.push.service;

/* renamed from: com.xiaomi.push.service.bh */
/* loaded from: classes2.dex */
public abstract class AbstractC6391bh {

    /* renamed from: A */
    public static String f23060A = "ext_client_attr";

    /* renamed from: B */
    public static String f23061B = "ext_cloud_attr";

    /* renamed from: C */
    public static String f23062C = "ext_pkg_name";

    /* renamed from: D */
    public static String f23063D = "ext_notify_id";

    /* renamed from: E */
    public static String f23064E = "ext_clicked_button";

    /* renamed from: F */
    public static String f23065F = "ext_notify_type";

    /* renamed from: G */
    public static String f23066G = "ext_session";

    /* renamed from: H */
    public static String f23067H = "sig";

    /* renamed from: I */
    public static String f23068I = "ext_notify_title";

    /* renamed from: J */
    public static String f23069J = "ext_notify_description";

    /* renamed from: K */
    public static String f23070K = "ext_messenger";

    /* renamed from: L */
    public static String f23071L = "title";

    /* renamed from: M */
    public static String f23072M = "description";

    /* renamed from: N */
    public static String f23073N = "notifyId";

    /* renamed from: O */
    public static String f23074O = "dump";

    /* renamed from: a */
    public static String f23075a = "1";

    /* renamed from: b */
    public static String f23076b = "2";

    /* renamed from: c */
    public static String f23077c = "3";

    /* renamed from: d */
    public static String f23078d = "com.xiaomi.push.OPEN_CHANNEL";

    /* renamed from: e */
    public static String f23079e = "com.xiaomi.push.SEND_MESSAGE";

    /* renamed from: f */
    public static String f23080f = "com.xiaomi.push.SEND_IQ";

    /* renamed from: g */
    public static String f23081g = "com.xiaomi.push.BATCH_SEND_MESSAGE";

    /* renamed from: h */
    public static String f23082h = "com.xiaomi.push.SEND_PRES";

    /* renamed from: i */
    public static String f23083i = "com.xiaomi.push.CLOSE_CHANNEL";

    /* renamed from: j */
    public static String f23084j = "com.xiaomi.push.FORCE_RECONN";

    /* renamed from: k */
    public static String f23085k = "com.xiaomi.push.RESET_CONN";

    /* renamed from: l */
    public static String f23086l = "com.xiaomi.push.UPDATE_CHANNEL_INFO";

    /* renamed from: m */
    public static String f23087m = "com.xiaomi.push.SEND_STATS";

    /* renamed from: n */
    public static String f23088n = "com.xiaomi.push.HANDLE_FCM_MSG";

    /* renamed from: o */
    public static String f23089o = "com.xiaomi.push.CHANGE_HOST";

    /* renamed from: p */
    public static String f23090p = "miui.intent.action.PARENTS_GUARDIAN_CHANGED";

    /* renamed from: q */
    public static String f23091q = "com.xiaomi.push.PING_TIMER";

    /* renamed from: r */
    public static String f23092r = "ext_user_id";

    /* renamed from: s */
    public static String f23093s = "ext_user_server";

    /* renamed from: t */
    public static String f23094t = "ext_user_res";

    /* renamed from: u */
    public static String f23095u = "ext_chid";

    /* renamed from: v */
    public static String f23096v = "ext_sid";

    /* renamed from: w */
    public static String f23097w = "ext_token";

    /* renamed from: x */
    public static String f23098x = "ext_auth_method";

    /* renamed from: y */
    public static String f23099y = "ext_security";

    /* renamed from: z */
    public static String f23100z = "ext_kick";

    /* renamed from: a */
    public static String m1477a(int i) {
        switch (i) {
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
                return String.valueOf(i);
        }
    }
}
