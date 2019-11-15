package com.tencent.bugly.mimsg.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.info.b;
import com.tencent.bugly.mimsg.crashreport.common.strategy.a;
import com.tencent.bugly.mimsg.proguard.u;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;

/* compiled from: BUGLY */
public class BuglyBroadcastRecevier extends BroadcastReceiver {
    /* access modifiers changed from: private */
    public static BuglyBroadcastRecevier d = null;
    /* access modifiers changed from: private */
    public IntentFilter a = new IntentFilter();
    /* access modifiers changed from: private */
    public Context b;
    private String c;
    private boolean e = true;

    public static synchronized BuglyBroadcastRecevier getInstance() {
        BuglyBroadcastRecevier buglyBroadcastRecevier;
        synchronized (BuglyBroadcastRecevier.class) {
            if (d == null) {
                d = new BuglyBroadcastRecevier();
            }
            buglyBroadcastRecevier = d;
        }
        return buglyBroadcastRecevier;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        super.finalize();
        if (this.b != null) {
            this.b.unregisterReceiver(this);
        }
    }

    public synchronized void addFilter(String str) {
        if (!this.a.hasAction(str)) {
            this.a.addAction(str);
        }
        x.c("add action %s", str);
    }

    public synchronized void register(Context context) {
        this.b = context;
        z.a((Runnable) new Runnable() {
            public final void run() {
                try {
                    x.a(BuglyBroadcastRecevier.d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        BuglyBroadcastRecevier.this.b.registerReceiver(BuglyBroadcastRecevier.d, BuglyBroadcastRecevier.this.a);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            x.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.b = context;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private synchronized boolean a(Context context, Intent intent) {
        boolean z = true;
        synchronized (this) {
            if (!(context == null || intent == null)) {
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    if (this.e) {
                        this.e = false;
                    } else {
                        String e2 = b.e(this.b);
                        x.c("is Connect BC " + e2, new Object[0]);
                        x.a("network %s changed to %s", this.c, e2);
                        if (e2 == null) {
                            this.c = null;
                        } else {
                            String str = this.c;
                            this.c = e2;
                            long currentTimeMillis = System.currentTimeMillis();
                            a a2 = a.a();
                            u a3 = u.a();
                            com.tencent.bugly.mimsg.crashreport.common.info.a a4 = com.tencent.bugly.mimsg.crashreport.common.info.a.a(context);
                            if (a2 == null || a3 == null || a4 == null) {
                                x.d("not inited BC not work", new Object[0]);
                            } else if (!e2.equals(str)) {
                                if (currentTimeMillis - a3.a(c.a) > 30000) {
                                    x.a("try to upload crash on network changed.", new Object[0]);
                                    c a5 = c.a();
                                    if (a5 != null) {
                                        a5.a(0);
                                    }
                                }
                                if (currentTimeMillis - a3.a(1001) > 30000) {
                                    x.a("try to upload userinfo on network changed.", new Object[0]);
                                    com.tencent.bugly.mimsg.crashreport.biz.b.a.b();
                                }
                            }
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }
}
