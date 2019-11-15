package com.amap.api.col.sl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.net.Proxy;

/* compiled from: NetManger */
public final class dr extends dn {
    private static dr a;
    private Handler b;

    /* compiled from: NetManger */
    static class a extends Handler {
        /* synthetic */ a(Looper looper, byte b) {
            this(looper);
        }

        private a(Looper looper) {
            super(looper);
        }

        public a() {
        }

        public final void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        dt dtVar = ((dv) message.obj).b;
                        return;
                    case 1:
                        dv dvVar = (dv) message.obj;
                        dt dtVar2 = dvVar.b;
                        bo boVar = dvVar.a;
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public static dr b() {
        return c();
    }

    private static synchronized dr c() {
        dr drVar;
        synchronized (dr.class) {
            try {
                if (a == null) {
                    a = new dr();
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            drVar = a;
        }
        return drVar;
    }

    private dr() {
        try {
            if (Looper.myLooper() == null) {
                this.b = new a(Looper.getMainLooper(), 0);
            } else {
                this.b = new a();
            }
        } catch (Throwable th) {
            cm.c(th, "NetManger", "NetManger1");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final byte[] b(ds dsVar) throws bo {
        try {
            du a2 = a(dsVar, false);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            cm.e().b(th, "NetManager", "makeSyncPostRequest");
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }

    public static byte[] d(ds dsVar) throws bo {
        try {
            du b2 = b(dsVar, false);
            if (b2 != null) {
                return b2.a;
            }
            return null;
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }

    public static byte[] e(ds dsVar) throws bo {
        try {
            du b2 = b(dsVar, true);
            if (b2 != null) {
                return b2.a;
            }
            return null;
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }

    private static du b(ds dsVar, boolean z) throws bo {
        Proxy proxy;
        try {
            c(dsVar);
            if (dsVar.h == null) {
                proxy = null;
            } else {
                proxy = dsVar.h;
            }
            return new dq(dsVar.f, dsVar.g, proxy, z).a(dsVar.f(), dsVar.c(), dsVar.b());
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }
}
