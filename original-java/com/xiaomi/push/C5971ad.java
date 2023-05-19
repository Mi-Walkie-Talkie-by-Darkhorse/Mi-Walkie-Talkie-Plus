package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ad */
/* loaded from: classes2.dex */
public class C5971ad {

    /* renamed from: a */
    private static int f20989a;

    /* renamed from: a */
    public static final String f20990a;

    /* renamed from: a */
    public static final boolean f20991a;

    /* renamed from: b */
    public static final boolean f20992b;

    /* renamed from: c */
    public static final boolean f20993c;

    /* renamed from: d */
    public static final boolean f20994d;

    /* renamed from: e */
    public static boolean f20995e;

    /* renamed from: f */
    public static final boolean f20996f;

    /* renamed from: g */
    public static final boolean f20997g;

    static {
        int i;
        String str = C5974ag.f20999a ? "ONEBOX" : "@SHIP.TO.2A2FE0D7@";
        f20990a = str;
        boolean contains = str.contains("2A2FE0D7");
        f20991a = contains;
        boolean z = false;
        f20992b = contains || "DEBUG".equalsIgnoreCase(str);
        f20993c = "LOGABLE".equalsIgnoreCase(str);
        f20994d = str.contains("YY");
        f20995e = str.equalsIgnoreCase("TEST");
        f20996f = "BETA".equalsIgnoreCase(str);
        if (str != null && str.startsWith("RC")) {
            z = true;
        }
        f20997g = z;
        f20989a = 1;
        if (str.equalsIgnoreCase("SANDBOX")) {
            i = 2;
        } else if (!str.equalsIgnoreCase("ONEBOX")) {
            f20989a = 1;
            return;
        } else {
            i = 3;
        }
        f20989a = i;
    }

    /* renamed from: a */
    public static int m3797a() {
        return f20989a;
    }

    /* renamed from: a */
    public static void m3795a(int i) {
        f20989a = i;
    }

    /* renamed from: a */
    public static boolean m3796a() {
        return f20989a == 2;
    }

    /* renamed from: b */
    public static boolean m3794b() {
        return f20989a == 3;
    }
}
