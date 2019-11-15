package com.xiaomi.channel.commonutils.misc;

import com.mi.mimsgsdk.utils.Constants;

public class a {
    public static final String a = (c.a ? "ONEBOX" : Constants.ReleaseChannel);
    public static final boolean b = a.contains("2A2FE0D7");
    public static final boolean c = (b || Constants.DEBUG_CHANNEL.equalsIgnoreCase(a));
    public static final boolean d = "LOGABLE".equalsIgnoreCase(a);
    public static final boolean e = a.contains("YY");
    public static boolean f = a.equalsIgnoreCase(Constants.TEST_CHANNEL);
    public static final boolean g = "BETA".equalsIgnoreCase(a);
    public static final boolean h;
    private static int i;

    static {
        boolean z = false;
        if (a != null && a.startsWith("RC")) {
            z = true;
        }
        h = z;
        i = 1;
        if (a.equalsIgnoreCase("SANDBOX")) {
            i = 2;
        } else if (a.equalsIgnoreCase("ONEBOX")) {
            i = 3;
        } else {
            i = 1;
        }
    }

    public static void a(int i2) {
        i = i2;
    }

    public static boolean a() {
        return i == 2;
    }

    public static boolean b() {
        return i == 3;
    }

    public static int c() {
        return i;
    }
}
