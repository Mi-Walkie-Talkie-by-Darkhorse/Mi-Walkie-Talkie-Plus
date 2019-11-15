package com.amap.api.col.sl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.view.PointerIconCompat;
import android.text.TextUtils;
import android.webkit.WebView;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.AMapLocationQualityReport;
import com.amap.api.location.APSService;
import com.amap.api.location.LocationManagerBase;
import com.amap.api.location.UmidtokenInfo;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: AMapLocationManager */
public class d implements LocationManagerBase {
    /* access modifiers changed from: private */
    public boolean A = false;
    private volatile boolean B = false;
    /* access modifiers changed from: private */
    public boolean C = true;
    private h D = null;
    private ServiceConnection E = new ServiceConnection() {
        public final void onServiceDisconnected(ComponentName componentName) {
            d.this.i = null;
            d.this.A = false;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                d.this.i = new Messenger(iBinder);
                d.this.A = true;
                d.this.r = true;
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "onServiceConnected");
            }
        }
    };
    AMapLocationClientOption a = new AMapLocationClientOption();
    public c b;
    g c = null;
    ArrayList<AMapLocationListener> d = new ArrayList<>();
    boolean e = false;
    public boolean f = true;
    public boolean g = true;
    i h;
    Messenger i = null;
    Messenger j = null;
    Intent k = null;
    int l = 0;
    b m = null;
    boolean n = false;
    AMapLocationMode o = AMapLocationMode.Hight_Accuracy;
    Object p = new Object();
    fv q = null;
    boolean r = false;
    e s = null;
    String t = null;
    boolean u = false;
    boolean v = false;
    a w = null;
    String x = null;
    boolean y = false;
    private Context z;

    /* compiled from: AMapLocationManager */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            try {
                super.handleMessage(message);
                switch (message.what) {
                    case 1002:
                        d.a(d.this, (AMapLocationListener) message.obj);
                        return;
                    case 1003:
                        try {
                            d.this.e();
                            return;
                        } catch (Throwable th) {
                            fq.a(th, "AMapLocationManager$MHandler", "handleMessage START_LOCATION");
                            return;
                        }
                    case 1004:
                        try {
                            d.this.f();
                            return;
                        } catch (Throwable th2) {
                            fq.a(th2, "AMapLocationManager$MHandler", "handleMessage STOP_LOCATION");
                            return;
                        }
                    case 1005:
                        try {
                            d.b(d.this, (AMapLocationListener) message.obj);
                            return;
                        } catch (Throwable th3) {
                            fq.a(th3, "AMapLocationManager$MHandler", "handleMessage REMOVE_LISTENER");
                            return;
                        }
                    case 1008:
                        try {
                            d.i(d.this);
                            return;
                        } catch (Throwable th4) {
                            fq.a(th4, "AMapLocationManager$ActionHandler", "handleMessage START_SOCKET");
                            return;
                        }
                    case 1009:
                        try {
                            d.j(d.this);
                            return;
                        } catch (Throwable th5) {
                            fq.a(th5, "AMapLocationManager$ActionHandler", "handleMessage STOP_SOCKET");
                            return;
                        }
                    case 1011:
                        try {
                            d.this.a();
                            return;
                        } catch (Throwable th6) {
                            fq.a(th6, "AMapLocationManager$MHandler", "handleMessage DESTROY");
                            return;
                        }
                    case PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW /*1014*/:
                        d.b(d.this, message);
                        return;
                    case PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW /*1015*/:
                        try {
                            d.this.c.a(d.this.a);
                            return;
                        } catch (Throwable th7) {
                            fq.a(th7, "AMapLocationManager$ActionHandler", "handleMessage START_GPS_LOCATION");
                            return;
                        }
                    case PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW /*1016*/:
                        try {
                            if (d.this.c.b()) {
                                d.this.a((int) PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, 1000);
                                return;
                            } else {
                                d.g(d.this);
                                return;
                            }
                        } catch (Throwable th8) {
                            fq.a(th8, "AMapLocationManager$ActionHandler", "handleMessage START_LBS_LOCATION");
                            return;
                        }
                    case PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW /*1017*/:
                        try {
                            d.this.c.a();
                            return;
                        } catch (Throwable th9) {
                            fq.a(th9, "AMapLocationManager$ActionHandler", "handleMessage STOP_GPS_LOCATION");
                            return;
                        }
                    case PointerIconCompat.TYPE_ZOOM_IN /*1018*/:
                        try {
                            d.this.a = (AMapLocationClientOption) message.obj;
                            if (d.this.a != null) {
                                d.h(d.this);
                                return;
                            }
                            return;
                        } catch (Throwable th10) {
                            fq.a(th10, "AMapLocationManager$ActionHandler", "handleMessage SET_OPTION");
                            return;
                        }
                    case GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW /*1023*/:
                        try {
                            d.c(d.this, message);
                            return;
                        } catch (Throwable th11) {
                            fq.a(th11, "AMapLocationManager$ActionHandler", "handleMessage ACTION_ENABLE_BACKGROUND");
                            return;
                        }
                    case 1024:
                        try {
                            d.d(d.this, message);
                            return;
                        } catch (Throwable th12) {
                            fq.a(th12, "AMapLocationManager$ActionHandler", "handleMessage ACTION_DISABLE_BACKGROUND");
                            return;
                        }
                    default:
                        return;
                }
            } catch (Throwable th13) {
                fq.a(th13, "AMapLocationManager$ActionHandler", "handleMessage");
            }
            fq.a(th13, "AMapLocationManager$ActionHandler", "handleMessage");
        }
    }

    /* compiled from: AMapLocationManager */
    static class b extends HandlerThread {
        d a = null;

        public b(String str, d dVar) {
            super(str);
            this.a = dVar;
        }

        /* access modifiers changed from: protected */
        public final void onLooperPrepared() {
            try {
                this.a.h.a();
                this.a.h();
                super.onLooperPrepared();
            } catch (Throwable th) {
            }
        }
    }

    /* compiled from: AMapLocationManager */
    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        public c() {
        }

        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleMessage(android.os.Message r4) {
            /*
                r3 = this;
                super.handleMessage(r4)     // Catch:{ Throwable -> 0x0029 }
                com.amap.api.col.sl.d r0 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x0029 }
                boolean r0 = r0.n     // Catch:{ Throwable -> 0x0029 }
                if (r0 == 0) goto L_0x0010
                boolean r0 = com.amap.api.col.sl.fq.c()     // Catch:{ Throwable -> 0x0029 }
                if (r0 != 0) goto L_0x0010
            L_0x000f:
                return
            L_0x0010:
                int r0 = r4.what     // Catch:{ Throwable -> 0x0029 }
                switch(r0) {
                    case 1: goto L_0x0016;
                    case 2: goto L_0x0038;
                    case 3: goto L_0x000f;
                    case 5: goto L_0x0047;
                    case 6: goto L_0x0067;
                    case 7: goto L_0x0082;
                    case 8: goto L_0x0032;
                    case 100: goto L_0x009d;
                    default: goto L_0x0015;
                }
            L_0x0015:
                goto L_0x000f
            L_0x0016:
                android.os.Bundle r0 = r4.getData()     // Catch:{ Throwable -> 0x0020 }
                com.amap.api.col.sl.d r1 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x0020 }
                com.amap.api.col.sl.d.a(r1, r0)     // Catch:{ Throwable -> 0x0020 }
                goto L_0x000f
            L_0x0020:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_LBS_LOCATIONSUCCESS"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            L_0x0029:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$MHandler"
                java.lang.String r2 = "handleMessage"
                com.amap.api.col.sl.fq.a(r0, r1, r2)
                goto L_0x000f
            L_0x0032:
                r0 = 0
                r1 = 2141(0x85d, float:3.0E-42)
                com.amap.api.col.sl.fv.a(r0, r1)     // Catch:{ Throwable -> 0x0029 }
            L_0x0038:
                com.amap.api.col.sl.d r0 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x003e }
                com.amap.api.col.sl.d.a(r0, r4)     // Catch:{ Throwable -> 0x003e }
                goto L_0x000f
            L_0x003e:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_GPS_LOCATIONSUCCESS"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            L_0x0047:
                android.os.Bundle r0 = r4.getData()     // Catch:{ Throwable -> 0x005e }
                java.lang.String r1 = "optBundle"
                com.amap.api.col.sl.d r2 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x005e }
                com.amap.api.location.AMapLocationClientOption r2 = r2.a     // Catch:{ Throwable -> 0x005e }
                android.os.Bundle r2 = com.amap.api.col.sl.fq.b(r2)     // Catch:{ Throwable -> 0x005e }
                r0.putBundle(r1, r2)     // Catch:{ Throwable -> 0x005e }
                com.amap.api.col.sl.d r1 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x005e }
                r1.a(10, r0)     // Catch:{ Throwable -> 0x005e }
                goto L_0x000f
            L_0x005e:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_GPS_LOCATIONCHANGE"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            L_0x0067:
                android.os.Bundle r0 = r4.getData()     // Catch:{ Throwable -> 0x0079 }
                com.amap.api.col.sl.d r1 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x0079 }
                com.amap.api.col.sl.g r1 = r1.c     // Catch:{ Throwable -> 0x0079 }
                if (r1 == 0) goto L_0x000f
                com.amap.api.col.sl.d r1 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x0079 }
                com.amap.api.col.sl.g r1 = r1.c     // Catch:{ Throwable -> 0x0079 }
                r1.a(r0)     // Catch:{ Throwable -> 0x0079 }
                goto L_0x000f
            L_0x0079:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_GPS_GEO_SUCCESS"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            L_0x0082:
                android.os.Bundle r0 = r4.getData()     // Catch:{ Throwable -> 0x0093 }
                com.amap.api.col.sl.d r1 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x0093 }
                java.lang.String r2 = "ngpsAble"
                boolean r0 = r0.getBoolean(r2)     // Catch:{ Throwable -> 0x0093 }
                r1.C = r0     // Catch:{ Throwable -> 0x0093 }
                goto L_0x000f
            L_0x0093:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_NGPS_ABLE"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            L_0x009d:
                com.amap.api.col.sl.d r0 = com.amap.api.col.sl.d.this     // Catch:{ Throwable -> 0x00a4 }
                com.amap.api.col.sl.d.a(r0)     // Catch:{ Throwable -> 0x00a4 }
                goto L_0x000f
            L_0x00a4:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager$ActionHandler"
                java.lang.String r2 = "handleMessage RESULT_FASTSKY"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0029 }
                goto L_0x000f
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.d.c.handleMessage(android.os.Message):void");
        }
    }

    static /* synthetic */ void a(d dVar) {
        boolean z2 = true;
        boolean z3 = false;
        try {
            if (dVar.z.checkCallingOrSelfPermission("android.permission.SYSTEM_ALERT_WINDOW") == 0) {
                z3 = true;
            } else if (dVar.z instanceof Activity) {
                z3 = true;
                z2 = false;
            } else {
                z2 = false;
            }
            if (z3) {
                Builder builder = new Builder(dVar.z);
                builder.setMessage(fp.f());
                if (!"".equals(fp.g()) && fp.g() != null) {
                    builder.setPositiveButton(fp.g(), new OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            d.this.d();
                            dialogInterface.cancel();
                        }
                    });
                }
                builder.setNegativeButton(fp.h(), new OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                    }
                });
                AlertDialog create = builder.create();
                if (z2) {
                    create.getWindow().setType(AMapException.CODE_AMAP_ENGINE_TABLEID_NOT_EXIST);
                }
                create.setCanceledOnTouchOutside(false);
                create.show();
                return;
            }
            dVar.d();
        } catch (Throwable th) {
            dVar.d();
            fq.a(th, "AMapLocationManager", "showDialog");
        }
    }

    static /* synthetic */ void a(d dVar, Bundle bundle) {
        long j2;
        AMapLocation aMapLocation;
        Throwable th;
        long j3;
        AMapLocation aMapLocation2 = null;
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                dVar.x = bundle.getString("nb", null);
                long j4 = bundle.getLong("netUseTime", 0);
                if (!(aMapLocation == null || aMapLocation.getErrorCode() != 0 || dVar.c == null)) {
                    dVar.c.c();
                    if (!TextUtils.isEmpty(aMapLocation.getAdCode())) {
                        dVar.c.z = aMapLocation;
                    }
                }
                j2 = j4;
            } catch (Throwable th2) {
                th = th2;
                j3 = 0;
                fq.a(th, "AMapLocationManager", "doLbsLocationSuccess");
                dVar.a(aMapLocation2, th, j3);
            }
        } else {
            j2 = 0;
            aMapLocation = null;
        }
        try {
            if (dVar.c != null) {
                aMapLocation = dVar.c.a(aMapLocation, dVar.x);
            }
            long j5 = j2;
            th = null;
            aMapLocation2 = aMapLocation;
            j3 = j5;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            j3 = j2;
            th = th4;
            fq.a(th, "AMapLocationManager", "doLbsLocationSuccess");
            dVar.a(aMapLocation2, th, j3);
        }
        dVar.a(aMapLocation2, th, j3);
    }

    static /* synthetic */ void a(d dVar, Message message) {
        try {
            AMapLocation aMapLocation = (AMapLocation) message.obj;
            if (dVar.g && dVar.i != null) {
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", fq.b(dVar.a));
                dVar.a(0, bundle);
                dVar.g = false;
            }
            dVar.a(aMapLocation, (Throwable) null, 0);
            if (dVar.C) {
                dVar.a(7, (Bundle) null);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "doGpsLocationSuccess");
        }
    }

    static /* synthetic */ void a(d dVar, AMapLocationListener aMapLocationListener) {
        if (aMapLocationListener == null) {
            throw new IllegalArgumentException("listener参数不能为null");
        }
        if (dVar.d == null) {
            dVar.d = new ArrayList<>();
        }
        if (!dVar.d.contains(aMapLocationListener)) {
            dVar.d.add(aMapLocationListener);
        }
    }

    static /* synthetic */ void b(d dVar, Message message) {
        try {
            Bundle data = message.getData();
            AMapLocation aMapLocation = (AMapLocation) data.getParcelable("loc");
            String string = data.getString("lastLocNb");
            if (aMapLocation != null) {
                AMapLocation aMapLocation2 = null;
                try {
                    if (i.b != null) {
                        aMapLocation2 = i.b.a();
                    } else if (dVar.h != null) {
                        aMapLocation2 = dVar.h.b();
                    }
                    fv.a(aMapLocation2, aMapLocation);
                } catch (Throwable th) {
                }
            }
            if (dVar.h.a(aMapLocation, string)) {
                dVar.h.d();
            }
        } catch (Throwable th2) {
            fq.a(th2, "AMapLocationManager", "doSaveLastLocation");
        }
    }

    static /* synthetic */ void b(d dVar, AMapLocationListener aMapLocationListener) {
        if (!dVar.d.isEmpty() && dVar.d.contains(aMapLocationListener)) {
            dVar.d.remove(aMapLocationListener);
        }
        if (dVar.d.isEmpty()) {
            dVar.f();
        }
    }

    static /* synthetic */ void c(d dVar, Message message) {
        if (message != null) {
            try {
                Bundle data = message.getData();
                if (data != null) {
                    int i2 = data.getInt("i", 0);
                    Notification notification = (Notification) data.getParcelable("h");
                    Intent i3 = dVar.i();
                    i3.putExtra("i", i2);
                    i3.putExtra("h", notification);
                    i3.putExtra("g", 1);
                    dVar.a(i3, true);
                }
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "doEnableBackgroundLocation");
            }
        }
    }

    static /* synthetic */ void d(d dVar, Message message) {
        if (message != null) {
            try {
                Bundle data = message.getData();
                if (data != null) {
                    boolean z2 = data.getBoolean("j", true);
                    Intent i2 = dVar.i();
                    i2.putExtra("j", z2);
                    i2.putExtra("g", 2);
                    dVar.a(i2, false);
                }
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "doDisableBackgroundLocation");
            }
        }
    }

    static /* synthetic */ void g(d dVar) {
        try {
            if (dVar.f) {
                dVar.f = false;
                ev b2 = dVar.b(new er());
                if (dVar.c()) {
                    Bundle bundle = new Bundle();
                    String str = "0";
                    if (b2 != null && (b2.getLocationType() == 2 || b2.getLocationType() == 4)) {
                        str = "1";
                    }
                    bundle.putBundle("optBundle", fq.b(dVar.a));
                    bundle.putString("isCacheLoc", str);
                    dVar.a(0, bundle);
                }
            } else {
                try {
                    if (dVar.r && !dVar.isStarted() && !dVar.v) {
                        dVar.v = true;
                        dVar.h();
                    }
                } catch (Throwable th) {
                    dVar.v = true;
                    fq.a(th, "AMapLocationManager", "doLBSLocation reStartService");
                }
                if (dVar.c()) {
                    dVar.v = false;
                    Bundle bundle2 = new Bundle();
                    bundle2.putBundle("optBundle", fq.b(dVar.a));
                    bundle2.putString("d", UmidtokenInfo.getUmidtoken());
                    if (!dVar.c.b()) {
                        dVar.a(1, bundle2);
                    }
                }
            }
            try {
                if (!dVar.a.isOnceLocation()) {
                    dVar.g();
                }
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
        }
    }

    static /* synthetic */ void h(d dVar) {
        dVar.c.b(dVar.a);
        if (dVar.B && !dVar.a.getLocationMode().equals(dVar.o)) {
            dVar.f();
            dVar.e();
        }
        dVar.o = dVar.a.getLocationMode();
        if (dVar.q != null) {
            if (dVar.a.isOnceLocation()) {
                dVar.q.a(dVar.z, 0);
            } else {
                dVar.q.a(dVar.z, 1);
            }
            dVar.q.a(dVar.z, dVar.a);
        }
    }

    static /* synthetic */ void i(d dVar) {
        try {
            if (dVar.i != null) {
                dVar.l = 0;
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", fq.b(dVar.a));
                dVar.a(2, bundle);
                return;
            }
            dVar.l++;
            if (dVar.l < 10) {
                dVar.a(1008, (Object) null, 50);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "startAssistantLocationImpl");
        }
    }

    static /* synthetic */ void j(d dVar) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBundle("optBundle", fq.b(dVar.a));
            dVar.a(3, bundle);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "stopAssistantLocationImpl");
        }
    }

    public d(Context context, Intent intent) {
        this.z = context;
        this.k = intent;
        if (fq.c()) {
            try {
                fw.a(this.z, fq.b());
            } catch (Throwable th) {
            }
        }
        try {
            if (Looper.myLooper() == null) {
                this.b = new c(this.z.getMainLooper());
            } else {
                this.b = new c();
            }
        } catch (Throwable th2) {
            fq.a(th2, "AMapLocationManager", "init 1");
        }
        try {
            this.h = new i(this.z);
        } catch (Throwable th3) {
            fq.a(th3, "AMapLocationManager", "init 5");
        }
        this.m = new b("amapLocManagerThread", this);
        this.m.setPriority(5);
        this.m.start();
        this.w = a(this.m.getLooper());
        try {
            this.c = new g(this.z, this.b);
        } catch (Throwable th4) {
            fq.a(th4, "AMapLocationManager", "init 3");
        }
        if (this.q == null) {
            this.q = new fv();
        }
    }

    public boolean isStarted() {
        return this.A;
    }

    /* access modifiers changed from: private */
    public void a(int i2, Object obj, long j2) {
        synchronized (this.p) {
            if (this.w != null) {
                Message obtain = Message.obtain();
                obtain.what = i2;
                if (obj instanceof Bundle) {
                    obtain.setData((Bundle) obj);
                } else {
                    obtain.obj = obj;
                }
                this.w.sendMessageDelayed(obtain, j2);
            }
        }
    }

    private void b() {
        synchronized (this.p) {
            if (this.w != null) {
                this.w.removeMessages(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
            }
        }
    }

    private a a(Looper looper) {
        a aVar;
        synchronized (this.p) {
            this.w = new a(looper);
            aVar = this.w;
        }
        return aVar;
    }

    public void setLocationOption(AMapLocationClientOption aMapLocationClientOption) {
        try {
            a((int) PointerIconCompat.TYPE_ZOOM_IN, (Object) aMapLocationClientOption.clone(), 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "setLocationOption");
        }
    }

    public void setLocationListener(AMapLocationListener aMapLocationListener) {
        try {
            a(1002, (Object) aMapLocationListener, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "setLocationListener");
        }
    }

    public void unRegisterLocationListener(AMapLocationListener aMapLocationListener) {
        try {
            a(1005, (Object) aMapLocationListener, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "unRegisterLocationListener");
        }
    }

    public void startLocation() {
        try {
            a(1003, (Object) null, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "startLocation");
        }
    }

    public void stopLocation() {
        try {
            a(1004, (Object) null, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "stopLocation");
        }
    }

    public void onDestroy() {
        try {
            if (this.D != null) {
                this.D.b();
                this.D = null;
            }
            a(1011, (Object) null, 0);
            this.n = true;
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "onDestroy");
        }
    }

    public AMapLocation getLastKnownLocation() {
        try {
            if (this.h != null) {
                return this.h.b();
            }
            return null;
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "getLastKnownLocation");
            return null;
        }
    }

    public void startAssistantLocation() {
        try {
            a(1008, (Object) null, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "startAssistantLocation");
        }
    }

    public void startAssistantLocation(WebView webView) {
        if (this.D == null) {
            this.D = new h(this.z, webView);
        }
        this.D.a();
    }

    public void stopAssistantLocation() {
        try {
            if (this.D != null) {
                this.D.b();
                this.D = null;
            }
            a(1009, (Object) null, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "stopAssistantLocation");
        }
    }

    /* access modifiers changed from: private */
    public void a(int i2, Bundle bundle) {
        if (bundle == null) {
            try {
                bundle = new Bundle();
            } catch (Throwable th) {
                if ((th instanceof RemoteException) || ((th instanceof IllegalStateException) && th.getMessage().contains("sending message to a Handler on a dead thread"))) {
                    this.i = null;
                    this.A = false;
                }
                fq.a(th, "AMapLocationManager", "sendLocMessage");
                return;
            }
        }
        if (TextUtils.isEmpty(this.t)) {
            this.t = fq.c(this.z);
        }
        bundle.putString("c", this.t);
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.setData(bundle);
        obtain.replyTo = this.j;
        if (this.i != null) {
            this.i.send(obtain);
        }
    }

    private boolean c() {
        boolean z2 = true;
        int i2 = 0;
        do {
            try {
                if (this.i != null) {
                    break;
                }
                Thread.sleep(100);
                i2++;
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "checkAPSManager");
                z2 = false;
            }
        } while (i2 < 50);
        if (this.i == null) {
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setErrorCode(10);
            aMapLocation.setLocationDetail("请检查配置文件是否配置服务，并且manifest中service标签是否配置在application标签内#1001");
            bundle.putParcelable("loc", aMapLocation);
            obtain.setData(bundle);
            obtain.what = 1;
            this.b.sendMessage(obtain);
            z2 = false;
        }
        if (!z2) {
            fv.a((String) null, (int) AMapException.CODE_AMAP_NEARBY_KEY_NOT_BIND);
        }
        return z2;
    }

    private void a(AMapLocation aMapLocation) {
        try {
            if (aMapLocation.getErrorCode() != 0) {
                aMapLocation.setLocationType(0);
            }
            if (GeocodeSearch.GPS.equals(aMapLocation.getProvider()) || !this.c.b()) {
                aMapLocation.setAltitude(fy.b(aMapLocation.getAltitude()));
                aMapLocation.setBearing(fy.a(aMapLocation.getBearing()));
                aMapLocation.setSpeed(fy.a(aMapLocation.getSpeed()));
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    try {
                        ((AMapLocationListener) it.next()).onLocationChanged(aMapLocation);
                    } catch (Throwable th) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
    }

    private synchronized void a(AMapLocation aMapLocation, Throwable th, long j2) {
        try {
            if (!fq.c() || aMapLocation != null) {
                if (aMapLocation == null) {
                    aMapLocation = new AMapLocation("");
                    aMapLocation.setErrorCode(8);
                    aMapLocation.setLocationDetail("amapLocation is null#0801");
                }
                if (!GeocodeSearch.GPS.equals(aMapLocation.getProvider())) {
                    aMapLocation.setProvider("lbs");
                }
                AMapLocationQualityReport aMapLocationQualityReport = new AMapLocationQualityReport();
                aMapLocationQualityReport.setLocationMode(this.a.getLocationMode());
                if (this.c != null) {
                    aMapLocationQualityReport.setGPSSatellites(this.c.e());
                    aMapLocationQualityReport.setGpsStatus(this.c.d());
                }
                aMapLocationQualityReport.setWifiAble(fy.g(this.z));
                aMapLocationQualityReport.setNetworkType(fy.h(this.z));
                if (aMapLocation.getLocationType() == 1 || GeocodeSearch.GPS.equalsIgnoreCase(aMapLocation.getProvider())) {
                    j2 = 0;
                }
                aMapLocationQualityReport.setNetUseTime(j2);
                aMapLocation.setLocationQualityReport(aMapLocationQualityReport);
                try {
                    if (this.B) {
                        String str = this.x;
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("loc", aMapLocation);
                        bundle.putString("lastLocNb", str);
                        a((int) PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, (Object) bundle, 0);
                        fv.a(this.z, aMapLocation);
                        fv.b(this.z, aMapLocation);
                        a(aMapLocation.clone());
                    }
                } catch (Throwable th2) {
                    fq.a(th2, "AMapLocationManager", "handlerLocation part2");
                }
                if (!this.n || fq.c()) {
                    fw.b(this.z);
                    if (this.a.isOnceLocation()) {
                        f();
                    }
                }
            } else if (th != null) {
                fw.a(this.z, "loc", th.getMessage());
            } else {
                fw.a(this.z, "loc", "amaplocation is null");
            }
        } catch (Throwable th3) {
            fq.a(th3, "AMapLocationManager", "handlerLocation part3");
        }
        return;
    }

    /* access modifiers changed from: private */
    public void d() {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.autonavi.minimap", fp.k()));
            intent.setFlags(268435456);
            intent.setData(Uri.parse(fp.i()));
            this.z.startActivity(intent);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "callAMap part2");
        }
    }

    /* access modifiers changed from: private */
    public synchronized void e() {
        long j2 = 0;
        synchronized (this) {
            if (this.a == null) {
                this.a = new AMapLocationClientOption();
            }
            if (!this.B) {
                this.B = true;
                switch (this.a.getLocationMode()) {
                    case Battery_Saving:
                        a((int) PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, (Object) null, 0);
                        a((int) PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, 0);
                        break;
                    case Device_Sensors:
                        b();
                        a((int) PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, (Object) null, 0);
                        break;
                    case Hight_Accuracy:
                        a((int) PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, (Object) null, 0);
                        if (this.a.isGpsFirst() && this.a.isOnceLocation()) {
                            j2 = 30000;
                        }
                        a((int) PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, j2);
                        break;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void f() {
        try {
            if (this.c != null) {
                this.c.a();
            }
            b();
            this.B = false;
            this.l = 0;
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "stopLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a() {
        a(12, (Bundle) null);
        this.f = true;
        this.g = true;
        this.A = false;
        this.r = false;
        f();
        if (this.q != null) {
            this.q.b(this.z);
        }
        fv.a(this.z);
        if (this.s != null) {
            this.s.b().sendEmptyMessage(11);
        } else if (this.E != null) {
            this.z.unbindService(this.E);
        }
        try {
            if (this.y) {
                this.z.stopService(i());
            }
        } catch (Throwable th) {
        }
        this.y = false;
        if (this.d != null) {
            this.d.clear();
            this.d = null;
        }
        this.E = null;
        synchronized (this.p) {
            if (this.w != null) {
                this.w.removeCallbacksAndMessages(null);
            }
            this.w = null;
        }
        if (this.m != null) {
            if (VERSION.SDK_INT >= 18) {
                try {
                    ft.a((Object) this.m, HandlerThread.class, "quitSafely", new Object[0]);
                } catch (Throwable th2) {
                    this.m.quit();
                }
            } else {
                this.m.quit();
            }
        }
        this.m = null;
        if (this.b != null) {
            this.b.removeCallbacksAndMessages(null);
        }
        if (this.h != null) {
            this.h.c();
            this.h = null;
        }
    }

    private ev a(er erVar) {
        if (this.a.isLocationCacheEnable()) {
            try {
                return erVar.j();
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "doFirstCacheLoc");
            }
        }
        return null;
    }

    private static void a(er erVar, ev evVar) {
        if (evVar != null) {
            try {
                if (evVar.getErrorCode() == 0) {
                    erVar.a(evVar);
                }
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "apsLocation:doFirstAddCache");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0087 A[Catch:{ Throwable -> 0x0112 }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00bf A[SYNTHETIC, Splitter:B:46:0x00bf] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00da A[SYNTHETIC, Splitter:B:59:0x00da] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.amap.api.col.sl.ev b(com.amap.api.col.sl.er r14) {
        /*
            r13 = this;
            r0 = 0
            r6 = 0
            r5 = 1
            com.amap.api.col.sl.fu r7 = new com.amap.api.col.sl.fu     // Catch:{ Throwable -> 0x00cd }
            r7.<init>()     // Catch:{ Throwable -> 0x00cd }
            long r2 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x00cd }
            r7.a(r2)     // Catch:{ Throwable -> 0x00cd }
            java.lang.String r1 = com.amap.api.location.AMapLocationClientOption.getAPIKEY()     // Catch:{ Throwable -> 0x00c3 }
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x00c3 }
            if (r2 != 0) goto L_0x001e
            android.content.Context r2 = r13.z     // Catch:{ Throwable -> 0x00c3 }
            com.amap.api.col.sl.bq.a(r2, r1)     // Catch:{ Throwable -> 0x00c3 }
        L_0x001e:
            java.lang.String r1 = com.amap.api.location.UmidtokenInfo.getUmidtoken()     // Catch:{ Throwable -> 0x00e0 }
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x00e0 }
            if (r2 != 0) goto L_0x002b
            com.amap.api.col.sl.bu.a(r1)     // Catch:{ Throwable -> 0x00e0 }
        L_0x002b:
            android.content.Context r1 = r13.z     // Catch:{ Throwable -> 0x00f1 }
            r14.a(r1)     // Catch:{ Throwable -> 0x00f1 }
            com.amap.api.location.AMapLocationClientOption r1 = r13.a     // Catch:{ Throwable -> 0x00f1 }
            r14.a(r1)     // Catch:{ Throwable -> 0x00f1 }
            android.content.Context r1 = r13.z     // Catch:{ Throwable -> 0x00f1 }
            r14.i()     // Catch:{ Throwable -> 0x00f1 }
        L_0x003a:
            r2 = 0
            boolean r8 = com.amap.api.col.sl.fp.D()     // Catch:{ Throwable -> 0x00cd }
            com.amap.api.col.sl.ev r4 = r13.a(r14)     // Catch:{ Throwable -> 0x00cd }
            if (r4 != 0) goto L_0x012d
            if (r8 != 0) goto L_0x0049
            r6 = r5
        L_0x0049:
            com.amap.api.col.sl.ev r4 = r14.a(r6)     // Catch:{ Throwable -> 0x00fb }
            long r2 = r4.k()     // Catch:{ Throwable -> 0x00fb }
            if (r8 != 0) goto L_0x0056
            a(r14, r4)     // Catch:{ Throwable -> 0x00fb }
        L_0x0056:
            r1 = r4
            r4 = r5
        L_0x0058:
            long r10 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x011b }
            r7.b(r10)     // Catch:{ Throwable -> 0x011b }
            r7.a(r1)     // Catch:{ Throwable -> 0x011b }
            if (r1 == 0) goto L_0x0068
            java.lang.String r0 = r1.l()     // Catch:{ Throwable -> 0x011b }
        L_0x0068:
            com.amap.api.location.AMapLocationClientOption r5 = r13.a     // Catch:{ Throwable -> 0x0107 }
            boolean r5 = r5.isLocationCacheEnable()     // Catch:{ Throwable -> 0x0107 }
            if (r5 == 0) goto L_0x010f
            com.amap.api.col.sl.i r5 = r13.h     // Catch:{ Throwable -> 0x0107 }
            if (r5 == 0) goto L_0x010f
            com.amap.api.col.sl.i r5 = r13.h     // Catch:{ Throwable -> 0x0107 }
            com.amap.api.location.AMapLocationClientOption r6 = r13.a     // Catch:{ Throwable -> 0x0107 }
            long r10 = r6.getLastLocationLifeCycle()     // Catch:{ Throwable -> 0x0107 }
            com.amap.api.location.AMapLocation r0 = r5.a(r1, r0, r10)     // Catch:{ Throwable -> 0x0107 }
        L_0x0080:
            android.os.Bundle r5 = new android.os.Bundle     // Catch:{ Throwable -> 0x0112 }
            r5.<init>()     // Catch:{ Throwable -> 0x0112 }
            if (r1 == 0) goto L_0x009a
            java.lang.String r6 = "loc"
            r5.putParcelable(r6, r0)     // Catch:{ Throwable -> 0x0112 }
            java.lang.String r0 = "nb"
            java.lang.String r6 = r1.l()     // Catch:{ Throwable -> 0x0112 }
            r5.putString(r0, r6)     // Catch:{ Throwable -> 0x0112 }
            java.lang.String r0 = "netUseTime"
            r5.putLong(r0, r2)     // Catch:{ Throwable -> 0x0112 }
        L_0x009a:
            android.os.Message r0 = android.os.Message.obtain()     // Catch:{ Throwable -> 0x0112 }
            r0.setData(r5)     // Catch:{ Throwable -> 0x0112 }
            r2 = 1
            r0.what = r2     // Catch:{ Throwable -> 0x0112 }
            com.amap.api.col.sl.d$c r2 = r13.b     // Catch:{ Throwable -> 0x0112 }
            r2.sendMessage(r0)     // Catch:{ Throwable -> 0x0112 }
        L_0x00a9:
            android.content.Context r0 = r13.z     // Catch:{ Throwable -> 0x011b }
            com.amap.api.col.sl.fv.a(r0, r7)     // Catch:{ Throwable -> 0x011b }
            if (r4 == 0) goto L_0x00bd
            if (r8 == 0) goto L_0x00bd
            r14.c()     // Catch:{ Throwable -> 0x011d }
            r0 = 1
            com.amap.api.col.sl.ev r0 = r14.a(r0)     // Catch:{ Throwable -> 0x011d }
            a(r14, r0)     // Catch:{ Throwable -> 0x011d }
        L_0x00bd:
            if (r14 == 0) goto L_0x00c2
            r14.f()     // Catch:{ Throwable -> 0x0126 }
        L_0x00c2:
            return r1
        L_0x00c3:
            r1 = move-exception
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "apsLocation setAuthKey"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x00cd }
            goto L_0x001e
        L_0x00cd:
            r1 = move-exception
            r12 = r1
            r1 = r0
            r0 = r12
        L_0x00d1:
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "apsLocation"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ all -> 0x00ea }
            if (r14 == 0) goto L_0x00c2
            r14.f()     // Catch:{ Throwable -> 0x00de }
            goto L_0x00c2
        L_0x00de:
            r0 = move-exception
            goto L_0x00c2
        L_0x00e0:
            r1 = move-exception
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "apsLocation setUmidToken"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x00cd }
            goto L_0x002b
        L_0x00ea:
            r0 = move-exception
            if (r14 == 0) goto L_0x00f0
            r14.f()     // Catch:{ Throwable -> 0x0128 }
        L_0x00f0:
            throw r0
        L_0x00f1:
            r1 = move-exception
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "initApsBase"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x00cd }
            goto L_0x003a
        L_0x00fb:
            r1 = move-exception
            java.lang.String r6 = "AMapLocationManager"
            java.lang.String r9 = "apsLocation:doFirstNetLocate"
            com.amap.api.col.sl.fq.a(r1, r6, r9)     // Catch:{ Throwable -> 0x012a }
            r1 = r4
            r4 = r5
            goto L_0x0058
        L_0x0107:
            r0 = move-exception
            java.lang.String r5 = "AMapLocationManager"
            java.lang.String r6 = "fixLastLocation"
            com.amap.api.col.sl.fq.a(r0, r5, r6)     // Catch:{ Throwable -> 0x011b }
        L_0x010f:
            r0 = r1
            goto L_0x0080
        L_0x0112:
            r0 = move-exception
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "apsLocation:callback"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ Throwable -> 0x011b }
            goto L_0x00a9
        L_0x011b:
            r0 = move-exception
            goto L_0x00d1
        L_0x011d:
            r0 = move-exception
            java.lang.String r2 = "AMapLocationManager"
            java.lang.String r3 = "apsLocation:doFirstNetLocate 2"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ Throwable -> 0x011b }
            goto L_0x00bd
        L_0x0126:
            r0 = move-exception
            goto L_0x00c2
        L_0x0128:
            r1 = move-exception
            goto L_0x00f0
        L_0x012a:
            r0 = move-exception
            r1 = r4
            goto L_0x00d1
        L_0x012d:
            r1 = r4
            r4 = r6
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.d.b(com.amap.api.col.sl.er):com.amap.api.col.sl.ev");
    }

    private void g() {
        long j2 = 1000;
        if (this.a.getLocationMode() != AMapLocationMode.Device_Sensors) {
            if (this.a.getInterval() >= 1000) {
                j2 = this.a.getInterval();
            }
            a((int) PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, j2);
        }
    }

    /* access modifiers changed from: private */
    public void h() {
        try {
            if (this.j == null) {
                this.j = new Messenger(this.b);
            }
            this.z.bindService(i(), this.E, 1);
        } catch (Throwable th) {
        }
    }

    private Intent i() {
        if (this.k == null) {
            this.k = new Intent(this.z, APSService.class);
        }
        String str = "";
        try {
            if (!TextUtils.isEmpty(AMapLocationClientOption.getAPIKEY())) {
                str = AMapLocationClientOption.getAPIKEY();
            } else {
                str = bp.f(this.z);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "startServiceImpl p2");
        }
        this.k.putExtra("a", str);
        this.k.putExtra("b", bp.c(this.z));
        this.k.putExtra("d", UmidtokenInfo.getUmidtoken());
        this.k.putExtra("f", AMapLocationClientOption.isDownloadCoordinateConvertLibrary());
        return this.k;
    }

    public void enableBackgroundLocation(int i2, Notification notification) {
        if (i2 != 0 && notification != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("i", i2);
                bundle.putParcelable("h", notification);
                a((int) GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, (Object) bundle, 0);
            } catch (Throwable th) {
                fq.a(th, "AMapLocationManager", "disableBackgroundLocation");
            }
        }
    }

    public void disableBackgroundLocation(boolean z2) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean("j", z2);
            a(1024, (Object) bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "AMapLocationManager", "disableBackgroundLocation");
        }
    }

    private void a(Intent intent, boolean z2) {
        if (this.z != null) {
            if (VERSION.SDK_INT < 26 || !z2) {
                this.z.startService(intent);
            } else {
                try {
                    this.z.getClass().getMethod("startForegroundService", new Class[]{Intent.class}).invoke(this.z, new Object[]{intent});
                } catch (Throwable th) {
                    this.z.startService(intent);
                }
            }
            this.y = true;
        }
    }
}
