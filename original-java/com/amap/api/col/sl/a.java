package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.amap.api.fence.GeoFence;
import com.amap.api.fence.GeoFenceListener;
import com.amap.api.fence.GeoFenceManagerBase;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.DPoint;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.district.DistrictSearchQuery;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.client.ClientConstants;
import com.mi.milinkforgame.sdk.data.Const.Access;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"NewApi"})
/* compiled from: GeoFenceManager */
public class a implements GeoFenceManagerBase {
    fv a = null;
    Context b = null;
    PendingIntent c = null;
    String d = null;
    GeoFenceListener e = null;
    volatile int f = 1;
    ArrayList<GeoFence> g = new ArrayList<>();
    c h = null;
    Object i = new Object();
    Object j = new Object();
    C0002a k = null;
    b l = null;
    volatile boolean m = false;
    volatile boolean n = false;
    volatile boolean o = false;
    b p = null;
    c q = null;
    AMapLocationClient r = null;
    volatile AMapLocation s = null;
    long t = 0;
    AMapLocationClientOption u = null;
    int v = 0;
    AMapLocationListener w = new AMapLocationListener() {
        /* JADX WARNING: Removed duplicated region for block: B:12:0x0034 A[Catch:{ Throwable -> 0x0043 }] */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x006f A[Catch:{ Throwable -> 0x0043 }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onLocationChanged(com.amap.api.location.AMapLocation r10) {
            /*
                r9 = this;
                r0 = 8
                r1 = 1
                r2 = 0
                com.amap.api.col.sl.a r3 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                boolean r3 = r3.x     // Catch:{ Throwable -> 0x0043 }
                if (r3 == 0) goto L_0x000b
            L_0x000a:
                return
            L_0x000b:
                com.amap.api.col.sl.a r3 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                boolean r3 = r3.o     // Catch:{ Throwable -> 0x0043 }
                if (r3 == 0) goto L_0x000a
                com.amap.api.col.sl.a r3 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r3.s = r10     // Catch:{ Throwable -> 0x0043 }
                if (r10 == 0) goto L_0x006d
                int r0 = r10.getErrorCode()     // Catch:{ Throwable -> 0x0043 }
                int r3 = r10.getErrorCode()     // Catch:{ Throwable -> 0x0043 }
                if (r3 != 0) goto L_0x0045
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0043 }
                r2.t = r4     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r3 = 5
                r4 = 0
                r6 = 0
                r2.a(r3, r4, r6)     // Catch:{ Throwable -> 0x0043 }
            L_0x0032:
                if (r1 == 0) goto L_0x006f
                com.amap.api.col.sl.a r0 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r1 = 0
                r0.v = r1     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r0 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r1 = 6
                r2 = 0
                r4 = 0
                r0.a(r1, r2, r4)     // Catch:{ Throwable -> 0x0043 }
                goto L_0x000a
            L_0x0043:
                r0 = move-exception
                goto L_0x000a
            L_0x0045:
                com.amap.api.col.sl.a r1 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r1 = "定位失败"
                int r3 = r10.getErrorCode()     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r4 = r10.getErrorInfo()     // Catch:{ Throwable -> 0x0043 }
                r5 = 1
                java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ Throwable -> 0x0043 }
                r6 = 0
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r8 = "locationDetail:"
                r7.<init>(r8)     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r8 = r10.getLocationDetail()     // Catch:{ Throwable -> 0x0043 }
                java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r7 = r7.toString()     // Catch:{ Throwable -> 0x0043 }
                r5[r6] = r7     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a.a(r1, r3, r4, r5)     // Catch:{ Throwable -> 0x0043 }
            L_0x006d:
                r1 = r2
                goto L_0x0032
            L_0x006f:
                android.os.Bundle r1 = new android.os.Bundle     // Catch:{ Throwable -> 0x0043 }
                r1.<init>()     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                boolean r2 = r2.m     // Catch:{ Throwable -> 0x0043 }
                if (r2 != 0) goto L_0x0090
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r3 = 7
                r2.a(r3)     // Catch:{ Throwable -> 0x0043 }
                java.lang.String r2 = "interval"
                r4 = 2000(0x7d0, double:9.88E-321)
                r1.putLong(r2, r4)     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r3 = 8
                r4 = 2000(0x7d0, double:9.88E-321)
                r2.a(r3, r1, r4)     // Catch:{ Throwable -> 0x0043 }
            L_0x0090:
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                int r3 = r2.v     // Catch:{ Throwable -> 0x0043 }
                int r3 = r3 + 1
                r2.v = r3     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r2 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                int r2 = r2.v     // Catch:{ Throwable -> 0x0043 }
                r3 = 3
                if (r2 < r3) goto L_0x000a
                java.lang.String r2 = "location_errorcode"
                r1.putInt(r2, r0)     // Catch:{ Throwable -> 0x0043 }
                com.amap.api.col.sl.a r0 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0043 }
                r2 = 1002(0x3ea, float:1.404E-42)
                r0.a(r2, r1)     // Catch:{ Throwable -> 0x0043 }
                goto L_0x000a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.a.AnonymousClass1.onLocationChanged(com.amap.api.location.AMapLocation):void");
        }
    };
    volatile boolean x = false;

    /* renamed from: com.amap.api.col.sl.a$a reason: collision with other inner class name */
    /* compiled from: GeoFenceManager */
    class C0002a extends Handler {
        public C0002a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        a.this.b(message.getData());
                        return;
                    case 1:
                        a.this.c(message.getData());
                        return;
                    case 2:
                        a.this.e(message.getData());
                        return;
                    case 3:
                        a.this.d(message.getData());
                        return;
                    case 4:
                        a.this.f(message.getData());
                        return;
                    case 5:
                        a.this.c();
                        return;
                    case 6:
                        a.this.a(a.this.s);
                        return;
                    case 7:
                        a.this.b();
                        return;
                    case 8:
                        a.this.j(message.getData());
                        return;
                    case 9:
                        a.this.a(message.getData());
                        return;
                    case 10:
                        a.this.a();
                        return;
                    case 11:
                        a.this.h(message.getData());
                        return;
                    case 12:
                        a.this.g(message.getData());
                        return;
                    case 13:
                        a.this.d();
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
            }
        }
    }

    /* compiled from: GeoFenceManager */
    static class b extends HandlerThread {
        public b(String str) {
            super(str);
        }
    }

    /* compiled from: GeoFenceManager */
    class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        public c() {
        }

        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleMessage(android.os.Message r3) {
            /*
                r2 = this;
                android.os.Bundle r0 = r3.getData()     // Catch:{ Throwable -> 0x0010 }
                int r1 = r3.what     // Catch:{ Throwable -> 0x0010 }
                switch(r1) {
                    case 1000: goto L_0x000a;
                    case 1001: goto L_0x0012;
                    case 1002: goto L_0x0025;
                    default: goto L_0x0009;
                }     // Catch:{ Throwable -> 0x0010 }
            L_0x0009:
                return
            L_0x000a:
                com.amap.api.col.sl.a r1 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0010 }
                r1.i(r0)     // Catch:{ Throwable -> 0x0010 }
                goto L_0x0009
            L_0x0010:
                r0 = move-exception
                goto L_0x0009
            L_0x0012:
                java.lang.String r1 = "geoFence"
                android.os.Parcelable r0 = r0.getParcelable(r1)     // Catch:{ Throwable -> 0x0020 }
                com.amap.api.fence.GeoFence r0 = (com.amap.api.fence.GeoFence) r0     // Catch:{ Throwable -> 0x0020 }
                com.amap.api.col.sl.a r1 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0020 }
                r1.a(r0)     // Catch:{ Throwable -> 0x0020 }
                goto L_0x0009
            L_0x0020:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0010 }
                goto L_0x0009
            L_0x0025:
                java.lang.String r1 = "location_errorcode"
                int r0 = r0.getInt(r1)     // Catch:{ Throwable -> 0x0031 }
                com.amap.api.col.sl.a r1 = com.amap.api.col.sl.a.this     // Catch:{ Throwable -> 0x0031 }
                r1.b(r0)     // Catch:{ Throwable -> 0x0031 }
                goto L_0x0009
            L_0x0031:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0010 }
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.a.c.handleMessage(android.os.Message):void");
        }
    }

    public a(Context context) {
        try {
            this.b = context.getApplicationContext();
            e();
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManger", "<init>");
        }
    }

    private void e() {
        if (!this.o) {
            this.o = true;
        }
        if (!this.n) {
            try {
                if (Looper.myLooper() == null) {
                    this.h = new c(this.b.getMainLooper());
                } else {
                    this.h = new c();
                }
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManger", "init 1");
            }
            try {
                this.l = new b("fenceActionThread");
                this.l.setPriority(5);
                this.l.start();
                this.k = new C0002a(this.l.getLooper());
            } catch (Throwable th2) {
                fq.a(th2, "GeoFenceManger", "init 2");
            }
            try {
                Context context = this.b;
                this.p = new b();
                this.q = new c();
                this.u = new AMapLocationClientOption();
                this.r = new AMapLocationClient(this.b);
                this.u.setLocationCacheEnable(true);
                this.u.setNeedAddress(false);
                this.r.setLocationListener(this.w);
                if (this.a == null) {
                    this.a = new fv();
                }
            } catch (Throwable th3) {
                fq.a(th3, "GeoFenceManger", "initBase");
            }
            this.n = true;
            try {
                if (this.d != null && this.c == null) {
                    createPendingIntent(this.d);
                }
            } catch (Throwable th4) {
                fq.a(th4, "GeoFenceManger", "init 4");
            }
        }
    }

    public synchronized PendingIntent createPendingIntent(String str) {
        try {
            e();
            Intent intent = new Intent();
            intent.setPackage(bp.c(this.b));
            intent.setAction(str);
            this.c = PendingIntent.getBroadcast(this.b, 0, intent, 0);
            this.d = str;
            if (this.g != null && !this.g.isEmpty()) {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    GeoFence geoFence = (GeoFence) it.next();
                    geoFence.setPendingIntent(this.c);
                    geoFence.setPendingIntentAction(this.d);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "createPendingIntent");
        }
        return this.c;
    }

    public synchronized void setActivateAction(int i2) {
        try {
            e();
            if (i2 > 7 || i2 <= 0) {
                i2 = 1;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("activatesAction", i2);
            a(9, bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "setActivateAction");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void a(Bundle bundle) {
        int i2;
        if (bundle != null) {
            try {
                i2 = bundle.getInt("activatesAction", 1);
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManager", "doSetActivatesAction");
                return;
            }
        } else {
            i2 = 1;
        }
        if (this.f != i2) {
            if (this.g != null && !this.g.isEmpty()) {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    GeoFence geoFence = (GeoFence) it.next();
                    geoFence.setStatus(0);
                    geoFence.setEnterTime(-1);
                }
            }
            f();
        }
        this.f = i2;
    }

    public void setGeoFenceListener(GeoFenceListener geoFenceListener) {
        try {
            this.e = geoFenceListener;
        } catch (Throwable th) {
        }
    }

    public synchronized void addRoundGeoFence(DPoint dPoint, float f2, String str) {
        try {
            e();
            Bundle bundle = new Bundle();
            bundle.putParcelable("point", dPoint);
            bundle.putFloat("radius", f2);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            a(0, bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "addRoundGeoFence");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void b(Bundle bundle) {
        String str;
        int i2;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = "";
            if (bundle != null && !bundle.isEmpty()) {
                DPoint dPoint = (DPoint) bundle.getParcelable("point");
                str = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (dPoint == null) {
                    str2 = str;
                } else if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    a("添加围栏失败", 1, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                    i2 = 1;
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(MyLocationStyle.ERROR_CODE, i2);
                    bundle2.putParcelableArrayList("resultList", arrayList);
                    bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
                    a(1000, bundle2);
                } else {
                    GeoFence a2 = a(bundle, false);
                    i2 = b(a2);
                    if (i2 == 0) {
                        arrayList.add(a2);
                    }
                    Bundle bundle22 = new Bundle();
                    bundle22.putInt(MyLocationStyle.ERROR_CODE, i2);
                    bundle22.putParcelableArrayList("resultList", arrayList);
                    bundle22.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
                    a(1000, bundle22);
                }
            }
            str = str2;
            i2 = 1;
            Bundle bundle222 = new Bundle();
            bundle222.putInt(MyLocationStyle.ERROR_CODE, i2);
            bundle222.putParcelableArrayList("resultList", arrayList);
            bundle222.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            a(1000, bundle222);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doAddGeoFence_round");
        }
    }

    public synchronized void addPolygonGeoFence(List<DPoint> list, String str) {
        try {
            e();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("points", new ArrayList(list));
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            a(1, bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "addPolygonGeoFence");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void c(Bundle bundle) {
        int i2 = 1;
        try {
            ArrayList arrayList = new ArrayList();
            String str = "";
            if (bundle != null && !bundle.isEmpty()) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("points");
                str = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (parcelableArrayList != null && parcelableArrayList.size() > 2) {
                    GeoFence a2 = a(bundle, true);
                    i2 = b(a2);
                    if (i2 == 0) {
                        arrayList.add(a2);
                    }
                }
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle2.putInt(MyLocationStyle.ERROR_CODE, i2);
            bundle2.putParcelableArrayList("resultList", arrayList);
            a(1000, bundle2);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doAddGeoFence_polygon");
        }
    }

    private GeoFence a(Bundle bundle, boolean z) {
        ArrayList arrayList;
        float f2 = 1000.0f;
        GeoFence geoFence = new GeoFence();
        ArrayList arrayList2 = new ArrayList();
        DPoint dPoint = new DPoint();
        if (z) {
            geoFence.setType(1);
            arrayList = bundle.getParcelableArrayList("points");
            if (arrayList != null) {
                dPoint = b((List<DPoint>) arrayList);
            }
            geoFence.setMaxDis2Center(b(dPoint, (List<DPoint>) arrayList));
            geoFence.setMinDis2Center(a(dPoint, (List<DPoint>) arrayList));
        } else {
            geoFence.setType(0);
            dPoint = (DPoint) bundle.getParcelable("point");
            if (dPoint != null) {
                arrayList2.add(dPoint);
            }
            float f3 = bundle.getFloat("radius", 1000.0f);
            if (f3 > 0.0f) {
                f2 = f3;
            }
            geoFence.setRadius(f2);
            geoFence.setMinDis2Center(f2);
            geoFence.setMaxDis2Center(f2);
            arrayList = arrayList2;
        }
        geoFence.setActivatesAction(this.f);
        geoFence.setCustomId(bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(arrayList);
        geoFence.setPointList(arrayList3);
        geoFence.setCenter(dPoint);
        geoFence.setPendingIntentAction(this.d);
        geoFence.setExpiration(-1);
        geoFence.setPendingIntent(this.c);
        geoFence.setFenceId(c.a());
        if (this.a != null) {
            this.a.a(this.b, 2);
        }
        return geoFence;
    }

    public synchronized void addNearbyGeoFence(String str, String str2, DPoint dPoint, float f2, int i2, String str3) {
        int i3;
        int i4 = 25;
        synchronized (this) {
            try {
                e();
                if (f2 <= 0.0f || f2 > 50000.0f) {
                    f2 = 3000.0f;
                }
                if (i2 <= 0) {
                    i3 = 10;
                } else {
                    i3 = i2;
                }
                if (i3 <= 25) {
                    i4 = i3;
                }
                Bundle bundle = new Bundle();
                bundle.putString("keyword", str);
                bundle.putString("poiType", str2);
                bundle.putParcelable("centerPoint", dPoint);
                bundle.putFloat("aroundRadius", f2);
                bundle.putInt("size", i4);
                bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str3);
                a(3, bundle, 0);
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManager", "addNearbyGeoFence");
            }
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void d(Bundle bundle) {
        int i2;
        int i3 = 1;
        String str = "";
        try {
            ArrayList arrayList = new ArrayList();
            if (bundle != null && !bundle.isEmpty()) {
                String string = bundle.getString("keyword");
                String string2 = bundle.getString("poiType");
                DPoint dPoint = (DPoint) bundle.getParcelable("centerPoint");
                float f2 = bundle.getFloat("aroundRadius", 3000.0f);
                int i4 = bundle.getInt("size", 10);
                String string3 = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (dPoint == null || TextUtils.isEmpty(string)) {
                    str = string3;
                } else if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    a("添加围栏失败", 1, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                    str = string3;
                } else {
                    String a2 = this.p.a(this.b, "http://restapi.amap.com/v3/place/around?", string, string2, String.valueOf(i4), String.valueOf(fy.c(dPoint.getLatitude())), String.valueOf(fy.c(dPoint.getLongitude())), String.valueOf(Float.valueOf(f2).intValue()));
                    if (a2 != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string3);
                        bundle2.putString("pendingIntentAction", this.d);
                        bundle2.putLong("expiration", -1);
                        bundle2.putInt("activatesAction", this.f);
                        bundle2.putFloat("geoRadius", 200.0f);
                        c cVar = this.q;
                        int b2 = c.b(a2, arrayList2, bundle2);
                        if (b2 != 10000) {
                            i2 = c(b2);
                        } else if (arrayList2.isEmpty()) {
                            i3 = 16;
                            str = string3;
                        } else {
                            i2 = a((List<GeoFence>) arrayList2);
                            if (i2 == 0) {
                                arrayList.addAll(arrayList2);
                                i3 = i2;
                                str = string3;
                            }
                        }
                        i3 = i2;
                        str = string3;
                    } else {
                        i3 = 4;
                        str = string3;
                    }
                }
            }
            Bundle bundle3 = new Bundle();
            bundle3.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle3.putInt(MyLocationStyle.ERROR_CODE, i3);
            bundle3.putParcelableArrayList("resultList", arrayList);
            a(1000, bundle3);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doAddGeoFence_nearby");
        }
    }

    public synchronized void addKeywordGeoFence(String str, String str2, String str3, int i2, String str4) {
        int i3;
        int i4 = 25;
        synchronized (this) {
            try {
                e();
                if (i2 <= 0) {
                    i3 = 10;
                } else {
                    i3 = i2;
                }
                if (i3 <= 25) {
                    i4 = i3;
                }
                Bundle bundle = new Bundle();
                bundle.putString("keyword", str);
                bundle.putString("poiType", str2);
                bundle.putString(DistrictSearchQuery.KEYWORDS_CITY, str3);
                bundle.putInt("size", i4);
                bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str4);
                a(2, bundle, 0);
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManager", "addKeywordGeoFence");
            }
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void e(Bundle bundle) {
        int i2;
        int i3;
        String str = "";
        try {
            ArrayList arrayList = new ArrayList();
            if (bundle == null || bundle.isEmpty()) {
                i2 = 1;
            } else {
                String string = bundle.getString("keyword");
                String string2 = bundle.getString("poiType");
                String string3 = bundle.getString(DistrictSearchQuery.KEYWORDS_CITY);
                int i4 = bundle.getInt("size", 10);
                String string4 = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                Bundle bundle2 = new Bundle();
                bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string4);
                bundle2.putString("pendingIntentAction", this.d);
                bundle2.putLong("expiration", -1);
                bundle2.putInt("activatesAction", this.f);
                bundle2.putFloat("geoRadius", 1000.0f);
                String a2 = this.p.a(this.b, "http://restapi.amap.com/v3/place/text?", string, string2, string3, String.valueOf(i4));
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                    str = string4;
                    i2 = 1;
                } else if (a2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    c cVar = this.q;
                    int a3 = c.a(a2, arrayList2, bundle2);
                    if (a3 != 10000) {
                        i3 = c(a3);
                    } else if (arrayList2.isEmpty()) {
                        i2 = 16;
                        str = string4;
                    } else {
                        i3 = a((List<GeoFence>) arrayList2);
                        if (i3 == 0) {
                            arrayList.addAll(arrayList2);
                            i2 = i3;
                            str = string4;
                        }
                    }
                    i2 = i3;
                    str = string4;
                } else {
                    i2 = 4;
                    str = string4;
                }
            }
            Bundle bundle3 = new Bundle();
            bundle3.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle3.putInt(MyLocationStyle.ERROR_CODE, i2);
            bundle3.putParcelableArrayList("resultList", arrayList);
            a(1000, bundle3);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doAddGeoFence_Keyword");
        }
    }

    public synchronized void addDistrictGeoFence(String str, String str2) {
        try {
            e();
            Bundle bundle = new Bundle();
            bundle.putString("keyword", str);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
            a(4, bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "addDistricetGeoFence");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void f(Bundle bundle) {
        int i2;
        String str;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = "";
            if (bundle != null && !bundle.isEmpty()) {
                String string = bundle.getString("keyword");
                str = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                String a2 = this.p.a(this.b, "http://restapi.amap.com/v3/config/district?", string);
                if (!TextUtils.isEmpty(string)) {
                    if (a2 != null) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
                        bundle2.putString("pendingIntentAction", this.d);
                        bundle2.putLong("expiration", -1);
                        bundle2.putInt("activatesAction", this.f);
                        ArrayList arrayList2 = new ArrayList();
                        int c2 = this.q.c(a2, arrayList2, bundle2);
                        if (c2 != 10000) {
                            i2 = c(c2);
                        } else if (arrayList2.isEmpty()) {
                            i2 = 16;
                        } else {
                            i2 = a((List<GeoFence>) arrayList2);
                            if (i2 == 0) {
                                arrayList.addAll(arrayList2);
                            }
                        }
                    } else {
                        i2 = 4;
                    }
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(MyLocationStyle.ERROR_CODE, i2);
                    bundle3.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
                    bundle3.putParcelableArrayList("resultList", arrayList);
                    a(1000, bundle3);
                }
                str2 = str;
            }
            String str3 = str2;
            i2 = 1;
            str = str3;
            Bundle bundle32 = new Bundle();
            bundle32.putInt(MyLocationStyle.ERROR_CODE, i2);
            bundle32.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle32.putParcelableArrayList("resultList", arrayList);
            a(1000, bundle32);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doAddGeoFence_district");
        }
    }

    public synchronized void removeGeoFence() {
        try {
            this.o = false;
            a(10, null, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "removeGeoFence");
        }
        return;
    }

    public boolean removeGeoFence(GeoFence geoFence) {
        try {
            if (this.g == null || this.g.isEmpty()) {
                this.o = false;
                a(10, null, 0);
                return true;
            } else if (!this.g.contains(geoFence)) {
                return false;
            } else {
                if (this.g.size() == 1) {
                    this.o = false;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("fc", geoFence);
                a(11, bundle, 0);
                return true;
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "removeGeoFence(GeoFence)");
            return false;
        }
    }

    public synchronized void setGeoFenceAble(String str, boolean z) {
        try {
            e();
            Bundle bundle = new Bundle();
            bundle.putString("fid", str);
            bundle.putBoolean("ab", z);
            a(12, bundle, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "setGeoFenceAble");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void g(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    String string = bundle.getString("fid");
                    if (!TextUtils.isEmpty(string)) {
                        boolean z2 = bundle.getBoolean("ab", true);
                        if (this.g != null && !this.g.isEmpty()) {
                            Iterator it = this.g.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                GeoFence geoFence = (GeoFence) it.next();
                                if (geoFence.getFenceId().equals(string)) {
                                    geoFence.setAble(z2);
                                    break;
                                }
                            }
                        }
                        if (!z2) {
                            if (this.g != null && !this.g.isEmpty()) {
                                Iterator it2 = this.g.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        if (((GeoFence) it2.next()).isAble()) {
                                            z = false;
                                            break;
                                        }
                                    } else {
                                        z = true;
                                        break;
                                    }
                                }
                            } else {
                                z = true;
                            }
                            if (z) {
                                d();
                                return;
                            }
                            return;
                        }
                        f();
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManager", "doSetGeoFenceAble");
            }
        }
    }

    public List<GeoFence> getAllGeoFence() {
        try {
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            return (ArrayList) this.g.clone();
        } catch (Throwable th) {
            return new ArrayList();
        }
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void h(Bundle bundle) {
        try {
            if (this.g != null) {
                GeoFence geoFence = (GeoFence) bundle.getParcelable("fc");
                if (this.g.contains(geoFence)) {
                    this.g.remove(geoFence);
                }
                if (this.g.size() == 0) {
                    a();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void a() {
        if (this.n) {
            if (this.g != null) {
                this.g.clear();
                this.g = null;
            }
            if (!this.o) {
                try {
                    synchronized (this.i) {
                        if (this.k != null) {
                            this.k.removeCallbacksAndMessages(null);
                        }
                        this.k = null;
                    }
                } catch (Throwable th) {
                    fq.a(th, "GeoFenceManager", "destroyActionHandler");
                }
                try {
                    if (this.r != null) {
                        this.r.stopLocation();
                        this.r.onDestroy();
                    }
                    this.r = null;
                    if (this.l != null) {
                        if (VERSION.SDK_INT >= 18) {
                            this.l.quitSafely();
                        } else {
                            this.l.quit();
                        }
                    }
                    this.l = null;
                    this.p = null;
                    if (this.c != null) {
                        this.c.cancel();
                    }
                    this.c = null;
                    try {
                        synchronized (this.j) {
                            if (this.h != null) {
                                this.h.removeCallbacksAndMessages(null);
                            }
                            this.h = null;
                        }
                    } catch (Throwable th2) {
                        fq.a(th2, "GeoFenceManager", "destroyResultHandler");
                    }
                    if (this.a != null) {
                        this.a.b(this.b);
                    }
                } catch (Throwable th3) {
                }
                this.m = false;
                this.n = false;
            }
        }
    }

    private int b(GeoFence geoFence) {
        try {
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            if (this.g.contains(geoFence)) {
                return 17;
            }
            this.g.add(geoFence);
            return 0;
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "addGeoFence2List");
            a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    private int a(List<GeoFence> list) {
        try {
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            for (GeoFence b2 : list) {
                b(b2);
            }
            return 0;
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "addGeoFenceList");
            a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(int i2, Bundle bundle, long j2) {
        try {
            synchronized (this.i) {
                if (this.k != null) {
                    Message obtainMessage = this.k.obtainMessage();
                    obtainMessage.what = i2;
                    obtainMessage.setData(bundle);
                    this.k.sendMessageDelayed(obtainMessage, j2);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "sendActionHandlerMessage");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(int i2) {
        try {
            synchronized (this.i) {
                if (this.k != null) {
                    this.k.removeMessages(i2);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "removeActionHandlerMessage");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(int i2, Bundle bundle) {
        try {
            synchronized (this.j) {
                if (this.h != null) {
                    Message obtainMessage = this.h.obtainMessage();
                    obtainMessage.what = i2;
                    obtainMessage.setData(bundle);
                    this.h.sendMessage(obtainMessage);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "sendResultHandlerMessage");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void i(Bundle bundle) {
        ArrayList arrayList;
        String str;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    int i2 = bundle.getInt(MyLocationStyle.ERROR_CODE);
                    ArrayList parcelableArrayList = bundle.getParcelableArrayList("resultList");
                    if (parcelableArrayList == null) {
                        arrayList = new ArrayList();
                    } else {
                        arrayList = parcelableArrayList;
                    }
                    String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                    if (string == null) {
                        str = "";
                    } else {
                        str = string;
                    }
                    if (this.e != null) {
                        this.e.onGeoFenceCreateFinished((ArrayList) arrayList.clone(), i2, str);
                    }
                    if (i2 == 0) {
                        f();
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "GeoFenceManager", "resultAddGeoFenceFinished");
            }
        }
    }

    private void f() {
        if (!this.x && this.k != null) {
            boolean z = false;
            if (this.s != null && fy.a(this.s) && fy.b() - this.t < FileTracerConfig.DEF_FLUSH_INTERVAL) {
                z = true;
            }
            if (z) {
                a(6, null, 0);
                a(5, null, 0);
                return;
            }
            a(7);
            a(7, null, 0);
        }
    }

    private static Bundle a(GeoFence geoFence, String str, String str2, int i2, int i3) {
        Bundle bundle = new Bundle();
        String str3 = GeoFence.BUNDLE_KEY_FENCEID;
        if (str == null) {
            str = "";
        }
        bundle.putString(str3, str);
        bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
        bundle.putInt("event", i2);
        bundle.putInt(GeoFence.BUNDLE_KEY_LOCERRORCODE, i3);
        bundle.putParcelable(GeoFence.BUNDLE_KEY_FENCE, geoFence);
        return bundle;
    }

    /* access modifiers changed from: 0000 */
    public final void b(int i2) {
        try {
            if (this.b != null && this.c != null) {
                Intent intent = new Intent();
                intent.putExtras(a(null, null, null, 4, i2));
                this.c.send(this.b, 0, intent);
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "resultRemindLocationError");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(GeoFence geoFence) {
        try {
            if (this.b == null) {
                return;
            }
            if (this.c != null || geoFence.getPendingIntent() != null) {
                Intent intent = new Intent();
                intent.putExtras(a(geoFence, geoFence.getFenceId(), geoFence.getCustomId(), geoFence.getStatus(), 0));
                if (this.d != null) {
                    intent.setAction(this.d);
                }
                intent.setPackage(bp.c(this.b));
                if (geoFence.getPendingIntent() != null) {
                    geoFence.getPendingIntent().send(this.b, 0, intent);
                } else {
                    this.c.send(this.b, 0, intent);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "resultTriggerGeoFence");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void a(AMapLocation aMapLocation) {
        try {
            if (!this.x && this.g != null && !this.g.isEmpty() && aMapLocation != null && aMapLocation.getErrorCode() == 0) {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    GeoFence geoFence = (GeoFence) it.next();
                    if (geoFence.isAble() && b(aMapLocation, geoFence) && a(geoFence, this.f)) {
                        geoFence.setCurrentLocation(aMapLocation);
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("geoFence", geoFence);
                        a(1001, bundle);
                    }
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doCheckFence");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void b() {
        try {
            if (this.r != null) {
                try {
                    if (this.m) {
                        a(8);
                    }
                    if (this.r != null) {
                        this.r.stopLocation();
                    }
                    this.m = false;
                } catch (Throwable th) {
                }
                this.u.setOnceLocation(true);
                this.r.setLocationOption(this.u);
                this.r.startLocation();
            }
        } catch (Throwable th2) {
            fq.a(th2, "GeoFenceManager", "doStartOnceLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void j(Bundle bundle) {
        long j2 = 2000;
        try {
            if (this.r != null) {
                if (bundle != null && !bundle.isEmpty()) {
                    j2 = bundle.getLong("interval", 2000);
                }
                this.u.setOnceLocation(false);
                this.u.setInterval(j2);
                this.r.setLocationOption(this.u);
                if (!this.m) {
                    this.r.stopLocation();
                    this.r.startLocation();
                    this.m = true;
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doStartContinueLocation");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void c() {
        float f2;
        float f3;
        try {
            if (!this.x && fy.a(this.s)) {
                AMapLocation aMapLocation = this.s;
                ArrayList<GeoFence> arrayList = this.g;
                if (aMapLocation != null && aMapLocation.getErrorCode() == 0 && arrayList != null && !arrayList.isEmpty()) {
                    DPoint dPoint = new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude());
                    Iterator it = arrayList.iterator();
                    float f4 = Float.MAX_VALUE;
                    while (true) {
                        if (!it.hasNext()) {
                            f2 = f4;
                            break;
                        }
                        GeoFence geoFence = (GeoFence) it.next();
                        if (geoFence.isAble()) {
                            float a2 = fy.a(dPoint, geoFence.getCenter());
                            if (a2 > geoFence.getMinDis2Center() && a2 < geoFence.getMaxDis2Center()) {
                                f2 = 0.0f;
                                break;
                            }
                            if (a2 > geoFence.getMaxDis2Center()) {
                                f4 = Math.min(f4, a2 - geoFence.getMaxDis2Center());
                            }
                            if (a2 < geoFence.getMinDis2Center()) {
                                f3 = Math.min(f4, geoFence.getMinDis2Center() - a2);
                            } else {
                                f3 = f4;
                            }
                            f4 = f3;
                        }
                    }
                } else {
                    f2 = Float.MAX_VALUE;
                }
                if (f2 == Float.MAX_VALUE) {
                    return;
                }
                if (f2 < 1000.0f) {
                    a(7);
                    Bundle bundle = new Bundle();
                    bundle.putLong("interval", 2000);
                    a(8, bundle, 500);
                } else if (f2 < 5000.0f) {
                    a(7);
                    a(7, null, FileTracerConfig.DEF_FLUSH_INTERVAL);
                } else {
                    a(7);
                    a(7, null, (long) (((f2 - 4000.0f) / 100.0f) * 1000.0f));
                }
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doCheckLocationPolicy");
        }
    }

    private static DPoint b(List<DPoint> list) {
        DPoint dPoint;
        double d2 = 0.0d;
        DPoint dPoint2 = new DPoint();
        if (list != null) {
            try {
                double d3 = 0.0d;
                for (DPoint dPoint3 : list) {
                    d3 += dPoint3.getLatitude();
                    d2 += dPoint3.getLongitude();
                }
                dPoint = new DPoint(fy.c(d3 / ((double) list.size())), fy.c(d2 / ((double) list.size())));
            } catch (Throwable th) {
                fq.a(th, "GeoFenceUtil", "getPolygonCenter");
                return dPoint2;
            }
        } else {
            dPoint = dPoint2;
        }
        return dPoint;
    }

    static float a(DPoint dPoint, List<DPoint> list) {
        float f2 = Float.MAX_VALUE;
        if (dPoint == null || list == null || list.isEmpty()) {
            return Float.MAX_VALUE;
        }
        Iterator it = list.iterator();
        while (true) {
            float f3 = f2;
            if (!it.hasNext()) {
                return f3;
            }
            f2 = Math.min(f3, fy.a(dPoint, (DPoint) it.next()));
        }
    }

    static float b(DPoint dPoint, List<DPoint> list) {
        float f2 = Float.MIN_VALUE;
        if (dPoint == null || list == null || list.isEmpty()) {
            return Float.MIN_VALUE;
        }
        Iterator it = list.iterator();
        while (true) {
            float f3 = f2;
            if (!it.hasNext()) {
                return f3;
            }
            f2 = Math.max(f3, fy.a(dPoint, (DPoint) it.next()));
        }
    }

    private static boolean a(double d2, double d3, double d4, double d5, double d6, double d7) {
        if (Math.abs(((d4 - d2) * (d7 - d3)) - ((d6 - d2) * (d5 - d3))) >= 1.0E-9d || (d2 - d4) * (d2 - d6) > 0.0d || (d3 - d5) * (d3 - d7) > 0.0d) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x019d A[Catch:{ Throwable -> 0x01a7 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(com.amap.api.location.AMapLocation r32, com.amap.api.fence.GeoFence r33) {
        /*
            r29 = 0
            boolean r2 = com.amap.api.col.sl.fy.a(r32)     // Catch:{ Throwable -> 0x01a7 }
            if (r2 == 0) goto L_0x0021
            if (r33 == 0) goto L_0x0021
            java.util.List r2 = r33.getPointList()     // Catch:{ Throwable -> 0x01a7 }
            if (r2 == 0) goto L_0x0021
            java.util.List r2 = r33.getPointList()     // Catch:{ Throwable -> 0x01a7 }
            boolean r2 = r2.isEmpty()     // Catch:{ Throwable -> 0x01a7 }
            if (r2 != 0) goto L_0x0021
            int r2 = r33.getType()     // Catch:{ Throwable -> 0x01a7 }
            switch(r2) {
                case 0: goto L_0x0022;
                case 1: goto L_0x0058;
                case 2: goto L_0x0022;
                case 3: goto L_0x0058;
                default: goto L_0x0021;
            }     // Catch:{ Throwable -> 0x01a7 }
        L_0x0021:
            return r29
        L_0x0022:
            com.amap.api.location.DPoint r3 = r33.getCenter()     // Catch:{ Throwable -> 0x01a7 }
            float r4 = r33.getRadius()     // Catch:{ Throwable -> 0x01a7 }
            r2 = 0
            r5 = 4
            double[] r5 = new double[r5]     // Catch:{ Throwable -> 0x01a7 }
            r6 = 0
            double r8 = r3.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            r5[r6] = r8     // Catch:{ Throwable -> 0x01a7 }
            r6 = 1
            double r8 = r3.getLongitude()     // Catch:{ Throwable -> 0x01a7 }
            r5[r6] = r8     // Catch:{ Throwable -> 0x01a7 }
            r3 = 2
            double r6 = r32.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            r5[r3] = r6     // Catch:{ Throwable -> 0x01a7 }
            r3 = 3
            double r6 = r32.getLongitude()     // Catch:{ Throwable -> 0x01a7 }
            r5[r3] = r6     // Catch:{ Throwable -> 0x01a7 }
            float r3 = com.amap.api.col.sl.fy.a(r5)     // Catch:{ Throwable -> 0x01a7 }
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 > 0) goto L_0x0053
            r2 = 1
        L_0x0053:
            if (r2 == 0) goto L_0x0021
            r29 = 1
            goto L_0x0021
        L_0x0058:
            java.util.List r2 = r33.getPointList()     // Catch:{ Throwable -> 0x01a7 }
            java.util.Iterator r31 = r2.iterator()     // Catch:{ Throwable -> 0x01a7 }
        L_0x0060:
            boolean r2 = r31.hasNext()     // Catch:{ Throwable -> 0x01a7 }
            if (r2 == 0) goto L_0x0021
            java.lang.Object r2 = r31.next()     // Catch:{ Throwable -> 0x01a7 }
            r0 = r2
            java.util.List r0 = (java.util.List) r0     // Catch:{ Throwable -> 0x01a7 }
            r26 = r0
            r28 = 0
            r27 = 0
            double r2 = r32.getLongitude()     // Catch:{ Throwable -> 0x01a7 }
            double r4 = r32.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            double r24 = r32.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            int r6 = r26.size()     // Catch:{ Throwable -> 0x01a7 }
            r7 = 3
            if (r6 >= r7) goto L_0x008d
            r2 = 0
        L_0x0087:
            if (r2 == 0) goto L_0x01b1
            r2 = 1
        L_0x008a:
            r29 = r2
            goto L_0x0060
        L_0x008d:
            r6 = 0
            r0 = r26
            java.lang.Object r6 = r0.get(r6)     // Catch:{ Throwable -> 0x01a7 }
            com.amap.api.location.DPoint r6 = (com.amap.api.location.DPoint) r6     // Catch:{ Throwable -> 0x01a7 }
            int r7 = r26.size()     // Catch:{ Throwable -> 0x01a7 }
            int r7 = r7 + -1
            r0 = r26
            java.lang.Object r7 = r0.get(r7)     // Catch:{ Throwable -> 0x01a7 }
            boolean r6 = r6.equals(r7)     // Catch:{ Throwable -> 0x01a7 }
            if (r6 != 0) goto L_0x00b4
            r6 = 0
            r0 = r26
            java.lang.Object r6 = r0.get(r6)     // Catch:{ Throwable -> 0x01a7 }
            r0 = r26
            r0.add(r6)     // Catch:{ Throwable -> 0x01a7 }
        L_0x00b4:
            r6 = 0
            r30 = r6
        L_0x00b7:
            int r6 = r26.size()     // Catch:{ Throwable -> 0x01a7 }
            int r6 = r6 + -1
            r0 = r30
            if (r0 >= r6) goto L_0x01a0
            r0 = r26
            r1 = r30
            java.lang.Object r6 = r0.get(r1)     // Catch:{ Throwable -> 0x01a7 }
            com.amap.api.location.DPoint r6 = (com.amap.api.location.DPoint) r6     // Catch:{ Throwable -> 0x01a7 }
            double r6 = r6.getLongitude()     // Catch:{ Throwable -> 0x01a7 }
            r0 = r26
            r1 = r30
            java.lang.Object r8 = r0.get(r1)     // Catch:{ Throwable -> 0x01a7 }
            com.amap.api.location.DPoint r8 = (com.amap.api.location.DPoint) r8     // Catch:{ Throwable -> 0x01a7 }
            double r8 = r8.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            int r10 = r30 + 1
            r0 = r26
            java.lang.Object r10 = r0.get(r10)     // Catch:{ Throwable -> 0x01a7 }
            com.amap.api.location.DPoint r10 = (com.amap.api.location.DPoint) r10     // Catch:{ Throwable -> 0x01a7 }
            double r10 = r10.getLongitude()     // Catch:{ Throwable -> 0x01a7 }
            int r12 = r30 + 1
            r0 = r26
            java.lang.Object r12 = r0.get(r12)     // Catch:{ Throwable -> 0x01a7 }
            com.amap.api.location.DPoint r12 = (com.amap.api.location.DPoint) r12     // Catch:{ Throwable -> 0x01a7 }
            double r12 = r12.getLatitude()     // Catch:{ Throwable -> 0x01a7 }
            boolean r14 = a(r2, r4, r6, r8, r10, r12)     // Catch:{ Throwable -> 0x01a7 }
            if (r14 == 0) goto L_0x0101
            r2 = 1
            goto L_0x0087
        L_0x0101:
            double r14 = r12 - r8
            double r14 = java.lang.Math.abs(r14)     // Catch:{ Throwable -> 0x01a7 }
            r16 = 4472406533629990549(0x3e112e0be826d695, double:1.0E-9)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 < 0) goto L_0x01b9
            r22 = 4640537203540230144(0x4066800000000000, double:180.0)
            r14 = r6
            r16 = r8
            r18 = r2
            r20 = r4
            boolean r14 = a(r14, r16, r18, r20, r22, r24)     // Catch:{ Throwable -> 0x01a7 }
            if (r14 == 0) goto L_0x012f
            int r6 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r6 <= 0) goto L_0x01b9
            int r6 = r27 + 1
        L_0x0128:
            int r7 = r30 + 1
            r27 = r6
            r30 = r7
            goto L_0x00b7
        L_0x012f:
            r18 = 4640537203540230144(0x4066800000000000, double:180.0)
            r14 = r2
            r16 = r4
            r20 = r24
            boolean r14 = a(r10, r12, r14, r16, r18, r20)     // Catch:{ Throwable -> 0x01a7 }
            if (r14 == 0) goto L_0x0146
            int r6 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r6 <= 0) goto L_0x01b9
            int r6 = r27 + 1
            goto L_0x0128
        L_0x0146:
            r14 = 0
            double r16 = r10 - r6
            double r18 = r24 - r4
            double r16 = r16 * r18
            double r18 = r12 - r8
            r20 = 4640537203540230144(0x4066800000000000, double:180.0)
            double r20 = r20 - r2
            double r18 = r18 * r20
            double r16 = r16 - r18
            r18 = 0
            int r15 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r15 == 0) goto L_0x01bd
            double r18 = r8 - r4
            r20 = 4640537203540230144(0x4066800000000000, double:180.0)
            double r20 = r20 - r2
            double r18 = r18 * r20
            double r20 = r6 - r2
            double r22 = r24 - r4
            double r20 = r20 * r22
            double r18 = r18 - r20
            double r18 = r18 / r16
            double r20 = r8 - r4
            double r10 = r10 - r6
            double r10 = r10 * r20
            double r6 = r6 - r2
            double r8 = r12 - r8
            double r6 = r6 * r8
            double r6 = r10 - r6
            double r6 = r6 / r16
            r8 = 0
            int r8 = (r18 > r8 ? 1 : (r18 == r8 ? 0 : -1))
            if (r8 < 0) goto L_0x01bd
            r8 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r8 = (r18 > r8 ? 1 : (r18 == r8 ? 0 : -1))
            if (r8 > 0) goto L_0x01bd
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 < 0) goto L_0x01bd
            r8 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 > 0) goto L_0x01bd
            r6 = 1
        L_0x019b:
            if (r6 == 0) goto L_0x01b9
            int r6 = r27 + 1
            goto L_0x0128
        L_0x01a0:
            int r2 = r27 % 2
            if (r2 == 0) goto L_0x01b5
            r2 = 1
            goto L_0x0087
        L_0x01a7:
            r2 = move-exception
            java.lang.String r3 = "Utils"
            java.lang.String r4 = "isInGeoFence"
            com.amap.api.col.sl.fq.a(r2, r3, r4)
            goto L_0x0021
        L_0x01b1:
            r2 = r29
            goto L_0x008a
        L_0x01b5:
            r2 = r28
            goto L_0x0087
        L_0x01b9:
            r6 = r27
            goto L_0x0128
        L_0x01bd:
            r6 = r14
            goto L_0x019b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.a.a(com.amap.api.location.AMapLocation, com.amap.api.fence.GeoFence):boolean");
    }

    private static boolean b(AMapLocation aMapLocation, GeoFence geoFence) {
        Throwable th;
        boolean z = true;
        boolean z2 = false;
        try {
            if (a(aMapLocation, geoFence)) {
                if (geoFence.getEnterTime() == -1) {
                    if (geoFence.getStatus() != 1) {
                        geoFence.setEnterTime(fy.b());
                        geoFence.setStatus(1);
                        return true;
                    }
                } else if (geoFence.getStatus() != 3 && fy.b() - geoFence.getEnterTime() > Access.DefTimeThreshold) {
                    geoFence.setStatus(3);
                    return true;
                }
            } else if (geoFence.getStatus() != 2) {
                try {
                    geoFence.setStatus(2);
                    geoFence.setEnterTime(-1);
                    z2 = true;
                } catch (Throwable th2) {
                    th = th2;
                    fq.a(th, "Utils", "isFenceStatusChanged");
                    return z;
                }
            }
            return z2;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            z = false;
            th = th4;
        }
    }

    private static boolean a(GeoFence geoFence, int i2) {
        boolean z = false;
        if ((i2 & 1) == 1) {
            try {
                if (geoFence.getStatus() == 1) {
                    z = true;
                }
            } catch (Throwable th) {
                fq.a(th, "Utils", "remindStatus");
                return false;
            }
        }
        if ((i2 & 2) == 2 && geoFence.getStatus() == 2) {
            z = true;
        }
        if ((i2 & 4) == 4 && geoFence.getStatus() == 3) {
            return true;
        }
        return z;
    }

    private static int c(int i2) {
        switch (i2) {
            case 1:
            case 4:
            case 5:
            case 7:
            case 16:
            case 17:
                break;
            case 10000:
                i2 = 0;
                break;
            case 10001:
            case 10002:
            case 10007:
            case 10008:
            case 10009:
            case 10012:
            case 10013:
                i2 = 7;
                break;
            case 10003:
            case 10004:
            case 10005:
            case 10006:
            case 10010:
            case 10011:
            case 10014:
            case 10015:
            case 10016:
            case 10017:
                i2 = 4;
                break;
            case BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT /*20000*/:
            case ClientConstants.LOGIN_RET_CODE_USER_ID_NEEDED /*20001*/:
            case ClientConstants.LOGIN_RET_CODE_PASSWORD_NEEDED /*20002*/:
                i2 = 1;
                break;
            case ClientConstants.LOGIN_RET_CODE_PASSTOKEN_NEEDED /*20003*/:
                i2 = 8;
                break;
            default:
                i2 = 8;
                break;
        }
        if (i2 != 0) {
            a("添加围栏失败", i2, "searchErrCode is " + i2, new String[0]);
        }
        return i2;
    }

    static void a(String str, int i2, String str2, String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("===========================================\n");
        stringBuffer.append("              " + str + "                ").append("\n");
        stringBuffer.append("-------------------------------------------\n");
        stringBuffer.append("errorCode:" + i2).append("\n");
        stringBuffer.append("错误信息:" + str2).append("\n");
        if (strArr != null && strArr.length > 0) {
            for (String append : strArr) {
                stringBuffer.append(append).append("\n");
            }
        }
        stringBuffer.append("===========================================\n");
        stringBuffer.toString();
    }

    public synchronized void pauseGeoFence() {
        try {
            e();
            this.x = true;
            a(13, null, 0);
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "pauseGeoFence");
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public final void d() {
        try {
            a(7);
            a(8);
            if (this.r != null) {
                this.r.stopLocation();
            }
            this.m = false;
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "doPauseGeoFence");
        }
    }

    public synchronized void resumeGeoFence() {
        try {
            e();
            if (this.x) {
                this.x = false;
                f();
            }
        } catch (Throwable th) {
            fq.a(th, "GeoFenceManager", "resumeGeoFence");
        }
        return;
    }

    public boolean isPause() {
        return this.x;
    }
}
