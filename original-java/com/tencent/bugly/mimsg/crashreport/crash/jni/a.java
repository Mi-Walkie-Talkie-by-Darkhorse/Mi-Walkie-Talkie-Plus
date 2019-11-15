package com.tencent.bugly.mimsg.crashreport.crash.jni;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.info.AppInfo;
import com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.mimsg.crashreport.crash.b;
import com.tencent.bugly.mimsg.crashreport.crash.c;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.y;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: BUGLY */
public final class a implements NativeExceptionHandler {
    private final Context a;
    private final b b;
    private final com.tencent.bugly.mimsg.crashreport.common.info.a c;
    private final com.tencent.bugly.mimsg.crashreport.common.strategy.a d;

    public a(Context context, com.tencent.bugly.mimsg.crashreport.common.info.a aVar, b bVar, com.tencent.bugly.mimsg.crashreport.common.strategy.a aVar2) {
        this.a = context;
        this.b = bVar;
        this.c = aVar;
        this.d = aVar2;
    }

    public final CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, byte[] bArr, Map<String, String> map, boolean z) {
        boolean l = c.a().l();
        if (l) {
            x.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.b = 1;
        crashDetailBean.e = this.c.h();
        crashDetailBean.f = this.c.j;
        crashDetailBean.g = this.c.w();
        crashDetailBean.m = this.c.g();
        crashDetailBean.n = str3;
        crashDetailBean.o = l ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.p = str4;
        if (str5 == null) {
            str5 = "";
        }
        crashDetailBean.q = str5;
        crashDetailBean.r = j;
        crashDetailBean.u = z.b(crashDetailBean.q.getBytes());
        crashDetailBean.z = str;
        crashDetailBean.A = str2;
        crashDetailBean.H = this.c.y();
        crashDetailBean.h = this.c.v();
        crashDetailBean.i = this.c.I();
        crashDetailBean.v = str8;
        String str11 = null;
        NativeCrashHandler instance = NativeCrashHandler.getInstance();
        if (instance != null) {
            str11 = instance.getDumpFilePath();
        }
        String a2 = b.a(str11, str8);
        if (!z.a(a2)) {
            crashDetailBean.T = a2;
        }
        crashDetailBean.U = b.b(str11);
        crashDetailBean.w = b.a(str9, c.e, (String) null);
        crashDetailBean.I = str7;
        crashDetailBean.J = str6;
        crashDetailBean.K = str10;
        crashDetailBean.E = this.c.p();
        crashDetailBean.F = this.c.o();
        crashDetailBean.G = this.c.q();
        if (z) {
            crashDetailBean.B = com.tencent.bugly.mimsg.crashreport.common.info.b.g();
            crashDetailBean.C = com.tencent.bugly.mimsg.crashreport.common.info.b.e();
            crashDetailBean.D = com.tencent.bugly.mimsg.crashreport.common.info.b.i();
            if (crashDetailBean.w == null) {
                crashDetailBean.w = z.a(this.a, c.e, (String) null);
            }
            crashDetailBean.x = y.a();
            crashDetailBean.L = this.c.a;
            crashDetailBean.M = this.c.a();
            crashDetailBean.O = this.c.F();
            crashDetailBean.P = this.c.G();
            crashDetailBean.Q = this.c.z();
            crashDetailBean.R = this.c.E();
            crashDetailBean.y = z.a(c.f, false);
            String str12 = "java:\n";
            int indexOf = crashDetailBean.q.indexOf(str12);
            if (indexOf > 0) {
                int length = indexOf + str12.length();
                if (length < crashDetailBean.q.length()) {
                    String substring = crashDetailBean.q.substring(length, crashDetailBean.q.length() - 1);
                    if (substring.length() > 0 && crashDetailBean.y.containsKey(crashDetailBean.A)) {
                        String str13 = (String) crashDetailBean.y.get(crashDetailBean.A);
                        int indexOf2 = str13.indexOf(substring);
                        if (indexOf2 > 0) {
                            String substring2 = str13.substring(indexOf2);
                            crashDetailBean.y.put(crashDetailBean.A, substring2);
                            crashDetailBean.q = crashDetailBean.q.substring(0, length);
                            crashDetailBean.q += substring2;
                        }
                    }
                }
            }
            if (str == null) {
                crashDetailBean.z = this.c.d;
            }
            this.b.c(crashDetailBean);
        } else {
            crashDetailBean.B = -1;
            crashDetailBean.C = -1;
            crashDetailBean.D = -1;
            if (crashDetailBean.w == null) {
                crashDetailBean.w = "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.L = -1;
            crashDetailBean.O = -1;
            crashDetailBean.P = -1;
            crashDetailBean.Q = map;
            crashDetailBean.R = this.c.E();
            crashDetailBean.y = null;
            if (str == null) {
                crashDetailBean.z = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.x = bArr;
            }
        }
        return crashDetailBean;
    }

    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        x.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    public final void handleNativeException2(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr) {
        String str8;
        String str9;
        String str10;
        String str11;
        x.a("Native Crash Happen v2", new Object[0]);
        try {
            if (!this.d.b()) {
                x.e("waiting for remote sync", new Object[0]);
                int i7 = 0;
                while (!this.d.b()) {
                    z.b(500);
                    i7 += 500;
                    if (i7 >= 3000) {
                        break;
                    }
                }
            }
            String a2 = b.a(str3);
            String str12 = "UNKNOWN";
            if (i3 > 0) {
                str8 = "KERNEL";
                str9 = str + "(" + str5 + ")";
            } else {
                if (i4 > 0) {
                    Context context = this.a;
                    str12 = AppInfo.a(i4);
                }
                if (!str12.equals(String.valueOf(i4))) {
                    str12 = str12 + "(" + i4 + ")";
                    str8 = str5;
                    str9 = str;
                } else {
                    str8 = str5;
                    str9 = str;
                }
            }
            if (!this.d.b()) {
                x.d("no remote but still store!", new Object[0]);
            }
            if (this.d.c().g || !this.d.b()) {
                HashMap hashMap = new HashMap();
                if (strArr != null) {
                    for (String str13 : strArr) {
                        String[] split = str13.split("=");
                        if (split.length == 2) {
                            hashMap.put(split[0], split[1]);
                        } else {
                            x.d("bad extraMsg %s", str13);
                        }
                    }
                } else {
                    x.c("not found extraMsg", new Object[0]);
                }
                String str14 = (String) hashMap.get("ExceptionProcessName");
                if (str14 == null || str14.length() == 0) {
                    str10 = this.c.d;
                } else {
                    x.c("crash process name change to %s", str14);
                    str10 = str14;
                }
                String str15 = (String) hashMap.get("ExceptionThreadName");
                if (str15 != null && str15.length() != 0) {
                    x.c("crash thread name change to %s", str15);
                    Iterator it = Thread.getAllStackTraces().keySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str11 = str15;
                            break;
                        }
                        Thread thread = (Thread) it.next();
                        if (thread.getName().equals(str15)) {
                            str11 = str15 + "(" + thread.getId() + ")";
                            break;
                        }
                    }
                } else {
                    Thread currentThread = Thread.currentThread();
                    str11 = currentThread.getName() + "(" + currentThread.getId() + ")";
                }
                CrashDetailBean packageCrashDatas = packageCrashDatas(str10, str11, (j2 / 1000) + (1000 * j), str9, str2, a2, str8, str12, str4, (String) hashMap.get("SysLogPath"), str7, null, null, true);
                if (packageCrashDatas == null) {
                    x.e("pkg crash datas fail!", new Object[0]);
                    return;
                }
                b.a("NATIVE_CRASH", z.a(), this.c.d, Thread.currentThread(), str9 + "\n" + str2 + "\n" + a2, packageCrashDatas);
                if (!this.b.a(packageCrashDatas, i3)) {
                    this.b.a(packageCrashDatas, 3000, true);
                }
                this.b.b(packageCrashDatas);
                String str16 = null;
                NativeCrashHandler instance = NativeCrashHandler.getInstance();
                if (instance != null) {
                    str16 = instance.getDumpFilePath();
                }
                b.a(true, str16);
                return;
            }
            x.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
            b.a("NATIVE_CRASH", z.a(), this.c.d, Thread.currentThread(), str9 + "\n" + str2 + "\n" + a2, null);
            z.b(str4);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }
}
