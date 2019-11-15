package com.liulishuo.filedownloader.e;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.Bugly;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* compiled from: FileDownloadProperties */
public class e {
    public final int a;
    public final long b;
    public final boolean c;
    public final boolean d;
    public final int e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    /* compiled from: FileDownloadProperties */
    public static class a {
        /* access modifiers changed from: private */
        public static final e a = new e();
    }

    public static e a() {
        return a.a;
    }

    private e() {
        String str;
        if (c.a() == null) {
            throw new IllegalStateException("Please invoke the 'FileDownloader#setup' before using FileDownloader. If you want to register some components on FileDownloader please invoke the 'FileDownloader#setupOnApplicationOnCreate' on the 'Application#onCreate' first.");
        }
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        Properties properties = new Properties();
        InputStream inputStream = null;
        try {
            inputStream = c.a().getAssets().open("filedownloader.properties");
            if (inputStream != null) {
                properties.load(inputStream);
                str2 = properties.getProperty("http.lenient");
                str3 = properties.getProperty("process.non-separate");
                str4 = properties.getProperty("download.min-progress-step");
                str5 = properties.getProperty("download.min-progress-time");
                str6 = properties.getProperty("download.max-network-thread-count");
                str7 = properties.getProperty("file.non-pre-allocation");
                str8 = properties.getProperty("broadcast.completed");
                str = properties.getProperty("download.trial-connection-head-method");
            } else {
                str = null;
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }
        } catch (IOException e3) {
            inputStream = e3 instanceof FileNotFoundException;
            if (inputStream) {
                inputStream = d.a;
                if (inputStream) {
                    d.c(e.class, "not found filedownloader.properties", new Object[0]);
                }
            } else {
                ThrowableExtension.printStackTrace(e3);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                    str = null;
                } catch (IOException e4) {
                    ThrowableExtension.printStackTrace(e4);
                    str = null;
                }
            } else {
                str = null;
            }
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                    ThrowableExtension.printStackTrace(e5);
                }
            }
        }
        if (str2 == null) {
            this.c = false;
        } else if (str2.equals("true") || str2.equals(Bugly.SDK_IS_DEV)) {
            this.c = str2.equals("true");
        } else {
            throw new IllegalStateException(g.a("the value of '%s' must be '%s' or '%s'", "http.lenient", "true", Bugly.SDK_IS_DEV));
        }
        if (str3 == null) {
            this.d = false;
        } else if (str3.equals("true") || str3.equals(Bugly.SDK_IS_DEV)) {
            this.d = str3.equals("true");
        } else {
            throw new IllegalStateException(g.a("the value of '%s' must be '%s' or '%s'", "process.non-separate", "true", Bugly.SDK_IS_DEV));
        }
        if (str4 != null) {
            this.a = Math.max(0, Integer.valueOf(str4).intValue());
        } else {
            this.a = 65536;
        }
        if (str5 != null) {
            this.b = Math.max(0, Long.valueOf(str5).longValue());
        } else {
            this.b = 2000;
        }
        if (str6 != null) {
            this.e = a(Integer.valueOf(str6).intValue());
        } else {
            this.e = 3;
        }
        if (str7 == null) {
            this.f = false;
        } else if (str7.equals("true") || str7.equals(Bugly.SDK_IS_DEV)) {
            this.f = str7.equals("true");
        } else {
            throw new IllegalStateException(g.a("the value of '%s' must be '%s' or '%s'", "file.non-pre-allocation", "true", Bugly.SDK_IS_DEV));
        }
        if (str8 == null) {
            this.g = false;
        } else if (str8.equals("true") || str8.equals(Bugly.SDK_IS_DEV)) {
            this.g = str8.equals("true");
        } else {
            throw new IllegalStateException(g.a("the value of '%s' must be '%s' or '%s'", "broadcast.completed", "true", Bugly.SDK_IS_DEV));
        }
        if (str == null) {
            this.h = false;
        } else if (str.equals("true") || str.equals(Bugly.SDK_IS_DEV)) {
            this.h = str.equals("true");
        } else {
            throw new IllegalStateException(g.a("the value of '%s' must be '%s' or '%s'", "download.trial-connection-head-method", "true", Bugly.SDK_IS_DEV));
        }
        if (d.a) {
            d.b(e.class, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d; %s=%B; %s=%B; %s=%B", Long.valueOf(System.currentTimeMillis() - currentTimeMillis), "http.lenient", Boolean.valueOf(this.c), "process.non-separate", Boolean.valueOf(this.d), "download.min-progress-step", Integer.valueOf(this.a), "download.min-progress-time", Long.valueOf(this.b), "download.max-network-thread-count", Integer.valueOf(this.e), "file.non-pre-allocation", Boolean.valueOf(this.f), "broadcast.completed", Boolean.valueOf(this.g), "download.trial-connection-head-method", Boolean.valueOf(this.h));
        }
    }

    public static int a(int i) {
        if (i > 12) {
            d.d(e.class, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto", Integer.valueOf(i), Integer.valueOf(12), Integer.valueOf(12));
            return 12;
        } else if (i >= 1) {
            return i;
        } else {
            d.d(e.class, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto", Integer.valueOf(i), Integer.valueOf(1), Integer.valueOf(1));
            return 1;
        }
    }
}
