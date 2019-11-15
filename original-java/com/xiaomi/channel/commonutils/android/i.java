package com.xiaomi.channel.commonutils.android;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class i {
    public static String a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{str, str2});
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return str2;
        }
    }
}
