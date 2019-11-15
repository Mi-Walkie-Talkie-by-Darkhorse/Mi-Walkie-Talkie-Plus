package com.tencent.bugly.mimsg;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.mimsg.BuglyStrategy.a;
import com.tencent.bugly.mimsg.crashreport.CrashReport;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.crash.BuglyBroadcastRecevier;
import com.tencent.bugly.mimsg.crashreport.crash.c;
import com.tencent.bugly.mimsg.crashreport.crash.d;
import com.tencent.bugly.mimsg.proguard.n;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.x;

/* compiled from: BUGLY */
public class CrashModule extends a {
    public static final int MODULE_ID = 1004;
    private static int c = 0;
    private static boolean d = false;
    private static CrashModule e = new CrashModule();
    private long a;
    private a b;

    public static CrashModule getInstance() {
        e.id = 1004;
        return e;
    }

    public static boolean hasInitialized() {
        return d;
    }

    public synchronized void init(Context context, boolean z, BuglyStrategy buglyStrategy) {
        if (context != null) {
            if (!d) {
                x.a("Initializing crash module.", new Object[0]);
                n a2 = n.a();
                int i = c + 1;
                c = i;
                a2.a(1004, i);
                d = true;
                CrashReport.setContext(context);
                a(context, buglyStrategy);
                c.a(1004, context, z, this.b, (o) null, (String) null);
                c a3 = c.a();
                a3.e();
                if (buglyStrategy == null || buglyStrategy.isEnableNativeCrashMonitor()) {
                    a3.g();
                } else {
                    x.a("[crash] Closed native crash monitor!", new Object[0]);
                    a3.f();
                }
                if (buglyStrategy == null || buglyStrategy.isEnableANRCrashMonitor()) {
                    a3.h();
                } else {
                    x.a("[crash] Closed ANR monitor!", new Object[0]);
                    a3.i();
                }
                d.a(context);
                BuglyBroadcastRecevier instance = BuglyBroadcastRecevier.getInstance();
                instance.addFilter("android.net.conn.CONNECTIVITY_CHANGE");
                instance.register(context);
                n a4 = n.a();
                int i2 = c - 1;
                c = i2;
                a4.a(1004, i2);
            }
        }
    }

    private synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy != null) {
            String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
            if (!TextUtils.isEmpty(libBuglySOFilePath)) {
                com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).m = libBuglySOFilePath;
                x.a("setted libBugly.so file path :%s", libBuglySOFilePath);
            }
            if (buglyStrategy.getCrashHandleCallback() != null) {
                this.b = buglyStrategy.getCrashHandleCallback();
                x.a("setted CrashHanldeCallback", new Object[0]);
            }
            if (buglyStrategy.getAppReportDelay() > 0) {
                this.a = buglyStrategy.getAppReportDelay();
                x.a("setted delay: %d", Long.valueOf(this.a));
            }
        }
    }

    public void onServerStrategyChanged(StrategyBean strategyBean) {
        if (strategyBean != null) {
            c a2 = c.a();
            if (a2 != null) {
                a2.a(strategyBean);
            }
        }
    }

    public String[] getTables() {
        return new String[]{"t_cr"};
    }
}
