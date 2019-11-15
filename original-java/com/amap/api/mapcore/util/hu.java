package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.net.Proxy;

/* compiled from: NetManger */
public class hu extends hp {
    private static hu a;
    private ie b;
    private Handler c;

    /* renamed from: com.amap.api.mapcore.util.hu$1 reason: invalid class name */
    /* compiled from: NetManger */
    class AnonymousClass1 extends Cif {
        final /* synthetic */ hv a;
        final /* synthetic */ hw b;
        final /* synthetic */ hu c;

        public void a() {
            try {
                this.c.a(this.c.b(this.a, false), this.b);
            } catch (fn e) {
                this.c.a(e, this.b);
            }
        }
    }

    /* compiled from: NetManger */
    static class a extends Handler {
        /* synthetic */ a(Looper looper, AnonymousClass1 r2) {
            this(looper);
        }

        private a(Looper looper) {
            super(looper);
        }

        public a() {
        }

        public void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        ((hy) message.obj).b.a();
                        return;
                    case 1:
                        hy hyVar = (hy) message.obj;
                        hyVar.b.a(hyVar.a);
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            ThrowableExtension.printStackTrace(th);
        }
    }

    public static hu a(boolean z) {
        return a(z, 5);
    }

    private static synchronized hu a(boolean z, int i) {
        hu huVar;
        synchronized (hu.class) {
            try {
                if (a == null) {
                    a = new hu(z, i);
                } else if (z) {
                    if (a.b == null) {
                        a.b = ie.a(i);
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            huVar = a;
        }
        return huVar;
    }

    private hu(boolean z, int i) {
        if (z) {
            try {
                this.b = ie.a(i);
            } catch (Throwable th) {
                gf.b(th, "NetManger", "NetManger1");
                ThrowableExtension.printStackTrace(th);
                return;
            }
        }
        if (Looper.myLooper() == null) {
            this.c = new a(Looper.getMainLooper(), null);
        } else {
            this.c = new a();
        }
    }

    public byte[] b(hv hvVar) throws fn {
        try {
            hx a2 = a(hvVar, false);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            gf.a().c(th, "NetManager", "makeSyncPostRequest");
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] d(hv hvVar) throws fn {
        try {
            hx b2 = b(hvVar, false);
            if (b2 != null) {
                return b2.a;
            }
            return null;
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }

    public hx b(hv hvVar, boolean z) throws fn {
        Proxy proxy;
        try {
            c(hvVar);
            if (hvVar.j == null) {
                proxy = null;
            } else {
                proxy = hvVar.j;
            }
            return new hs(hvVar.h, hvVar.i, proxy, z).a(hvVar.c(), hvVar.a(), hvVar.b());
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }

    /* access modifiers changed from: private */
    public void a(fn fnVar, hw hwVar) {
        hy hyVar = new hy();
        hyVar.a = fnVar;
        hyVar.b = hwVar;
        Message obtain = Message.obtain();
        obtain.obj = hyVar;
        obtain.what = 1;
        this.c.sendMessage(obtain);
    }

    /* access modifiers changed from: private */
    public void a(hx hxVar, hw hwVar) {
        hwVar.a(hxVar.b, hxVar.a);
        hy hyVar = new hy();
        hyVar.b = hwVar;
        Message obtain = Message.obtain();
        obtain.obj = hyVar;
        obtain.what = 0;
        this.c.sendMessage(obtain);
    }
}
