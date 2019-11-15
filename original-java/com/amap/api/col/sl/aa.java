package com.amap.api.col.sl;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.amap.api.col.sl.bq.a.d;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;

/* compiled from: ManifestConfig */
public final class aa {
    public static bz a;
    private static aa b;
    /* access modifiers changed from: private */
    public static Context c;
    /* access modifiers changed from: private */
    public a d;
    private HandlerThread e = new HandlerThread("manifestThread") {
        public final void run() {
            String str = "run";
            Thread.currentThread().setName("ManifestConfigThread");
            Message message = new Message();
            try {
                com.amap.api.col.sl.bq.a a2 = bq.a(aa.c, s.a(false), "11K;001");
                if (!(a2 == null || a2.x == null)) {
                    message.obj = new ab(a2.x.b, a2.x.a);
                }
                if (!(a2 == null || a2.y == null)) {
                    d dVar = a2.y;
                    if (dVar != null) {
                        String str2 = dVar.b;
                        String str3 = dVar.a;
                        String str4 = dVar.c;
                        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                            new cw(aa.c, null, s.a(false)).a();
                        } else {
                            new cw(aa.c, new cx(str3, str2), s.a(false)).a();
                        }
                    } else {
                        new cw(aa.c, null, s.a(false)).a();
                    }
                }
                message.what = 3;
                if (aa.this.d != null) {
                    aa.this.d.sendMessage(message);
                }
            } catch (Throwable th) {
                message.what = 3;
                if (aa.this.d != null) {
                    aa.this.d.sendMessage(message);
                }
                throw th;
            }
            try {
                Thread.sleep(FileTracerConfig.DEF_FLUSH_INTERVAL);
            } catch (InterruptedException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    };

    /* compiled from: ManifestConfig */
    class a extends Handler {
        String a = "handleMessage";

        public a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            if (message != null) {
                switch (message.what) {
                    case 3:
                        try {
                            ab abVar = (ab) message.obj;
                            if (abVar == null) {
                                abVar = new ab(false, false);
                            }
                            cm.a(aa.c, s.a(abVar.a()));
                            aa.a = s.a(abVar.a());
                            return;
                        } catch (Throwable th) {
                            t.a(th, "ManifestConfig", this.a);
                            return;
                        }
                    default:
                        return;
                }
            }
        }
    }

    private aa(Context context) {
        c = context;
        a = s.a(false);
        try {
            this.d = new a(Looper.getMainLooper());
            this.e.start();
        } catch (Throwable th) {
            t.a(th, "ManifestConfig", "ManifestConfig");
        }
    }

    public static aa a(Context context) {
        if (b == null) {
            b = new aa(context);
        }
        return b;
    }
}
