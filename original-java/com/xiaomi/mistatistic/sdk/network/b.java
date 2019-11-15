package com.xiaomi.mistatistic.sdk.network;

import java.util.regex.Pattern;

/* compiled from: InetAddressUtils */
public class b {
    private static final Pattern a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    public static boolean a(String str) {
        return a.matcher(str).matches();
    }

    public static boolean b(String str) {
        return b.matcher(str).matches();
    }

    public static boolean c(String str) {
        return c.matcher(str).matches();
    }

    public static boolean d(String str) {
        return b(str) || c(str);
    }
}
