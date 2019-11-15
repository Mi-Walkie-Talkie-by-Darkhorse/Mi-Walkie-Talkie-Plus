package com.xiaomi.metoknlp.geofencing;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.List;

public class a {
    /* access modifiers changed from: private */
    public Context a;
    /* access modifiers changed from: private */
    public c b;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public int d = 0;
    private List<b> e = new ArrayList();
    private List<b> f = new ArrayList();
    /* access modifiers changed from: private */
    public Handler g;
    private final ServiceConnection h = new b(this);

    /* renamed from: com.xiaomi.metoknlp.geofencing.a$a reason: collision with other inner class name */
    private class C0062a extends Handler {
        public C0062a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    a.this.d = a.this.d + 1;
                    a.this.a(a.this.a);
                    Log.w("GeoFencingServiceWrapper", "Try bindService count=" + a.this.d + ",mBinded=" + a.this.c);
                    if (!a.this.c && a.this.g != null && a.this.d < 10) {
                        a.this.g.sendEmptyMessageDelayed(1, FileTracerConfig.DEF_FLUSH_INTERVAL);
                        return;
                    }
                    return;
                case 2:
                    a.this.a();
                    return;
                case 3:
                    a.this.b();
                    return;
                default:
                    Log.w("GeoFencingServiceWrapper", "unknown message type ");
                    return;
            }
        }
    }

    private class b {
        public double a;
        public double b;
        public float c;
        public long d;
        public String e;
        public String f;
        public String g;

        public b(double d2, double d3, float f2, long j, String str, String str2, String str3) {
            this.a = d2;
            this.b = d3;
            this.c = f2;
            this.d = j;
            this.e = str;
            this.f = str2;
            this.g = str3;
        }
    }

    public a(Context context) {
        this.a = context;
        this.c = false;
        a(context);
        HandlerThread handlerThread = new HandlerThread("GeoFencingServiceWrapper");
        handlerThread.start();
        this.g = new C0062a(handlerThread.getLooper());
        if (!this.c) {
            this.g.sendEmptyMessageDelayed(1, FileTracerConfig.DEF_FLUSH_INTERVAL);
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        Log.d("GeoFencingServiceWrapper", "try registerPendingFence size=" + (this.e == null ? 0 : this.e.size()));
        for (b bVar : this.e) {
            if (!(bVar == null || this.b == null)) {
                try {
                    this.b.a(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, bVar.f, bVar.g);
                } catch (RemoteException e2) {
                    Log.w("GeoFencingServiceWrapper", "registerPendingFence:" + e2);
                }
            }
        }
        if (this.e != null) {
            this.e.clear();
        }
    }

    /* access modifiers changed from: private */
    public void b() {
        Log.d("GeoFencingServiceWrapper", "try unregisterPendingFence size=" + (this.f == null ? 0 : this.f.size()));
        for (b bVar : this.f) {
            if (!(bVar == null || this.b == null)) {
                try {
                    this.b.a(bVar.e, bVar.f);
                } catch (RemoteException e2) {
                    Log.w("GeoFencingServiceWrapper", "unregisterPendingFence:" + e2);
                }
            }
        }
        if (this.f != null) {
            this.f.clear();
        }
    }

    public void a(Context context) {
        if (!this.c && context != null) {
            if (this.b == null) {
                Intent intent = new Intent("com.xiaomi.metoknlp.GeoFencingService");
                intent.setPackage("com.xiaomi.metoknlp");
                try {
                    if (!context.bindService(intent, this.h, 1)) {
                        Log.d("GeoFencingServiceWrapper", "Can't bind GeoFencingService");
                        this.c = false;
                        return;
                    }
                    Log.d("GeoFencingServiceWrapper", "GeoFencingService started");
                    this.c = true;
                } catch (SecurityException e2) {
                    Log.e("GeoFencingServiceWrapper", "SecurityException:" + e2);
                }
            } else {
                Log.d("GeoFencingServiceWrapper", "GeoFencingService already started");
            }
        }
    }

    public void a(Context context, double d2, double d3, float f2, long j, String str, String str2, String str3) {
        a(context);
        if (this.b != null) {
            try {
                this.b.a(d2, d3, f2, j, str, str2, str3);
                Log.d("GeoFencingServiceWrapper", "calling registerFenceListener success");
            } catch (RemoteException e2) {
                throw new RuntimeException("GeoFencingService has died", e2);
            }
        } else {
            Log.d("GeoFencingServiceWrapper", "registerFenceListener service not ready, add to pending list.");
            this.e.add(new b(d2, d3, f2, j, str, str2, str3));
        }
    }

    public void a(Context context, String str, String str2) {
        a(context);
        if (this.b != null) {
            try {
                this.b.a(str, str2);
                Log.d("GeoFencingServiceWrapper", "calling unregisterFenceListener success");
            } catch (RemoteException e2) {
                throw new RuntimeException("GeoFencingService has died", e2);
            }
        } else {
            Log.d("GeoFencingServiceWrapper", "unregisterFenceListener service not ready, add to pending list.");
            this.f.add(new b(0.0d, 0.0d, 0.0f, -1, str, str2, ""));
        }
    }
}
