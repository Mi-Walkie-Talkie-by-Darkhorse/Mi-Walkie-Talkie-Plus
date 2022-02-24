package com.xiaomi.push;

/* loaded from: classes2.dex */
public class ad {

    /* renamed from: a  reason: collision with root package name */
    private static int f8732a;

    /* renamed from: a  reason: collision with other field name */
    public static final String f82a;

    /* renamed from: a  reason: collision with other field name */
    public static final boolean f83a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f8733b;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f8734c;
    public static final boolean d;
    public static boolean e;
    public static final boolean f;
    public static final boolean g;

    static {
        int i;
        String str = ag.f84a ? "ONEBOX" : "@SHIP.TO.2A2FE0D7@";
        f82a = str;
        boolean contains = str.contains("2A2FE0D7");
        f83a = contains;
        boolean z = false;
        f8733b = contains || "DEBUG".equalsIgnoreCase(f82a);
        f8734c = "LOGABLE".equalsIgnoreCase(f82a);
        d = f82a.contains("YY");
        e = f82a.equalsIgnoreCase("TEST");
        f = "BETA".equalsIgnoreCase(f82a);
        String str2 = f82a;
        if (str2 != null && str2.startsWith("RC")) {
            z = true;
        }
        g = z;
        f8732a = 1;
        if (f82a.equalsIgnoreCase("SANDBOX")) {
            i = 2;
        } else if (f82a.equalsIgnoreCase("ONEBOX")) {
            i = 3;
        } else {
            f8732a = 1;
            return;
        }
        f8732a = i;
    }

    public static int a() {
        return f8732a;
    }

    public static void a(int i) {
        f8732a = i;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m67a() {
        return f8732a == 2;
    }

    public static boolean b() {
        return f8732a == 3;
    }
}
