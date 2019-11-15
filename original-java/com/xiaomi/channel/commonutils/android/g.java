package com.xiaomi.channel.commonutils.android;

import android.os.Environment;
import com.xiaomi.channel.commonutils.file.a;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class g {
    private static int a = 0;

    public static synchronized boolean a() {
        boolean z = true;
        synchronized (g.class) {
            if (c() != 1) {
                z = false;
            }
        }
        return z;
    }

    public static synchronized boolean b() {
        boolean z;
        synchronized (g.class) {
            z = c() == 2;
        }
        return z;
    }

    public static synchronized int c() {
        InputStream inputStream;
        int i = 1;
        synchronized (g.class) {
            if (a == 0) {
                try {
                    Properties properties = new Properties();
                    inputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                    try {
                        properties.load(inputStream);
                        if (!((properties.getProperty("ro.miui.ui.version.code", null) == null && properties.getProperty("ro.miui.ui.version.name", null) == null) ? false : true)) {
                            i = 2;
                        }
                        a = i;
                        a.a(inputStream);
                    } catch (Throwable th) {
                        th = th;
                        try {
                            b.a("get isMIUI failed", th);
                            a = 0;
                            a.a(inputStream);
                            b.b("isMIUI's value is: " + a);
                            int i2 = a;
                            return i2;
                        } catch (Throwable th2) {
                            th = th2;
                            a.a(inputStream);
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                    a.a(inputStream);
                    throw th;
                }
                b.b("isMIUI's value is: " + a);
            }
            int i22 = a;
        }
        return i22;
    }
}
