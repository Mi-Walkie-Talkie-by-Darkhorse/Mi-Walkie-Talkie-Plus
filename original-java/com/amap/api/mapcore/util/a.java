package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.amap.api.maps.AMap.CancelableCallback;
import com.amap.api.maps.AMap.InfoWindowAdapter;
import com.amap.api.maps.AMap.OnCacheRemoveListener;
import com.amap.api.maps.AMap.OnCameraChangeListener;
import com.amap.api.maps.AMap.OnIndoorBuildingActiveListener;
import com.amap.api.maps.AMap.OnInfoWindowClickListener;
import com.amap.api.maps.AMap.OnMapClickListener;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMapLongClickListener;
import com.amap.api.maps.AMap.OnMapScreenShotListener;
import com.amap.api.maps.AMap.OnMapTouchListener;
import com.amap.api.maps.AMap.OnMarkerClickListener;
import com.amap.api.maps.AMap.OnMarkerDragListener;
import com.amap.api.maps.AMap.OnMultiPointClickListener;
import com.amap.api.maps.AMap.OnMyLocationChangeListener;
import com.amap.api.maps.AMap.OnPOIClickListener;
import com.amap.api.maps.AMap.OnPolylineClickListener;
import com.amap.api.maps.AMap.onMapPrintScreenListener;
import com.amap.api.maps.CameraUpdate;
import com.amap.api.maps.CustomRenderer;
import com.amap.api.maps.InfoWindowAnimationManager;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.Projection;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.AMapCameraInfo;
import com.amap.api.maps.model.AMapGestureListener;
import com.amap.api.maps.model.Arc;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.CrossOverlay;
import com.amap.api.maps.model.CrossOverlayOptions;
import com.amap.api.maps.model.GroundOverlay;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.IndoorBuildingInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MultiPointOverlay;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.MyTrafficStyle;
import com.amap.api.maps.model.NavigateArrow;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.Poi;
import com.amap.api.maps.model.Polygon;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.RouteOverlay;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.amap.api.services.core.AMapException;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.GLMapRender;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.ae.gmap.callback.GLMapCoreCallback;
import com.autonavi.ae.gmap.gesture.EAMapPlatformGestureInfo;
import com.autonavi.ae.gmap.glinterface.MapLabelItem;
import com.autonavi.ae.gmap.gloverlay.BaseMapOverlay;
import com.autonavi.ae.gmap.gloverlay.BaseRouteOverlay;
import com.autonavi.ae.gmap.gloverlay.CrossVectorOverlay;
import com.autonavi.ae.gmap.gloverlay.GLOverlayBundle;
import com.autonavi.ae.gmap.gloverlay.GLTextureProperty;
import com.autonavi.ae.gmap.listener.MapSurfaceListener;
import com.autonavi.ae.gmap.listener.MapWidgetListener;
import com.autonavi.ae.gmap.maploader.NetworkState;
import com.autonavi.ae.gmap.maploader.VMapDataCache;
import com.autonavi.ae.gmap.style.MapTilsCacheAndResManager;
import com.autonavi.ae.gmap.style.StyleItem;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.autonavi.amap.mapcore.AEUtil;
import com.autonavi.amap.mapcore.AMapNativeRenderer;
import com.autonavi.amap.mapcore.CameraUpdateMessage;
import com.autonavi.amap.mapcore.CameraUpdateMessage.Type;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.Rectangle;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.autonavi.amap.mapcore.animation.GLAlphaAnimation;
import com.autonavi.amap.mapcore.interfaces.IAMapListener;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import com.autonavi.amap.mapcore.message.GestureMapMessage;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: AMapDelegateImp */
public class a implements com.amap.api.mapcore.util.db.a, l, GLMapCoreCallback, IAMapListener {
    /* access modifiers changed from: private */
    public OnPOIClickListener A;
    private OnMapLongClickListener B;
    private OnInfoWindowClickListener C;
    /* access modifiers changed from: private */
    public OnIndoorBuildingActiveListener D;
    private OnMyLocationChangeListener E;
    private e F;
    /* access modifiers changed from: private */
    public onMapPrintScreenListener G = null;
    /* access modifiers changed from: private */
    public OnMapScreenShotListener H = null;
    private AMapGestureListener I;
    /* access modifiers changed from: private */
    public af J;
    private ct K = null;
    private UiSettings L;
    private n M;
    /* access modifiers changed from: private */
    public final w N;
    private boolean O = false;
    private final m P;
    /* access modifiers changed from: private */
    public er Q;
    /* access modifiers changed from: private */
    public final v R;
    private final i S;
    private boolean T = true;
    private int U;
    /* access modifiers changed from: private */
    public boolean V = false;
    private int W = 0;
    /* access modifiers changed from: private */
    public MapSurfaceListener X;
    /* access modifiers changed from: private */
    public MapWidgetListener Y;
    /* access modifiers changed from: private */
    public boolean Z = false;
    protected boolean a = false;
    private db aA;
    /* access modifiers changed from: private */
    public GLMapRender aB;
    private h aC;
    private boolean aD = false;
    private float aE = 0.0f;
    private float aF = 1.0f;
    private boolean aG = false;
    private boolean aH = true;
    private boolean aI = false;
    /* access modifiers changed from: private */
    public boolean aJ = false;
    /* access modifiers changed from: private */
    public int aK = 0;
    private GL10 aL = null;
    /* access modifiers changed from: private */
    public volatile boolean aM = false;
    private volatile boolean aN = false;
    private boolean aO = true;
    private boolean aP = false;
    private boolean aQ = false;
    private Lock aR = new ReentrantLock();
    private int aS = 0;
    /* access modifiers changed from: private */
    public int aT;
    /* access modifiers changed from: private */
    public int aU;
    /* access modifiers changed from: private */
    public b aV;
    /* access modifiers changed from: private */
    public cx aW;
    /* access modifiers changed from: private */
    public j aX;
    private ak aY;
    private C0006a aZ = new C0006a() {
        public void run() {
            super.run();
            try {
                a.this.setTrafficEnabled(this.c);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    };
    private boolean aa = false;
    private boolean ab = false;
    private cp ac;
    private LocationSource ad;
    private boolean ae = false;
    private Marker af = null;
    private cg ag = null;
    private boolean ah = false;
    private boolean ai = false;
    private boolean aj = false;
    /* access modifiers changed from: private */
    public boolean ak = false;
    private boolean al = false;
    private boolean am = false;
    private Rect an = new Rect();
    private int ao = 1;
    /* access modifiers changed from: private */
    public MyTrafficStyle ap = null;
    private Thread aq;
    private boolean ar = false;
    /* access modifiers changed from: private */
    public boolean as = false;
    private int at = 0;
    private CustomRenderer au;
    private final r av;
    /* access modifiers changed from: private */
    public int aw = -1;
    private int ax = -1;
    private List<s> ay = new ArrayList();
    private cz az;
    protected final q b;
    private C0006a ba = new C0006a() {
        public void run() {
            super.run();
            a.this.a(this.g, this.c);
        }
    };
    private C0006a bb = new C0006a() {
        public void run() {
            super.run();
            try {
                a.this.setCenterToPixel(a.this.aT, a.this.aU);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    };
    private C0006a bc = new C0006a() {
        public void run() {
            super.run();
            a.this.b(this.g, this.d, this.e, this.f);
        }
    };
    private C0006a bd = new C0006a() {
        public void run() {
            super.run();
            a.this.setMapCustomEnable(this.c);
        }
    };
    private C0006a be = new C0006a() {
        public void run() {
            super.run();
            a.this.b(this.g, this.c);
        }
    };
    private C0006a bf = new C0006a() {
        public void run() {
            super.run();
            a.this.c(this.g, this.c);
        }
    };
    private C0006a bg = new C0006a() {
        public void run() {
            super.run();
            try {
                a.this.setMapTextEnable(this.c);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    };
    private C0006a bh = new C0006a() {
        public void run() {
            super.run();
            a.this.e(this.g, this.c);
        }
    };
    private C0006a bi = new C0006a() {
        public void run() {
            super.run();
            a.this.f(this.g, this.c);
        }
    };
    private C0006a bj = new C0006a() {
        public void run() {
            super.run();
            a.this.d(this.g, this.c);
        }
    };
    private C0006a bk = new C0006a() {
        public void run() {
            super.run();
            try {
                a.this.setIndoorEnabled(this.c);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    };
    private Runnable bl = new Runnable() {
        public void run() {
            if (a.this.Q != null) {
                et h = a.this.Q.h();
                if (h != null) {
                    h.d();
                }
            }
        }
    };
    private C0006a bm = new C0006a() {
        public void run() {
            super.run();
            a.this.g(this.g, this.c);
        }
    };
    private EAMapPlatformGestureInfo bn = new EAMapPlatformGestureInfo();
    /* access modifiers changed from: private */
    public ad bo = null;
    private IPoint[] bp = null;
    protected MapConfig c = new MapConfig(true);
    protected ad d;
    protected Context e;
    protected GLMapEngine f;
    public int g;
    public int h;
    protected final Handler i = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            boolean z = true;
            if (message != null && !a.this.V) {
                try {
                    switch (message.what) {
                        case 2:
                            StringBuilder sb = new StringBuilder();
                            sb.append("Key验证失败：[");
                            if (message.obj != null) {
                                sb.append(message.obj);
                            } else {
                                sb.append(fp.b);
                            }
                            sb.append("]");
                            Log.w("amapsdk", sb.toString());
                            return;
                        case 10:
                            CameraPosition cameraPosition = (CameraPosition) message.obj;
                            if (cameraPosition != null && a.this.x != null) {
                                a.this.x.onCameraChange(cameraPosition);
                                return;
                            }
                            return;
                        case 11:
                            try {
                                CameraPosition cameraPosition2 = a.this.getCameraPosition();
                                if (!(cameraPosition2 == null || a.this.Q == null)) {
                                    a.this.Q.a(cameraPosition2);
                                }
                                a.this.a(cameraPosition2);
                                if (a.this.aJ) {
                                    a.this.aJ = false;
                                    if (a.this.R != null) {
                                        a.this.R.b(false);
                                    }
                                    a.this.g(true);
                                }
                                if (a.this.ak) {
                                    a.this.j();
                                    a.this.ak = false;
                                }
                                a.this.a(true, cameraPosition2);
                                return;
                            } catch (Throwable th) {
                                gf.b(th, "AMapDelegateImp", "CameraUpdateFinish");
                                return;
                            }
                        case 12:
                            if (a.this.Q != null) {
                                a.this.Q.a(a.this.g());
                                return;
                            }
                            return;
                        case 13:
                            if (a.this.Q != null) {
                                eo g = a.this.Q.g();
                                if (g != null) {
                                    g.b();
                                    return;
                                }
                                return;
                            }
                            return;
                        case 14:
                            try {
                                if (a.this.z != null) {
                                    a.this.z.onTouch((MotionEvent) message.obj);
                                    return;
                                }
                                return;
                            } catch (Throwable th2) {
                                gf.b(th2, "AMapDelegateImp", "onTouchHandler");
                                ThrowableExtension.printStackTrace(th2);
                                return;
                            }
                        case 15:
                            Bitmap bitmap = (Bitmap) message.obj;
                            int i = message.arg1;
                            if (bitmap == null || a.this.Q == null) {
                                if (a.this.G != null) {
                                    a.this.G.onMapPrint(null);
                                }
                                if (a.this.H != null) {
                                    a.this.H.onMapScreenShot(null);
                                    a.this.H.onMapScreenShot(null, i);
                                }
                            } else {
                                Canvas canvas = new Canvas(bitmap);
                                et h = a.this.Q.h();
                                if (h != null) {
                                    h.onDraw(canvas);
                                }
                                a.this.Q.a(canvas);
                                if (a.this.G != null) {
                                    a.this.G.onMapPrint(new BitmapDrawable(a.this.e.getResources(), bitmap));
                                }
                                if (a.this.H != null) {
                                    a.this.H.onMapScreenShot(bitmap);
                                    a.this.H.onMapScreenShot(bitmap, i);
                                }
                            }
                            a.this.G = null;
                            a.this.H = null;
                            return;
                        case 16:
                            if (a.this.w != null) {
                                a.this.w.onMapLoaded();
                                return;
                            }
                            return;
                        case 17:
                            if (a.this.f.isInMapAnimation(1) && a.this.R != null) {
                                a.this.R.b(false);
                            }
                            if (a.this.R != null) {
                                v i2 = a.this.R;
                                if (message.arg1 == 0) {
                                    z = false;
                                }
                                i2.a(z);
                                return;
                            }
                            return;
                        case 18:
                            if (a.this.J != null) {
                                a.this.J.d();
                                return;
                            }
                            return;
                        case 19:
                            if (a.this.y != null) {
                                DPoint obtain = DPoint.obtain();
                                a.this.b(message.arg1, message.arg2, obtain);
                                try {
                                    a.this.y.onMapClick(new LatLng(obtain.y, obtain.x));
                                    obtain.recycle();
                                    return;
                                } catch (Throwable th3) {
                                    gf.b(th3, "AMapDelegateImp", "OnMapClickListener.onMapClick");
                                    ThrowableExtension.printStackTrace(th3);
                                    return;
                                }
                            } else {
                                return;
                            }
                        case 20:
                            try {
                                a.this.A.onPOIClick((Poi) message.obj);
                                return;
                            } catch (Throwable th4) {
                                gf.b(th4, "AMapDelegateImp", "OnPOIClickListener.onPOIClick");
                                ThrowableExtension.printStackTrace(th4);
                                return;
                            }
                        default:
                            return;
                    }
                } catch (Throwable th5) {
                    gf.b(th5, "AMapDelegateImp", "handleMessage");
                    ThrowableExtension.printStackTrace(th5);
                }
                gf.b(th5, "AMapDelegateImp", "handleMessage");
                ThrowableExtension.printStackTrace(th5);
            }
        }
    };
    Point j = new Point();
    Rect k = new Rect();
    protected String l = null;
    float[] m = new float[16];
    float[] n = new float[16];
    float[] o = new float[16];
    float[] p = new float[12];
    String q = "precision highp float;\nattribute vec3 aVertex;//顶点数组,三维坐标\nuniform mat4 aMVPMatrix;//mvp矩阵\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}";
    String r = "//有颜色 没有纹理\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(1.0,0,0,1.0);\n}";
    int s = -1;
    private OnMarkerClickListener t;
    private OnPolylineClickListener u;
    private OnMarkerDragListener v;
    /* access modifiers changed from: private */
    public OnMapLoadedListener w;
    /* access modifiers changed from: private */
    public OnCameraChangeListener x;
    /* access modifiers changed from: private */
    public OnMapClickListener y;
    /* access modifiers changed from: private */
    public OnMapTouchListener z;

    /* renamed from: com.amap.api.mapcore.util.a$a reason: collision with other inner class name */
    /* compiled from: AMapDelegateImp */
    private static abstract class C0006a implements Runnable {
        boolean b;
        boolean c;
        int d;
        int e;
        int f;
        int g;

        private C0006a() {
            this.b = false;
            this.c = false;
        }

        public void run() {
            this.b = false;
        }
    }

    /* compiled from: AMapDelegateImp */
    class b {
        b() {
        }

        public void a(ad adVar) {
            if (a.this.c.isIndoorEnable()) {
                final ep e = a.this.Q.e();
                if (adVar == null) {
                    try {
                        if (a.this.D != null) {
                            a.this.D.OnIndoorBuilding(adVar);
                        }
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                    if (a.this.d != null) {
                        a.this.d.g = null;
                    }
                    if (e.d()) {
                        a.this.i.post(new Runnable() {
                            public void run() {
                                e.a(false);
                            }
                        });
                    }
                    a.this.c.maxZoomLevel = a.this.c.isSetLimitZoomLevel() ? a.this.c.getMaxZoomLevel() : 19.0f;
                    try {
                        if (a.this.N.isZoomControlsEnabled()) {
                            a.this.Y.invalidateZoomController(a.this.c.getS_z());
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        ThrowableExtension.printStackTrace(th2);
                    }
                }
                if (a.this.d == null || !a.this.d.poiid.equals(adVar.poiid) || !e.d()) {
                    if (a.this.d == null || !a.this.d.poiid.equals(adVar.poiid) || a.this.d.g == null) {
                        a.this.d = adVar;
                        if (a.this.f != null) {
                            a.this.d.g = a.this.f.getMapCenter(1);
                        }
                    }
                    try {
                        if (a.this.D != null) {
                            a.this.D.OnIndoorBuilding(adVar);
                        }
                        a.this.c.maxZoomLevel = a.this.c.isSetLimitZoomLevel() ? a.this.c.getMaxZoomLevel() : 20.0f;
                        if (a.this.N.isZoomControlsEnabled()) {
                            a.this.Y.invalidateZoomController(a.this.c.getS_z());
                        }
                        if (a.this.N.isIndoorSwitchEnabled()) {
                            if (!e.d()) {
                                a.this.N.setIndoorSwitchEnabled(true);
                            }
                            a.this.i.post(new Runnable() {
                                public void run() {
                                    try {
                                        e.a(a.this.d.floor_names);
                                        e.a(a.this.d.activeFloorName);
                                        if (!e.d()) {
                                            e.a(true);
                                        }
                                    } catch (Throwable th) {
                                        ThrowableExtension.printStackTrace(th);
                                    }
                                }
                            });
                        } else if (!a.this.N.isIndoorSwitchEnabled() && e.d()) {
                            a.this.N.setIndoorSwitchEnabled(false);
                        }
                    } catch (Throwable th3) {
                        ThrowableExtension.printStackTrace(th3);
                    }
                }
            }
        }
    }

    /* compiled from: AMapDelegateImp */
    private class c implements com.amap.api.mapcore.util.ep.a {
        private c() {
        }

        public void a(int i) {
            if (a.this.d != null) {
                a.this.d.activeFloorIndex = a.this.d.floor_indexs[i];
                a.this.d.activeFloorName = a.this.d.floor_names[i];
                try {
                    a.this.setIndoorBuildingInfo(a.this.d);
                } catch (RemoteException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        }
    }

    /* compiled from: AMapDelegateImp */
    private class d implements Runnable {
        private Context b;
        private OnCacheRemoveListener c;

        public d(Context context, OnCacheRemoveListener onCacheRemoveListener) {
            this.b = context;
            this.c = onCacheRemoveListener;
        }

        /* JADX WARNING: Removed duplicated region for block: B:43:0x0095 A[Catch:{ Throwable -> 0x00ad }] */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x00a7 A[Catch:{ Throwable -> 0x00ad }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r9 = this;
                r1 = 1
                r7 = 0
                android.content.Context r0 = r9.b     // Catch:{ Throwable -> 0x0060 }
                android.content.Context r0 = r0.getApplicationContext()     // Catch:{ Throwable -> 0x0060 }
                java.lang.String r2 = com.amap.api.mapcore.util.ee.b(r0)     // Catch:{ Throwable -> 0x0060 }
                java.lang.String r0 = com.amap.api.mapcore.util.ee.a(r0)     // Catch:{ Throwable -> 0x0060 }
                java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x0060 }
                r3.<init>(r2)     // Catch:{ Throwable -> 0x0060 }
                boolean r2 = com.autonavi.amap.mapcore.FileUtil.deleteFile(r3)     // Catch:{ Throwable -> 0x0060 }
                if (r2 == 0) goto L_0x0059
                r2 = r1
            L_0x001c:
                if (r2 == 0) goto L_0x002a
                java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x00ba, all -> 0x00b2 }
                r3.<init>(r0)     // Catch:{ Throwable -> 0x00ba, all -> 0x00b2 }
                boolean r0 = com.autonavi.amap.mapcore.FileUtil.deleteFile(r3)     // Catch:{ Throwable -> 0x00ba, all -> 0x00b2 }
                if (r0 == 0) goto L_0x002a
                r7 = r1
            L_0x002a:
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x00bd, all -> 0x00b6 }
                com.amap.api.mapcore.util.v r0 = r0.R     // Catch:{ Throwable -> 0x00bd, all -> 0x00b6 }
                if (r0 == 0) goto L_0x003b
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x00bd, all -> 0x00b6 }
                com.amap.api.mapcore.util.v r0 = r0.R     // Catch:{ Throwable -> 0x00bd, all -> 0x00b6 }
                r0.h()     // Catch:{ Throwable -> 0x00bd, all -> 0x00b6 }
            L_0x003b:
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x005b }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x005b }
                if (r0 == 0) goto L_0x004f
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x005b }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x005b }
                r1 = 1
                r2 = 2601(0xa29, float:3.645E-42)
                r3 = 1
                r4 = 0
                r5 = 0
                r6 = 0
                r0.setParamater(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x005b }
            L_0x004f:
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x005b }
                if (r0 == 0) goto L_0x0058
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x005b }
                r0.onRemoveCacheFinish(r7)     // Catch:{ Throwable -> 0x005b }
            L_0x0058:
                return
            L_0x0059:
                r2 = r7
                goto L_0x001c
            L_0x005b:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x0058
            L_0x0060:
                r0 = move-exception
            L_0x0061:
                java.lang.String r2 = "AMapDelegateImp"
                java.lang.String r3 = "RemoveCacheRunnable"
                com.amap.api.mapcore.util.gf.b(r0, r2, r3)     // Catch:{ all -> 0x008c }
                r7 = 0
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0087 }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x0087 }
                if (r0 == 0) goto L_0x007d
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0087 }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x0087 }
                r1 = 1
                r2 = 2601(0xa29, float:3.645E-42)
                r3 = 1
                r4 = 0
                r5 = 0
                r6 = 0
                r0.setParamater(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x0087 }
            L_0x007d:
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x0087 }
                if (r0 == 0) goto L_0x0058
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x0087 }
                r0.onRemoveCacheFinish(r7)     // Catch:{ Throwable -> 0x0087 }
                goto L_0x0058
            L_0x0087:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x0058
            L_0x008c:
                r0 = move-exception
                r7 = r0
                r8 = r1
            L_0x008f:
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x00ad }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x00ad }
                if (r0 == 0) goto L_0x00a3
                com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x00ad }
                com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x00ad }
                r1 = 1
                r2 = 2601(0xa29, float:3.645E-42)
                r3 = 1
                r4 = 0
                r5 = 0
                r6 = 0
                r0.setParamater(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x00ad }
            L_0x00a3:
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x00ad }
                if (r0 == 0) goto L_0x00ac
                com.amap.api.maps.AMap$OnCacheRemoveListener r0 = r9.c     // Catch:{ Throwable -> 0x00ad }
                r0.onRemoveCacheFinish(r8)     // Catch:{ Throwable -> 0x00ad }
            L_0x00ac:
                throw r7
            L_0x00ad:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x00ac
            L_0x00b2:
                r0 = move-exception
                r7 = r0
                r8 = r2
                goto L_0x008f
            L_0x00b6:
                r0 = move-exception
                r8 = r7
                r7 = r0
                goto L_0x008f
            L_0x00ba:
                r0 = move-exception
                r1 = r2
                goto L_0x0061
            L_0x00bd:
                r0 = move-exception
                r1 = r7
                goto L_0x0061
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.a.d.run():void");
        }

        public boolean equals(Object obj) {
            return obj instanceof d;
        }
    }

    public void a(MapWidgetListener mapWidgetListener) {
        this.Y = mapWidgetListener;
    }

    /* access modifiers changed from: private */
    public void a(CameraPosition cameraPosition) {
        if (this.c.getMapLanguage().equals("en")) {
            boolean b2 = b(cameraPosition);
            if (b2 != this.am) {
                this.am = b2;
                d(1, this.am);
            }
        } else if (!this.am) {
            this.am = true;
            d(1, this.am);
        }
    }

    private boolean b(CameraPosition cameraPosition) {
        boolean z2 = true;
        if (cameraPosition.zoom < 7.0f) {
            return false;
        }
        if (!cameraPosition.isAbroad) {
            if (this.c != null) {
                try {
                    if (dy.a(this.c.getGeoRectangle().getClipRect())) {
                        z2 = false;
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                    z2 = false;
                }
            } else {
                z2 = false;
            }
        }
        return z2;
    }

    public void setVisibilityEx(int i2) {
        if (this.P != null) {
            try {
                this.P.setVisibility(i2);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void onActivityPause() {
        this.Z = true;
        q(this.U);
    }

    public void onActivityResume() {
        this.Z = false;
        int i2 = this.U;
        if (i2 == 0) {
            i2 = this.f.getEngineIDWithType(0);
        }
        r(i2);
    }

    public void queueEvent(Runnable runnable) {
        this.P.queueEvent(runnable);
    }

    public a(m mVar, Context context, AttributeSet attributeSet) {
        this.e = context;
        AEUtil.init(this.e);
        dw.a().a(this.e);
        g.b = fo.c(context);
        di.a(this.e);
        this.aC = new h(this);
        this.f = new GLMapEngine(this.e, this);
        this.aB = new GLMapRender(this);
        this.P = mVar;
        mVar.setRenderer(this.aB);
        this.U = a(0, new Rect(0, 0, this.g, this.h), this.g, this.h);
        this.N = new w(this);
        this.Q = new er(this.e, this);
        this.Q.e().a((com.amap.api.mapcore.util.ep.a) new c());
        this.aV = new b();
        this.S = new i(this);
        this.R = new v(this.e, this);
        this.b = new q(this.e, this);
        this.f.setMapCoreListener(this);
        this.P.setRenderMode(0);
        this.aG = false;
        this.aB.setRenderFps(15.0f);
        this.f.setMapListener(this);
        this.M = new t(this);
        this.F = new e(this);
        this.K = new ct(this, context);
        this.J = new af(this.e);
        this.J.a((ae) this.Q);
        this.J.b((ae) this.K);
        this.av = new r();
        this.aq = new f(this.e, this);
        this.ad = new ag(this.e);
        this.aY = new ak(this);
        this.aW = new cx();
        this.aX = new j();
        this.az = new cz(this.e, this);
        this.aA = new db(this.e);
        this.aA.a((com.amap.api.mapcore.util.db.a) this);
    }

    public GLMapEngine a() {
        return this.f;
    }

    public void a(int i2, int i3) {
        if (this.aS == 0 || i3 != 5) {
            this.aS = i3;
        }
    }

    public void a(final int i2, final boolean z2) {
        if (c(i2, 2) != z2) {
            if (!this.aM || !this.aN || !this.a) {
                this.ba.c = z2;
                this.ba.b = true;
                this.ba.g = i2;
                return;
            }
            queueEvent(new Runnable() {
                public void run() {
                    int i = 0;
                    try {
                        a.this.b(i2, 2, z2);
                        if (!z2) {
                            i = 1;
                        }
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SETTRAFFICTEXTURE, i, 0, 0, 0);
                        a.this.resetRenderTimeLong();
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            });
        }
    }

    public float a(int i2) {
        if (this.aM) {
            return this.f.getMapZoomer(i2);
        }
        return 0.0f;
    }

    public float b(int i2) {
        if (this.aM) {
            return this.f.getMapZoomer(i2);
        }
        if (this.c != null) {
            return getMapConfig().getS_z();
        }
        return 0.0f;
    }

    public boolean a(int i2, int i3, int i4) {
        CameraUpdateMessage a2;
        if (!this.aM || ((int) b(i2)) >= this.f.getMaxZoomLevel(i2)) {
            return false;
        }
        try {
            if (this.aa) {
                a2 = aa.a(1.0f, (Point) null);
            } else if (!this.N.isZoomInByScreenCenter()) {
                this.j.x = i3;
                this.j.y = i4;
                a2 = aa.a(1.0f, this.j);
            } else {
                a2 = aa.a(1.0f, (Point) null);
            }
            b(a2);
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "onDoubleTap");
            ThrowableExtension.printStackTrace(th);
        }
        resetRenderTime();
        return true;
    }

    public void c(int i2) {
        if (this.aM && ((int) b(i2)) > this.f.getMinZoomLevel(i2)) {
            try {
                b(aa.b());
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "onDoubleTap");
                ThrowableExtension.printStackTrace(th);
            }
            resetRenderTime();
        }
    }

    public boolean d(int i2) {
        return false;
    }

    public boolean e(int i2) {
        return c(i2, 6);
    }

    private void u(final int i2) {
        if (this.aM) {
            this.aC.a();
            this.aD = true;
            this.aI = true;
            try {
                stopAnimation();
            } catch (RemoteException e2) {
            }
            queueEvent(new Runnable() {
                public void run() {
                    try {
                        a.this.f.clearAllMessages(i2);
                        a.this.f.setParamater(i2, 4001, 1, 0, 0, 0);
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            });
        }
    }

    private void v(final int i2) {
        this.aD = true;
        this.aI = false;
        if (this.ai) {
            this.ai = false;
        }
        if (this.ah) {
            this.ah = false;
        }
        if (this.aj) {
            this.aj = false;
        }
        this.ae = false;
        if (!(this.v == null || this.af == null)) {
            try {
                this.v.onMarkerDragEnd(this.af);
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "OnMarkerDragListener.onMarkerDragEnd");
                ThrowableExtension.printStackTrace(th);
            }
            this.af = null;
        }
        queueEvent(new Runnable() {
            public void run() {
                try {
                    a.this.f.setParamater(i2, 4001, 0, 0, 0, 0);
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
        this.P.postDelayed(new Runnable() {
            public void run() {
                a.this.aK = 1;
            }
        }, 300);
    }

    private void a(MotionEvent motionEvent) throws RemoteException {
        if (this.ae && this.af != null && this.ag != null) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) (motionEvent.getY() - 60.0f);
            LatLng b2 = this.ag.b();
            LatLng position = this.ag.getPosition();
            DPoint obtain = DPoint.obtain();
            b(x2, y2, obtain);
            LatLng latLng = new LatLng((position.latitude + obtain.y) - b2.latitude, (position.longitude + obtain.x) - b2.longitude);
            obtain.recycle();
            this.af.setPosition(latLng);
            if (this.v != null) {
                this.v.onMarkerDrag(this.af);
            }
        }
    }

    public void b() {
        if (this.R != null) {
            this.R.h();
        }
    }

    public GLMapState c() {
        if (this.f != null) {
            return this.f.getMapState(1);
        }
        return null;
    }

    public int d() {
        if (this.aX != null) {
            return this.aX.a();
        }
        return 0;
    }

    public int f(int i2) {
        if (this.aX != null) {
            return this.aX.a(i2);
        }
        return 0;
    }

    public int e() {
        if (this.aX != null) {
            return this.aX.b();
        }
        return 0;
    }

    public void a(Location location) throws RemoteException {
        if (location != null) {
            try {
                if (!this.T || this.ad == null) {
                    if (this.ac != null) {
                        this.ac.b();
                    }
                    this.ac = null;
                    return;
                }
                if (this.ac == null && this.ac == null) {
                    this.ac = new cp(this, this.e);
                }
                if (!(location.getLongitude() == 0.0d || location.getLatitude() == 0.0d)) {
                    this.ac.a(location);
                }
                if (this.E != null) {
                    this.E.onMyLocationChange(location);
                }
                resetRenderTime();
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "showMyLocationOverlay");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public boolean a(String str) throws RemoteException {
        resetRenderTime();
        return this.S.d(str);
    }

    public void f() {
        this.S.c();
    }

    public void a(double d2, double d3, IPoint iPoint) {
        GLMapState.lonlat2Geo(d3, d2, iPoint);
    }

    public void a(int i2, int i3, FPoint fPoint) {
        if (this.f != null) {
            this.f.p20ToMapPoint(1, i3, i2, fPoint);
        }
    }

    public void a(int i2, int i3, DPoint dPoint) {
        GLMapState.geo2LonLat(i2, i3, dPoint);
    }

    public float g() {
        return b(this.U);
    }

    public o h() {
        return this.N;
    }

    public void a(cg cgVar) throws RemoteException {
        if (cgVar != null && this.J != null) {
            try {
                this.J.a(cgVar);
            } catch (RemoteException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void i() {
        if (this.J != null) {
            this.J.f();
        }
    }

    public void a(double d2, double d3, FPoint fPoint) {
        if (this.aM && this.f != null) {
            Point LatLongToPixels = VirtualEarthProjection.LatLongToPixels(d2, d3, 20);
            this.f.p20ToMapPoint(1, LatLongToPixels.x, LatLongToPixels.y, fPoint);
        }
    }

    public void b(int i2, int i3, DPoint dPoint) {
        if (this.aM && this.f != null) {
            Point point = new Point();
            this.f.screenToP20Point(1, (float) i2, (float) i3, point);
            DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) point.x, (long) point.y, 20);
            dPoint.x = PixelsToLatLong.x;
            dPoint.y = PixelsToLatLong.y;
            PixelsToLatLong.recycle();
        }
    }

    /* access modifiers changed from: protected */
    public void a(GLMapState gLMapState, int i2, int i3, DPoint dPoint) {
        if (this.aM && this.f != null) {
            Point point = new Point();
            gLMapState.screenToP20Point((float) i2, (float) i3, point);
            DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) point.x, (long) point.y, 20);
            dPoint.x = PixelsToLatLong.x;
            dPoint.y = PixelsToLatLong.y;
            PixelsToLatLong.recycle();
        }
    }

    public void b(double d2, double d3, IPoint iPoint) {
        if (this.aM && this.f != null) {
            try {
                Point LatLongToPixels = VirtualEarthProjection.LatLongToPixels(d2, d3, 20);
                FPoint obtain = FPoint.obtain();
                this.f.p20ToScreenPoint(1, LatLongToPixels.x, LatLongToPixels.y, obtain);
                if (obtain.x == -10000.0f && obtain.y == -10000.0f) {
                    GLMapState newMapState = this.f.getNewMapState(1);
                    newMapState.setCameraDegree(0.0f);
                    newMapState.recalculate();
                    newMapState.p20ToScreenPoint(LatLongToPixels.x, LatLongToPixels.y, obtain);
                    newMapState.recycle();
                }
                iPoint.x = (int) obtain.x;
                iPoint.y = (int) obtain.y;
                obtain.recycle();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void a(int i2, int i3, IPoint iPoint) {
        if (this.aM && this.f != null) {
            this.f.screenToP20Point(1, (float) i2, (float) i3, iPoint);
        }
    }

    public void a(int i2, int i3, PointF pointF) {
        if (this.aM && this.f != null) {
            this.f.p20ToScreenPoint(1, i2, i3, pointF);
        }
    }

    public void j() {
        if (this.aM) {
            this.i.sendEmptyMessage(18);
        }
    }

    public void a(boolean z2) {
        if (!this.V && this.Q != null) {
            this.Q.b(z2);
        }
    }

    public void b(boolean z2) {
        if (!this.V && this.Q != null) {
            this.Q.a(z2);
        }
    }

    public void c(boolean z2) {
        if (!this.V && this.Q != null) {
            this.Q.c(z2);
        }
    }

    public void d(boolean z2) {
        if (!this.V && this.Q != null) {
            this.Q.d(z2);
        }
    }

    public void e(boolean z2) {
        if (!this.V && this.Q != null) {
            this.Q.e(z2);
        }
    }

    public void g(int i2) {
        if (!this.V && this.Q != null) {
            this.Q.a(i2);
        }
    }

    public LatLngBounds a(LatLng latLng, float f2, float f3, float f4) {
        int mapWidth = getMapWidth();
        int mapHeight = getMapHeight();
        if (mapWidth <= 0 || mapHeight <= 0 || this.V) {
            return null;
        }
        float a2 = ee.a(this.c, f2);
        GLMapState gLMapState = new GLMapState(1, this.f.getMapEnginePtr());
        if (latLng != null) {
            IPoint obtain = IPoint.obtain();
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, obtain);
            gLMapState.setCameraDegree(0.0f);
            gLMapState.setMapAngle(0.0f);
            gLMapState.setMapGeoCenter(obtain.x, obtain.y);
            gLMapState.setMapZoomer(a2);
            gLMapState.recalculate();
            obtain.recycle();
        }
        DPoint obtain2 = DPoint.obtain();
        a(gLMapState, 0, 0, obtain2);
        LatLng latLng2 = new LatLng(obtain2.y, obtain2.x, false);
        a(gLMapState, mapWidth, mapHeight, obtain2);
        LatLng latLng3 = new LatLng(obtain2.y, obtain2.x, false);
        obtain2.recycle();
        gLMapState.recycle();
        return LatLngBounds.builder().include(latLng3).include(latLng2).build();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Z || !this.aM || !this.aH) {
            return false;
        }
        this.bn.mGestureState = 3;
        this.bn.mGestureType = 8;
        float[] fArr = {motionEvent.getX(), motionEvent.getY()};
        this.bn.mLocation = fArr;
        int a2 = a(this.bn);
        p();
        switch (motionEvent.getAction() & 255) {
            case 0:
                q();
                u(a2);
                break;
            case 1:
                v(a2);
                break;
        }
        if (motionEvent.getAction() != 2 || !this.ae) {
            if (this.aD) {
                try {
                    this.aC.a(motionEvent);
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
            if (this.z == null) {
                return true;
            }
            this.i.removeMessages(14);
            Message obtainMessage = this.i.obtainMessage();
            obtainMessage.what = 14;
            obtainMessage.obj = MotionEvent.obtain(motionEvent);
            obtainMessage.sendToTarget();
            return true;
        }
        try {
            a(motionEvent);
            return true;
        } catch (Throwable th2) {
            gf.b(th2, "AMapDelegateImp", "onDragMarker");
            ThrowableExtension.printStackTrace(th2);
            return true;
        }
    }

    public void b(int i2, int i3, PointF pointF) {
        if (this.aM && !this.Z && this.f != null) {
            this.f.screenToMapGPoint(1, (float) i2, (float) i3, pointF);
        }
    }

    public void a(float f2, float f3, IPoint iPoint) {
        if (this.aM && !this.Z && this.f != null) {
            this.f.mapToP20Point(1, f2, f3, iPoint);
        }
    }

    public float h(int i2) {
        if (!this.aM || this.Z || this.f == null) {
            return 0.0f;
        }
        return this.f.getMapState(1).getGLUnitWithWin(i2);
    }

    public CameraPosition f(boolean z2) {
        LatLng w2;
        try {
            if (this.c == null) {
                return null;
            }
            if (!this.aM || this.Z || this.f == null) {
                DPoint obtain = DPoint.obtain();
                a(this.c.getS_x(), this.c.getS_y(), obtain);
                LatLng latLng = new LatLng(obtain.y, obtain.x);
                obtain.recycle();
                return CameraPosition.builder().target(latLng).bearing(this.c.getS_r()).tilt(this.c.getS_c()).zoom(this.c.getS_z()).build();
            }
            if (z2) {
                DPoint obtain2 = DPoint.obtain();
                b(this.c.getAnchorX(), this.c.getAnchorY(), obtain2);
                w2 = new LatLng(obtain2.y, obtain2.x, false);
                obtain2.recycle();
            } else {
                w2 = w();
            }
            return CameraPosition.builder().target(w2).bearing(this.c.getS_r()).tilt(this.c.getS_c()).zoom(this.c.getS_z()).build();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private LatLng w() {
        if (this.c == null) {
            return null;
        }
        DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) this.c.getS_x(), (long) this.c.getS_y(), 20);
        LatLng latLng = new LatLng(PixelsToLatLong.y, PixelsToLatLong.x, false);
        PixelsToLatLong.recycle();
        return latLng;
    }

    public Point k() {
        if (this.Q != null) {
            return this.Q.c();
        }
        return new Point();
    }

    public View l() {
        if (this.P instanceof View) {
            return (View) this.P;
        }
        return null;
    }

    public boolean m() {
        if (!(this.f == null || this.f.getMapZoomer(1) < 17.0f || this.d == null || this.d.g == null)) {
            FPoint obtain = FPoint.obtain();
            a(this.d.g.x, this.d.g.y, (PointF) obtain);
            if (this.an.contains((int) obtain.x, (int) obtain.y)) {
                return true;
            }
        }
        return false;
    }

    private synchronized void x() {
        synchronized (this.ay) {
            int size = this.ay.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((s) this.ay.get(i2)).e().recycle();
            }
            this.ay.clear();
        }
    }

    public void a(s sVar) {
        if (sVar != null && sVar.f() != 0) {
            synchronized (this.ay) {
                this.ay.add(sVar);
            }
        }
    }

    public void b(String str) {
        int i2;
        synchronized (this.ay) {
            int size = this.ay.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i2 = -1;
                    break;
                } else if (((s) this.ay.get(i3)).j().equals(str)) {
                    i2 = i3;
                    break;
                } else {
                    i3++;
                }
            }
            if (i2 >= 0) {
                this.ay.remove(i2);
            }
        }
    }

    public s a(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null || bitmapDescriptor.getBitmap() == null || bitmapDescriptor.getBitmap().isRecycled()) {
            return null;
        }
        synchronized (this.ay) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= this.ay.size()) {
                    return null;
                }
                s sVar = (s) this.ay.get(i3);
                if (sVar.e().equals(bitmapDescriptor)) {
                    return sVar;
                }
                i2 = i3 + 1;
            }
        }
    }

    public int a(IMarkerAction iMarkerAction, Rect rect) {
        return 0;
    }

    public void i(int i2) {
        if (this.Q != null) {
            this.Q.b(i2);
        }
    }

    public void j(int i2) {
        if (this.Q != null) {
            this.Q.c(i2);
        }
    }

    public void k(int i2) {
        if (this.Q != null) {
            this.Q.d(i2);
        }
    }

    public float l(int i2) {
        if (this.Q != null) {
            return this.Q.e(i2);
        }
        return 0.0f;
    }

    public void a(int i2, float f2) {
        if (this.Q != null) {
            this.Q.a(i2, f2);
        }
    }

    public int n() {
        return this.aw;
    }

    public void a(Runnable runnable) {
        if (this.P != null) {
            this.P.post(runnable);
        }
    }

    public void a(int i2, MotionEvent motionEvent) {
        try {
            this.ah = false;
            m(i2);
            this.ag = this.b.a(motionEvent);
            if (this.ag != null && this.ag.isDraggable()) {
                this.af = new Marker(this.ag);
                LatLng position = this.af.getPosition();
                LatLng b2 = this.ag.b();
                IPoint obtain = IPoint.obtain();
                b(b2.latitude, b2.longitude, obtain);
                obtain.y -= 60;
                DPoint obtain2 = DPoint.obtain();
                b(obtain.x, obtain.y, obtain2);
                this.af.setPosition(new LatLng((position.latitude + obtain2.y) - b2.latitude, (position.longitude + obtain2.x) - b2.longitude));
                this.b.a(this.ag);
                if (this.v != null) {
                    this.v.onMarkerDragStart(this.af);
                }
                this.ae = true;
                obtain.recycle();
                obtain2.recycle();
            } else if (this.B != null) {
                DPoint obtain3 = DPoint.obtain();
                b((int) motionEvent.getX(), (int) motionEvent.getY(), obtain3);
                this.B.onMapLongClick(new LatLng(obtain3.y, obtain3.x));
                this.ai = true;
                obtain3.recycle();
            }
            this.aB.resetTickCount(30);
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "onLongPress");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean b(int i2, MotionEvent motionEvent) {
        if (this.aM) {
            a(i2, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return false;
    }

    public boolean c(int i2, MotionEvent motionEvent) {
        if (!this.aM) {
            return false;
        }
        try {
            if (g(motionEvent) || e(motionEvent) || f(motionEvent) || d(motionEvent)) {
                return true;
            }
            b(motionEvent);
            return true;
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "onSingleTapUp");
            ThrowableExtension.printStackTrace(th);
            return true;
        }
    }

    private void b(final MotionEvent motionEvent) {
        queueEvent(new Runnable() {
            public void run() {
                try {
                    Message obtain = Message.obtain();
                    Poi a2 = a.this.b((int) motionEvent.getX(), (int) motionEvent.getY(), 25);
                    if (a.this.A == null) {
                        a.this.c(motionEvent);
                    } else if (a2 != null) {
                        obtain.what = 20;
                        obtain.obj = a2;
                        a.this.i.sendMessage(obtain);
                    } else {
                        a.this.c(motionEvent);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void c(final MotionEvent motionEvent) {
        this.i.post(new Runnable() {
            public void run() {
                Message obtain = Message.obtain();
                obtain.what = 19;
                obtain.arg1 = (int) motionEvent.getX();
                obtain.arg2 = (int) motionEvent.getY();
                a.this.i.sendMessage(obtain);
            }
        });
    }

    private boolean d(MotionEvent motionEvent) {
        if (this.u != null) {
            DPoint obtain = DPoint.obtain();
            b((int) motionEvent.getX(), (int) motionEvent.getY(), obtain);
            LatLng latLng = new LatLng(obtain.y, obtain.x);
            obtain.recycle();
            if (latLng != null) {
                ci a2 = this.S.a(latLng);
                if (a2 != null) {
                    this.u.onPolylineClick(new Polyline((cl) a2));
                }
            }
        }
        return false;
    }

    private boolean e(MotionEvent motionEvent) throws RemoteException {
        if (this.b.b(motionEvent)) {
            cg d2 = this.b.d();
            if (d2 == null) {
                return true;
            }
            try {
                Marker marker = new Marker(d2);
                if (this.t == null || (!this.t.onMarkerClick(marker) && this.b.g() > 0)) {
                    a(d2);
                    if (!d2.g()) {
                        LatLng b2 = d2.b();
                        if (b2 != null) {
                            IPoint obtain = IPoint.obtain();
                            a(b2.latitude, b2.longitude, obtain);
                            a(aa.a((Point) obtain));
                        }
                    }
                    this.b.a(d2);
                    return true;
                }
                this.b.a(d2);
                return true;
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "onMarkerTap");
                ThrowableExtension.printStackTrace(th);
            }
        }
        return false;
    }

    private boolean f(MotionEvent motionEvent) {
        if (this.aY == null) {
            return false;
        }
        IPoint obtain = IPoint.obtain();
        if (this.f != null) {
            a((int) motionEvent.getX(), (int) motionEvent.getY(), obtain);
        }
        boolean a2 = this.aY.a(obtain);
        obtain.recycle();
        return a2;
    }

    private boolean g(MotionEvent motionEvent) throws RemoteException {
        if (this.J == null || !this.J.a(motionEvent)) {
            return false;
        }
        if (this.C == null) {
            return true;
        }
        cg d2 = this.b.d();
        if (!d2.isVisible()) {
            return true;
        }
        this.C.onInfoWindowClick(new Marker(d2));
        return true;
    }

    private void h(int i2, boolean z2) {
        int i3;
        GLMapEngine gLMapEngine = this.f;
        if (z2) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        gLMapEngine.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SETISSTIMAP, i3, 0, 0, 0);
    }

    public void drawFrame(GL10 gl10) {
        if (!this.V && this.f != null) {
            a(1, gl10);
            GLES20.glClearColor(0.9453125f, 0.93359f, 0.9101f, 1.0f);
            GLES20.glClear(16640);
            this.f.drawFrame();
            this.f.pushRendererState();
            a(gl10);
            z();
            if (!this.aP) {
                this.aP = true;
                a((Runnable) new Runnable() {
                    public void run() {
                        if (a.this.X != null) {
                            a.this.X.onDrawFrameFirst(1);
                        }
                    }
                });
            }
            if (this.au != null) {
                this.au.onDrawFrame(gl10);
            }
            this.f.popRendererState();
        }
    }

    private void a(int i2, GL10 gl10) {
        if (this.ax != -1) {
            this.aB.setRenderFps((float) this.ax);
            resetRenderTime();
        } else if (this.f.isInMapAction(i2) || this.aI) {
            this.aB.setRenderFps(40.0f);
        } else if (this.f.isInMapAnimation(i2)) {
            this.aB.setRenderFps(30.0f);
            this.aB.resetTickCount(15);
        } else if (this.aG) {
            this.aB.setRenderFps(10.0f);
        } else {
            this.aB.setRenderFps(15.0f);
        }
        if (this.c.isWorldMapEnable() != MapsInitializer.isLoadWorldGridMap()) {
            g(true);
            this.c.setWorldMapEnable(MapsInitializer.isLoadWorldGridMap());
        }
    }

    private void a(GL10 gl10) {
        int i2 = 1;
        if (this.al) {
            if (!this.f.canStopMapRender(1)) {
                i2 = 0;
            }
            Message obtainMessage = this.i.obtainMessage(15, ee.a(0, 0, getMapWidth(), getMapHeight()));
            obtainMessage.arg1 = i2;
            obtainMessage.sendToTarget();
            this.al = false;
        }
    }

    public void o() {
        if (this.c.getMapRect() == null || this.as) {
            y();
            this.as = false;
        }
        GLMapState mapState = this.f.getMapState(1);
        if (mapState != null) {
            Point mapGeoCenter = mapState.getMapGeoCenter();
            this.c.setS_x(mapGeoCenter.x);
            this.c.setS_y(mapGeoCenter.y);
            this.c.setS_z(mapState.getMapZoomer());
            this.c.setS_c(mapState.getCameraDegree());
            this.c.setS_r(mapState.getMapAngle());
            if (this.c.isMapStateChange()) {
                DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) mapGeoCenter.x, (long) mapGeoCenter.y, 20);
                CameraPosition cameraPosition = new CameraPosition(new LatLng(PixelsToLatLong.y, PixelsToLatLong.x, false), this.c.getS_z(), this.c.getS_c(), this.c.getS_r());
                PixelsToLatLong.recycle();
                Message obtainMessage = this.i.obtainMessage();
                obtainMessage.what = 10;
                obtainMessage.obj = cameraPosition;
                this.i.sendMessage(obtainMessage);
                this.aJ = true;
                j();
                y();
                try {
                    if (this.N.isZoomControlsEnabled() && this.c.isNeedUpdateZoomControllerState()) {
                        this.Y.invalidateZoomController(this.c.getS_z());
                    }
                    if (this.c.getChangeGridRatio() != 1.0d) {
                        g(true);
                    }
                    if (this.N.isCompassEnabled() && (this.c.isTiltChanged() || this.c.isBearingChanged())) {
                        this.Y.invalidateCompassView();
                    }
                    if (this.N.isScaleControlsEnabled()) {
                        this.Y.invalidateScaleView();
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            } else if (!this.aI && this.f.getAnimateionsCount() == 0 && this.f.getStateMessageCount() == 0) {
                onChangeFinish();
            }
        }
    }

    private void y() {
        try {
            this.c.setMapRect(ee.a((l) this, true));
            GLMapState mapState = this.f.getMapState(1);
            if (mapState != null) {
                mapState.getPixel20Bound(this.k);
                this.c.getGeoRectangle().updateRect(this.k, this.c.getS_x(), this.c.getS_y());
                this.c.setMapPerPixelUnitLength(mapState.getGLUnitWithWin(1));
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void z() {
        final en d2 = this.Q.d();
        if (d2 != null && d2.getVisibility() != 8) {
            if (!this.ab) {
                this.i.sendEmptyMessage(16);
                this.ab = true;
                g(true);
            }
            this.i.post(new Runnable() {
                public void run() {
                    if (!a.this.Z) {
                        try {
                            if (a.this.d != null) {
                                a.this.setIndoorBuildingInfo(a.this.d);
                            }
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                        d2.a(false);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void g(boolean z2) {
        int i2;
        Handler handler = this.i;
        if (z2) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        handler.obtainMessage(17, i2, 0).sendToTarget();
    }

    public void m(final int i2) {
        queueEvent(new Runnable() {
            public void run() {
                if (a.this.aM && a.this.f != null) {
                    a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_CLEAN_SELECTED_SUBWAY, 0, 0, 0, 0);
                }
            }
        });
    }

    public void clearException(int i2) {
    }

    public void onException(int i2, int i3) {
    }

    /* access modifiers changed from: private */
    public Poi b(int i2, int i3, int i4) {
        MapLabelItem mapLabelItem;
        if (!this.aM) {
            return null;
        }
        try {
            ArrayList a2 = a(1, i2, i3, i4);
            if (a2 == null || a2.size() <= 0) {
                mapLabelItem = null;
            } else {
                mapLabelItem = (MapLabelItem) a2.get(0);
            }
            if (mapLabelItem == null) {
                return null;
            }
            DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) mapLabelItem.pixel20X, (long) mapLabelItem.pixel20Y, 20);
            Poi poi = new Poi(mapLabelItem.name, new LatLng(PixelsToLatLong.y, PixelsToLatLong.x, false), mapLabelItem.poiid);
            PixelsToLatLong.recycle();
            return poi;
        } catch (Throwable th) {
            return null;
        }
    }

    public ArrayList<MapLabelItem> a(int i2, int i3, int i4, int i5) {
        if (!this.aM) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        byte[] labelBuffer = this.f.getLabelBuffer(i2, i3, i4, i5);
        if (labelBuffer == null) {
            return null;
        }
        int i6 = 4;
        int i7 = GLConvertUtil.getInt(labelBuffer, 0) >= 1 ? 1 : 0;
        for (int i8 = 0; i8 < i7; i8++) {
            MapLabelItem mapLabelItem = new MapLabelItem();
            int i9 = GLConvertUtil.getInt(labelBuffer, i6);
            int i10 = i6 + 4;
            int i11 = GLConvertUtil.getInt(labelBuffer, i10);
            int i12 = i10 + 4;
            mapLabelItem.x = i9;
            mapLabelItem.y = this.P.getHeight() - i11;
            mapLabelItem.pixel20X = GLConvertUtil.getInt(labelBuffer, i12);
            int i13 = i12 + 4;
            mapLabelItem.pixel20Y = GLConvertUtil.getInt(labelBuffer, i13);
            int i14 = i13 + 4;
            mapLabelItem.type = GLConvertUtil.getInt(labelBuffer, i14);
            int i15 = i14 + 4;
            mapLabelItem.mSublayerId = GLConvertUtil.getInt(labelBuffer, i15);
            int i16 = i15 + 4;
            mapLabelItem.mIsFouces = labelBuffer[i16] != 0;
            int i17 = i16 + 1;
            if (labelBuffer[i17] == 0) {
                mapLabelItem.poiid = null;
            } else {
                String str = "";
                int i18 = 0;
                while (i18 < 20 && labelBuffer[i18 + i17] != 0) {
                    str = str + ((char) labelBuffer[i18 + i17]);
                    i18++;
                }
                mapLabelItem.poiid = str;
            }
            int i19 = i17 + 20;
            i6 = i19 + 1;
            byte b2 = labelBuffer[i19];
            StringBuffer stringBuffer = new StringBuffer();
            for (int i20 = 0; i20 < b2; i20++) {
                stringBuffer.append((char) GLConvertUtil.getShort(labelBuffer, i6));
                i6 += 2;
            }
            mapLabelItem.name = stringBuffer.toString();
            arrayList.add(mapLabelItem);
        }
        return arrayList;
    }

    public float n(int i2) {
        if (this.c != null) {
            return this.c.getS_r();
        }
        return 0.0f;
    }

    public Point o(int i2) {
        if (this.c != null) {
            return this.f.getMapCenter(i2);
        }
        return null;
    }

    public float p(int i2) {
        if (!this.aM || this.f == null) {
            return 0.0f;
        }
        return this.f.getCameraDegree(i2);
    }

    public void a(int i2, GestureMapMessage gestureMapMessage) {
        if (this.aM && this.f != null) {
            try {
                gestureMapMessage.isUseAnchor = this.aa;
                gestureMapMessage.anchorX = this.c.getAnchorX();
                gestureMapMessage.anchorY = this.c.getAnchorY();
                this.f.addGestureMessage(i2, gestureMapMessage, this.N.isGestureScaleByMapCenter(), this.c.getAnchorX(), this.c.getAnchorY());
            } catch (RemoteException e2) {
            }
        }
    }

    public void q(int i2) {
        if (this.aB != null) {
            this.aB.renderPause();
        }
        s(i2);
        NetworkState.getInstance().setNetWorkChangeListener(null);
    }

    public void r(int i2) {
        s(i2);
        if (this.aB != null) {
            this.aB.renderResume();
        }
        NetworkState.getInstance().setNetWorkChangeListener(this);
    }

    public void resetRenderTimeLong() {
        if (this.aB != null) {
            this.aB.resetTickCount(6);
        }
    }

    public void resetRenderTimeLongLong() {
        if (this.aB != null) {
            this.aB.resetTickCount(30);
        }
    }

    public void resetRenderTime() {
        if (this.aB != null) {
            this.aB.resetTickCount(2);
        }
    }

    public void p() {
        if (this.aB != null) {
            this.aB.resetTickCount(2);
        }
    }

    public void resetRenderTime(boolean z2) {
        if (this.aB == null) {
            return;
        }
        if (z2) {
            this.aB.resetTickCount(10);
        } else {
            this.aB.resetTickCount(2);
        }
    }

    public void q() {
        if (this.aM && this.aB != null && !this.aB.isRenderPause()) {
            requestRender();
        }
    }

    public void requestRender() {
        if (this.aB != null && !this.aB.isRenderPause()) {
            this.P.requestRender();
        }
    }

    public int getRenderMode() {
        return this.P.getRenderMode();
    }

    private void A() {
        if (!this.ar) {
            try {
                this.aq.setName("AuthThread");
                this.aq.start();
                this.ar = true;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public float r() {
        return this.aF;
    }

    public synchronized void b(int i2, int i3, int i4, int i5) {
        a(i2, i3, i4, i5, false, false, (StyleItem[]) null);
    }

    public synchronized void a(int i2, int i3, int i4, int i5, boolean z2, boolean z3, StyleItem[] styleItemArr) {
        if (this.f != null) {
            this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_RESTORED_MAPMODESTATE, i3, i4, i5, 0);
        }
        if (!this.aM) {
            if (this.f != null) {
                this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_MAPMODESTATE, i3, i4, i5, 0);
            }
        } else if (!this.aN || !this.aM || !this.a) {
            this.bc.g = i2;
            this.bc.d = i3;
            this.bc.e = i4;
            this.bc.f = i5;
            this.bc.b = true;
        } else {
            final boolean z4 = z2;
            final int i6 = i2;
            final int i7 = i3;
            final int i8 = i4;
            final int i9 = i5;
            final boolean z5 = z3;
            final StyleItem[] styleItemArr2 = styleItemArr;
            queueEvent(new Runnable() {
                public void run() {
                    try {
                        if (!z4) {
                            int[] mapModeState = a.this.f.getMapModeState(i6, false);
                            if (mapModeState == null) {
                                return;
                            }
                            if (mapModeState[0] == i7 && mapModeState[1] == i8 && mapModeState[2] == i9) {
                                return;
                            }
                        }
                        a.this.f.SetMapModeAndStyle(i6, i7, i8, i9, z4, z5, styleItemArr2);
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            });
        }
    }

    public void s(final int i2) {
        queueEvent(new Runnable() {
            public void run() {
                try {
                    a.this.f.clearAllMessages(i2);
                    a.this.f.clearAnimations(i2, true);
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void postQueueEvent(Runnable runnable) {
        queueEvent(runnable);
    }

    public void postOnUIThread(Runnable runnable) {
        a(runnable);
    }

    public void b(final int i2, final boolean z2) {
        b(i2, 18, z2);
        if (!this.aM || !this.aN) {
            this.be.c = z2;
            this.be.b = true;
            this.be.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(i2, 1021, 1, 0, 0, 0);
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_3DOBJECT, 1, 0, 0, 0);
                        return;
                    }
                    a.this.f.setParamater(i2, 1021, 0, 0, 0, 0);
                    a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_3DOBJECT, 0, 0, 0, 0);
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void c(final int i2, final boolean z2) {
        if (!this.aM || !this.aN) {
            this.bf.c = z2;
            this.bf.b = true;
            this.bf.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_NORMAL, 1, 0, 0, 0);
                    } else {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_NORMAL, 0, 0, 0, 0);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void d(final int i2, final boolean z2) {
        if (!this.aM || !this.aN) {
            this.bj.c = z2;
            this.bj.b = true;
            this.bj.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                if (a.this.f == null) {
                    return;
                }
                if (z2) {
                    a.this.f.setParamater(i2, 2603, 1, 0, 0, 0);
                    a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_CONTENT, -1, 1, 0, 0);
                    a.this.f.setParamater(i2, 1024, 1, 0, 0, 0);
                    return;
                }
                a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_CONTENT, -1, 0, 0, 0);
                a.this.f.setParamater(i2, 1024, 0, 0, 0, 0);
            }
        });
    }

    public void e(final int i2, final boolean z2) {
        if (!this.aM || !this.aN) {
            this.bh.c = z2;
            this.bh.b = true;
            this.bh.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_MARK, 1, 0, 0, 0);
                    } else {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_MARK, 0, 0, 0, 0);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void f(final int i2, final boolean z2) {
        if (!this.aM || !this.aN) {
            this.bi.c = z2;
            this.bi.b = true;
            this.bi.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_POI, 1, 0, 0, 0);
                    } else {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_POI, 0, 0, 0, 0);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void g(final int i2, final boolean z2) {
        b(i2, 12, z2);
        if (!this.aM || !this.aN) {
            this.bm.c = z2;
            this.bm.b = true;
            this.bm.g = i2;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_TEXTURE, 1, 0, 0, 0);
                    } else {
                        a.this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_TEXTURE, 0, 0, 0, 0);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public synchronized void a(final int i2, GL10 gl10, EGLConfig eGLConfig) {
        this.aL = gl10;
        this.aN = false;
        this.g = this.P.getWidth();
        this.h = this.P.getHeight();
        this.aQ = false;
        this.f.initConnectionManager();
        w(i2);
        a((Runnable) new Runnable() {
            public void run() {
                if (a.this.X != null) {
                    a.this.X.onSurfaceCreated(i2);
                }
            }
        });
        this.aM = true;
        try {
            this.l = gl10.glGetString(7937);
        } catch (Exception e2) {
        }
        GLMapState mapState = this.f.getMapState(1);
        if (!(mapState == null || mapState.getNativeInstance() == 0)) {
            mapState.setMapGeoCenter(this.c.getS_x(), this.c.getS_y());
            mapState.setMapAngle(this.c.getS_r());
            mapState.setMapZoomer(this.c.getS_z());
            mapState.setCameraDegree(this.c.getS_c());
            this.f.setMapState(1, mapState, false);
        }
        this.aX.a(this.e);
        A();
        if (this.au != null) {
            this.au.onSurfaceCreated(gl10, eGLConfig);
        }
        s();
    }

    /* access modifiers changed from: protected */
    public void s() {
        AMapNativeRenderer.nativeDrawLineInit();
    }

    public void a(int i2, GL10 gl10, int i3, int i4) {
        int i5;
        int i6 = 2;
        this.aQ = false;
        if (!this.aM) {
            a(i2, gl10, (EGLConfig) null);
        }
        this.g = i3;
        this.h = i4;
        this.as = true;
        this.an = new Rect(0, 0, i3, i4);
        if (!this.aN) {
            int i7 = this.e.getResources().getDisplayMetrics().densityDpi;
            float f2 = this.e.getResources().getDisplayMetrics().density;
            int i8 = 100;
            if (i7 <= 120) {
                i6 = 1;
            } else if (i7 <= 160) {
                if (Math.max(i3, i4) <= 480) {
                    i5 = 120;
                } else {
                    i5 = 100;
                }
                i6 = 1;
                i8 = i5;
            } else if (i7 <= 240) {
                if (Math.min(i3, i4) >= 1000) {
                    i8 = 60;
                } else {
                    i8 = 70;
                }
            } else if (i7 <= 320) {
                i8 = 50;
                i6 = 3;
            } else if (i7 <= 480) {
                i8 = 50;
                i6 = 3;
            } else {
                i8 = 40;
                i6 = 4;
            }
            this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_MAP_VALUE, i8, (int) (f2 * 100.0f), (int) (f2 * 100.0f), i6);
            this.aF = ((float) i8) / 100.0f;
            if (this.c != null) {
                this.c.setMapZoomScale(this.aF);
                this.c.setMapWidth(i3);
                this.c.setMapHeight(i4);
            }
            this.f.setParamater(i2, 1001, 1, 0, 0, 0);
            if (this.aG) {
                this.f.setParamater(i2, 1900, 1, 15, 0, 0);
            } else {
                this.f.setParamater(i2, 1900, 0, 0, 0, 0);
            }
            if (c(i2, 18)) {
                this.f.setParamater(i2, 1021, 1, 0, 0, 0);
                this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_3DOBJECT, 1, 0, 0, 0);
            } else {
                this.f.setParamater(i2, 1021, 0, 0, 0, 0);
                this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_3DOBJECT, 0, 0, 0, 0);
            }
            this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, 1, 0, 0, 0);
            this.f.setParamater(1, 1026, 0, 0, 0, 0);
            if (c(i2, 16)) {
                this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_TRAFFIC, 1, 0, 0, 0);
            } else {
                this.f.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_TRAFFIC, 0, 0, 0, 0);
            }
            this.f.setParamater(i2, 1029, 17, 0, 0, 0);
            h(i2, false);
        }
        this.f.changeSurface(i2, 0, 0, i3, i4, i3, i4);
        synchronized (this) {
            this.aN = true;
        }
        if (this.aT == 0 && this.aU == 0) {
            this.c.setAnchorX(i3 >> 1);
            this.c.setAnchorY(i4 >> 1);
        } else {
            this.c.setAnchorX(Math.max(1, Math.min(this.aT, i3 - 1)));
            this.c.setAnchorY(Math.max(1, Math.min(this.aU, i4 - 1)));
        }
        this.f.setParamater(i2, AMapException.CODE_AMAP_ENGINE_RESPONSE_ERROR, this.c.getAnchorX(), this.c.getAnchorY(), 0, 0);
        this.a = true;
        if (this.bj.b) {
            this.bj.run();
        }
        if (this.be.b) {
            this.be.run();
        }
        if (this.bc.b) {
            this.bc.run();
        }
        if (this.ba.b) {
            this.ba.run();
        }
        if (this.bd.b) {
            this.bd.run();
        }
        if (this.aZ.b) {
            this.aZ.run();
        }
        if (this.bf.b) {
            this.bf.run();
        }
        if (this.bh.b) {
            this.bh.run();
        }
        if (this.bi.b) {
            this.bi.run();
        }
        if (this.bm.b) {
            this.bm.run();
        }
        if (this.bk.b) {
            this.bk.run();
        }
        if (this.bb.b) {
            this.bb.run();
        }
        if (this.au != null) {
            this.au.onSurfaceChanged(gl10, i3, i4);
        }
        if (this.i != null) {
            this.i.post(this.bl);
        }
    }

    public void destorySurface(int i2) {
        this.aR.lock();
        try {
            if (this.aM) {
                this.f.destorySurface();
                VMapDataCache.getInstance().reset();
                if (this.X != null) {
                    this.X.onSurfaceDestroy(i2);
                }
            }
            this.aM = false;
            this.aL = null;
            this.aN = false;
            this.aQ = false;
        } catch (Throwable th) {
        } finally {
            this.aR.unlock();
        }
    }

    public Context t() {
        return this.e;
    }

    private void w(int i2) {
        int i3;
        int i4;
        int i5 = 0;
        int[] mapModeState = this.f.getMapModeState(i2, false);
        if (mapModeState != null) {
            i4 = mapModeState[0];
            i3 = mapModeState[1];
            i5 = mapModeState[2];
        } else {
            i3 = 0;
            i4 = 0;
        }
        int i6 = i2;
        this.f.loadStartResource(i6, i4, i3, i5, c(i2, 2), this.g, this.h);
    }

    public int a(int i2, Rect rect, int i3, int i4) {
        if (this.f == null || i2 < 0 || rect == null) {
            return 0;
        }
        int engineIDWithType = this.f.getEngineIDWithType(i2);
        if (!this.f.isEngineCreated(engineIDWithType)) {
            this.f.createEngineWithFrame(engineIDWithType, rect, i3, i4);
            this.f.setOvelayBundle(engineIDWithType, new GLOverlayBundle(engineIDWithType, this));
            if (engineIDWithType == 2) {
                a(engineIDWithType, -1, false);
                w(engineIDWithType);
            }
            this.f.setMapAngle(engineIDWithType, this.c.getS_r());
            this.f.setMapZoom(engineIDWithType, this.c.getS_z());
            this.f.setMapCenter(engineIDWithType, this.c.getS_x(), this.c.getS_y());
            this.f.setCameraDegree(engineIDWithType, this.c.getS_c());
            return engineIDWithType;
        }
        a(engineIDWithType, rect.left, rect.top, rect.width(), rect.height(), i3, i4);
        return engineIDWithType;
    }

    public void a(final int i2, final int i3, final boolean z2) {
        queueEvent(new Runnable() {
            public void run() {
                int i;
                if (a.this.f != null) {
                    GLMapEngine gLMapEngine = a.this.f;
                    int i2 = i2;
                    int i3 = i3;
                    if (z2) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    gLMapEngine.setParamater(i2, GLMapStaticValue.AM_PARAMETERNAME_SHOW_CONTENT, i3, i, 0, 0);
                }
            }
        });
    }

    public int a(EAMapPlatformGestureInfo eAMapPlatformGestureInfo) {
        if (this.f != null) {
            return this.f.getEngineIDWithGestureInfo(eAMapPlatformGestureInfo);
        }
        return 1;
    }

    public void a(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        final int i9 = i2;
        final int i10 = i3;
        final int i11 = i4;
        final int i12 = i5;
        final int i13 = i6;
        final int i14 = i7;
        final int i15 = i8;
        queueEvent(new Runnable() {
            public void run() {
                if (a.this.f != null) {
                    a.this.f.setServiceViewRect(i9, i10, i11, i12, i13, i14, i15);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void b(int i2, int i3, boolean z2) {
        if (this.f != null) {
            this.f.setSrvViewStateBoolValue(i2, i3, z2);
        }
    }

    private boolean c(int i2, int i3) {
        if (this.f != null) {
            return this.f.getSrvViewStateBoolValue(i2, i3);
        }
        return false;
    }

    public CameraPosition getCameraPosition() throws RemoteException {
        return f(this.aa);
    }

    public float getMaxZoomLevel() {
        if (this.c != null) {
            return this.c.getMaxZoomLevel();
        }
        return 19.0f;
    }

    public float getMinZoomLevel() {
        if (this.c != null) {
            return this.c.getMinZoomLevel();
        }
        return 3.0f;
    }

    public void moveCamera(CameraUpdate cameraUpdate) throws RemoteException {
        if (cameraUpdate != null) {
            a(cameraUpdate.getCameraUpdateFactoryDelegate());
        }
    }

    public void a(CameraUpdateMessage cameraUpdateMessage) throws RemoteException {
        if (this.f != null && !this.V) {
            if (this.Z && this.f.getStateMessageCount() > 0) {
                CameraUpdateMessage c2 = aa.c();
                c2.nowType = Type.changeGeoCenterZoomTiltBearing;
                c2.geoPoint = new Point(this.c.getS_x(), this.c.getS_y());
                c2.zoom = this.c.getS_z();
                c2.bearing = this.c.getS_r();
                c2.tilt = this.c.getS_c();
                this.f.addMessage(cameraUpdateMessage, false);
                while (this.f.getStateMessageCount() > 0) {
                    CameraUpdateMessage stateMessage = this.f.getStateMessage();
                    if (stateMessage != null) {
                        stateMessage.mergeCameraUpdateDelegate(c2);
                    }
                }
                cameraUpdateMessage = c2;
            }
            resetRenderTime();
            this.f.clearAnimations(1, false);
            cameraUpdateMessage.isChangeFinished = true;
            c(cameraUpdateMessage);
            this.f.addMessage(cameraUpdateMessage, false);
        }
    }

    private void c(CameraUpdateMessage cameraUpdateMessage) {
        cameraUpdateMessage.isUseAnchor = this.aa;
        if (this.aa) {
            cameraUpdateMessage.anchorX = this.c.getAnchorX();
            cameraUpdateMessage.anchorY = this.c.getAnchorY();
        }
        if (cameraUpdateMessage.width == 0) {
            cameraUpdateMessage.width = getMapWidth();
        }
        if (cameraUpdateMessage.height == 0) {
            cameraUpdateMessage.height = getMapHeight();
        }
        cameraUpdateMessage.mapConfig = this.c;
    }

    public void animateCamera(CameraUpdate cameraUpdate) throws RemoteException {
        b(cameraUpdate.getCameraUpdateFactoryDelegate());
    }

    public void b(CameraUpdateMessage cameraUpdateMessage) throws RemoteException {
        a(cameraUpdateMessage, 250, (CancelableCallback) null);
    }

    public void animateCameraWithCallback(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) throws RemoteException {
        animateCameraWithDurationAndCallback(cameraUpdate, 250, cancelableCallback);
    }

    public void animateCameraWithDurationAndCallback(CameraUpdate cameraUpdate, long j2, CancelableCallback cancelableCallback) {
        a(cameraUpdate.getCameraUpdateFactoryDelegate(), j2, cancelableCallback);
    }

    public void a(CameraUpdateMessage cameraUpdateMessage, long j2, CancelableCallback cancelableCallback) {
        if (cameraUpdateMessage != null && !this.V && this.f != null) {
            cameraUpdateMessage.mCallback = cancelableCallback;
            cameraUpdateMessage.mDuration = j2;
            if (this.Z || getMapHeight() == 0 || getMapWidth() == 0) {
                try {
                    a(cameraUpdateMessage);
                    if (cameraUpdateMessage.mCallback != null) {
                        cameraUpdateMessage.mCallback.onFinish();
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            } else {
                try {
                    this.f.interruptAnimation();
                    resetRenderTime();
                    c(cameraUpdateMessage);
                    this.f.addMessage(cameraUpdateMessage, true);
                } catch (Throwable th2) {
                    ThrowableExtension.printStackTrace(th2);
                }
            }
        }
    }

    public void stopAnimation() throws RemoteException {
        if (this.f != null) {
            this.f.interruptAnimation();
        }
        resetRenderTime();
    }

    public Polyline addPolyline(PolylineOptions polylineOptions) throws RemoteException {
        resetRenderTime();
        cl a2 = this.S.a(polylineOptions);
        if (a2 != null) {
            return new Polyline(a2);
        }
        return null;
    }

    public NavigateArrow addNavigateArrow(NavigateArrowOptions navigateArrowOptions) throws RemoteException {
        resetRenderTime();
        ch a2 = this.S.a(navigateArrowOptions);
        if (a2 != null) {
            return new NavigateArrow(a2);
        }
        return null;
    }

    public Polygon addPolygon(PolygonOptions polygonOptions) throws RemoteException {
        resetRenderTime();
        ck a2 = this.S.a(polygonOptions);
        if (a2 != null) {
            return new Polygon(a2);
        }
        return null;
    }

    public Circle addCircle(CircleOptions circleOptions) throws RemoteException {
        resetRenderTime();
        ce a2 = this.S.a(circleOptions);
        if (a2 != null) {
            return new Circle(a2);
        }
        return null;
    }

    public Arc addArc(ArcOptions arcOptions) throws RemoteException {
        resetRenderTime();
        cd a2 = this.S.a(arcOptions);
        if (a2 != null) {
            return new Arc(a2);
        }
        return null;
    }

    public GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        resetRenderTime();
        cf a2 = this.S.a(groundOverlayOptions);
        if (a2 != null) {
            return new GroundOverlay(a2);
        }
        return null;
    }

    public MultiPointOverlay addMultiPointOverlay(MultiPointOverlayOptions multiPointOverlayOptions) throws RemoteException {
        resetRenderTime();
        IMultiPointOverlay a2 = this.aY.a(multiPointOverlayOptions);
        if (a2 != null) {
            return new MultiPointOverlay(a2);
        }
        return null;
    }

    public Marker addMarker(MarkerOptions markerOptions) throws RemoteException {
        resetRenderTime();
        return this.b.a(markerOptions);
    }

    public Text addText(TextOptions textOptions) throws RemoteException {
        resetRenderTime();
        return this.b.a(textOptions);
    }

    public ArrayList<Marker> addMarkers(ArrayList<MarkerOptions> arrayList, boolean z2) throws RemoteException {
        resetRenderTime();
        return this.b.a(arrayList, z2);
    }

    public TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        return this.R.a(tileOverlayOptions);
    }

    public void clear() throws RemoteException {
        try {
            clear(false);
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "clear");
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0032 A[Catch:{ Throwable -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0029 A[Catch:{ Throwable -> 0x0042 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void clear(boolean r4) throws android.os.RemoteException {
        /*
            r3 = this;
            r0 = 0
            r3.i()     // Catch:{ Throwable -> 0x0042 }
            com.amap.api.mapcore.util.cp r1 = r3.ac     // Catch:{ Throwable -> 0x0042 }
            if (r1 == 0) goto L_0x0040
            if (r4 == 0) goto L_0x003b
            com.amap.api.mapcore.util.cp r0 = r3.ac     // Catch:{ Throwable -> 0x0042 }
            java.lang.String r1 = r0.c()     // Catch:{ Throwable -> 0x0042 }
            com.amap.api.mapcore.util.cp r0 = r3.ac     // Catch:{ Throwable -> 0x0042 }
            java.lang.String r0 = r0.d()     // Catch:{ Throwable -> 0x0042 }
        L_0x0016:
            com.amap.api.mapcore.util.i r2 = r3.S     // Catch:{ Throwable -> 0x0042 }
            r2.b(r0)     // Catch:{ Throwable -> 0x0042 }
            com.amap.api.mapcore.util.v r0 = r3.R     // Catch:{ Throwable -> 0x0042 }
            r0.c()     // Catch:{ Throwable -> 0x0042 }
            com.amap.api.mapcore.util.q r0 = r3.b     // Catch:{ Throwable -> 0x0042 }
            r0.a(r1)     // Catch:{ Throwable -> 0x0042 }
            com.amap.api.mapcore.util.er r0 = r3.Q     // Catch:{ Throwable -> 0x0042 }
            if (r0 == 0) goto L_0x002e
            com.amap.api.mapcore.util.er r0 = r3.Q     // Catch:{ Throwable -> 0x0042 }
            r0.k()     // Catch:{ Throwable -> 0x0042 }
        L_0x002e:
            com.amap.api.mapcore.util.ak r0 = r3.aY     // Catch:{ Throwable -> 0x0042 }
            if (r0 == 0) goto L_0x0037
            com.amap.api.mapcore.util.ak r0 = r3.aY     // Catch:{ Throwable -> 0x0042 }
            r0.c()     // Catch:{ Throwable -> 0x0042 }
        L_0x0037:
            r3.resetRenderTime()     // Catch:{ Throwable -> 0x0042 }
        L_0x003a:
            return
        L_0x003b:
            com.amap.api.mapcore.util.cp r1 = r3.ac     // Catch:{ Throwable -> 0x0042 }
            r1.e()     // Catch:{ Throwable -> 0x0042 }
        L_0x0040:
            r1 = r0
            goto L_0x0016
        L_0x0042:
            r0 = move-exception
            java.lang.String r1 = "AMapDelegateImp"
            java.lang.String r2 = "clear"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.a.clear(boolean):void");
    }

    public int getMapType() throws RemoteException {
        return this.ao;
    }

    public void setMapType(int i2) throws RemoteException {
        int i3 = 2;
        int i4 = 1;
        int i5 = 0;
        this.ao = i2;
        if (i2 == 1) {
            i4 = 0;
            i3 = 0;
        } else if (i2 == 2) {
            i3 = 1;
            i4 = 0;
        } else if (i2 == 3) {
            i3 = 0;
            i5 = 4;
        } else if (i2 == 4) {
            i4 = 0;
            i3 = 0;
            i5 = 4;
        } else if (i2 == 5) {
            i4 = 0;
            i5 = 5;
        } else {
            this.ao = 1;
            i4 = 0;
            i3 = 0;
        }
        try {
            this.c.setMapStyleMode(i3);
            this.c.setMapStyleTime(i4);
            this.c.setMapStyleState(i5);
            if (this.c.isCustomStyleEnable()) {
                a(1, i3, i4, i5, true, false, (StyleItem[]) null);
                this.c.setCustomStyleEnable(false);
                this.N.setLogoEnable(true);
            } else {
                if (this.c.getMapLanguage().equals("en")) {
                    setMapLanguage("zh_cn");
                }
                b(1, i3, i4, i5);
            }
            resetRenderTime();
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "setMaptype");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean isTrafficEnabled() throws RemoteException {
        return this.c.isTrafficEnabled();
    }

    public void setTrafficEnabled(final boolean z2) throws RemoteException {
        if (!this.aM || this.V) {
            this.aZ.c = z2;
            this.aZ.b = true;
            this.aZ.g = 1;
            return;
        }
        queueEvent(new Runnable(z2) {
            final /* synthetic */ boolean a;

            {
                this.a = r2;
            }

            /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r8 = this;
                    r0 = 1
                    r1 = 0
                    com.amap.api.mapcore.util.a r2 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.autonavi.amap.mapcore.MapConfig r2 = r2.c     // Catch:{ Throwable -> 0x0065 }
                    boolean r2 = r2.isTrafficEnabled()     // Catch:{ Throwable -> 0x0065 }
                    boolean r3 = r8.a     // Catch:{ Throwable -> 0x0065 }
                    if (r2 == r3) goto L_0x005d
                    com.amap.api.mapcore.util.a r2 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.autonavi.amap.mapcore.MapConfig r2 = r2.c     // Catch:{ Throwable -> 0x0065 }
                    boolean r3 = r3     // Catch:{ Throwable -> 0x0065 }
                    r2.setTrafficEnabled(r3)     // Catch:{ Throwable -> 0x0065 }
                    com.amap.api.mapcore.util.a r2 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.autonavi.ae.gmap.GLMapRender r2 = r2.aB     // Catch:{ Throwable -> 0x0065 }
                    boolean r3 = r8.a     // Catch:{ Throwable -> 0x0065 }
                    r2.setTrafficMode(r3)     // Catch:{ Throwable -> 0x0065 }
                    boolean r2 = r8.a     // Catch:{ Throwable -> 0x0065 }
                    if (r2 == 0) goto L_0x005e
                    r7 = r0
                L_0x0027:
                    com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x0065 }
                    r1 = 1
                    r2 = 2203(0x89b, float:3.087E-42)
                    r3 = 8
                    r4 = 10
                    r5 = 0
                    r6 = 0
                    r0.setParamater(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x0065 }
                    com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.amap.api.maps.model.MyTrafficStyle r0 = r0.ap     // Catch:{ Throwable -> 0x0065 }
                    if (r0 == 0) goto L_0x004a
                    com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0060 }
                    com.amap.api.mapcore.util.a r1 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0060 }
                    com.amap.api.maps.model.MyTrafficStyle r1 = r1.ap     // Catch:{ Throwable -> 0x0060 }
                    r0.setMyTrafficStyle(r1)     // Catch:{ Throwable -> 0x0060 }
                L_0x004a:
                    com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    com.autonavi.ae.gmap.GLMapEngine r0 = r0.f     // Catch:{ Throwable -> 0x0065 }
                    r1 = 1
                    r2 = 2010(0x7da, float:2.817E-42)
                    r4 = 0
                    r5 = 0
                    r6 = 0
                    r3 = r7
                    r0.setParamater(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x0065 }
                    com.amap.api.mapcore.util.a r0 = com.amap.api.mapcore.util.a.this     // Catch:{ Throwable -> 0x0065 }
                    r0.resetRenderTime()     // Catch:{ Throwable -> 0x0065 }
                L_0x005d:
                    return
                L_0x005e:
                    r7 = r1
                    goto L_0x0027
                L_0x0060:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0065 }
                    goto L_0x004a
                L_0x0065:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x005d
                */
                throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.a.AnonymousClass31.run():void");
            }
        });
    }

    public boolean isIndoorEnabled() throws RemoteException {
        return this.c.isIndoorEnable();
    }

    public void setIndoorEnabled(final boolean z2) throws RemoteException {
        if (!this.aM || this.V) {
            this.bk.c = z2;
            this.bk.b = true;
            this.bk.g = 1;
            return;
        }
        this.c.setIndoorEnable(z2);
        resetRenderTime();
        if (!z2) {
            if (this.f != null) {
                this.f.setParamater(1, 1026, 0, 0, 0, 0);
            }
            this.c.maxZoomLevel = this.c.isSetLimitZoomLevel() ? this.c.getMaxZoomLevel() : 19.0f;
            if (this.N.isZoomControlsEnabled()) {
                this.Y.invalidateZoomController(this.c.getS_z());
            }
        } else if (this.f != null) {
            this.f.setParamater(1, 1026, 1, 0, 0, 0);
        }
        if (this.N.isIndoorSwitchEnabled()) {
            this.i.post(new Runnable() {
                public void run() {
                    if (z2) {
                        a.this.b(true);
                    } else if (a.this.Q != null && a.this.Q.e() != null) {
                        a.this.Q.e().a(false);
                    }
                }
            });
        }
    }

    public void set3DBuildingEnabled(boolean z2) throws RemoteException {
        q(1);
        c(1, z2);
        r(1);
    }

    public boolean isMyLocationEnabled() throws RemoteException {
        return this.T;
    }

    public void setMyLocationEnabled(boolean z2) throws RemoteException {
        if (!this.V) {
            try {
                if (this.Q != null) {
                    eq f2 = this.Q.f();
                    if (this.ad == null) {
                        f2.a(false);
                    } else if (z2) {
                        this.ad.activate(this.F);
                        f2.a(true);
                        if (this.ac == null) {
                            this.ac = new cp(this, this.e);
                        }
                    } else {
                        if (this.ac != null) {
                            this.ac.b();
                            this.ac = null;
                        }
                        this.ad.deactivate();
                    }
                }
                if (!z2) {
                    this.N.setMyLocationButtonEnabled(z2);
                }
                this.T = z2;
                resetRenderTime();
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "setMyLocationEnabled");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void setLoadOfflineData(final boolean z2) throws RemoteException {
        queueEvent(new Runnable() {
            public void run() {
                int i;
                if (a.this.f != null) {
                    GLMapEngine gLMapEngine = a.this.f;
                    if (z2) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    gLMapEngine.setParamater(1, GLMapStaticValue.AM_PARAMETERNAME_ON_OFF_DBLITE, i, 0, 0, 0);
                }
            }
        });
    }

    public void setMyLocationStyle(MyLocationStyle myLocationStyle) throws RemoteException {
        if (!this.V) {
            if (this.ac == null) {
                this.ac = new cp(this, this.e);
            }
            if (this.ac != null) {
                if (myLocationStyle.getInterval() < 1000) {
                    myLocationStyle.interval(1000);
                }
                if (this.ad != null && (this.ad instanceof ag)) {
                    ((ag) this.ad).a(myLocationStyle.getInterval());
                    ((ag) this.ad).a(myLocationStyle.getMyLocationType());
                }
                this.ac.a(myLocationStyle);
            }
        }
    }

    public void setMyLocationType(int i2) throws RemoteException {
        if (this.ac != null && this.ac.a() != null) {
            this.ac.a().myLocationType(i2);
            setMyLocationStyle(this.ac.a());
        }
    }

    public List<Marker> getMapScreenMarkers() throws RemoteException {
        if (!ee.b(getMapWidth(), getMapHeight())) {
            return new ArrayList();
        }
        return this.b.e();
    }

    public void setMapTextEnable(final boolean z2) throws RemoteException {
        if (!this.aM || !this.aN) {
            this.bg.c = z2;
            this.bg.b = true;
            this.bg.g = 1;
            return;
        }
        resetRenderTime();
        queueEvent(new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        a.this.f.setParamater(1, 1024, 1, 0, 0, 0);
                    } else {
                        a.this.f.setParamater(1, 1024, 0, 0, 0, 0);
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        });
    }

    public void setMyTrafficStyle(MyTrafficStyle myTrafficStyle) throws RemoteException {
        if (!this.V) {
            this.ap = myTrafficStyle;
            if (this.aM && myTrafficStyle != null) {
                this.f.setParamater(1, AMapException.CODE_AMAP_CLIENT_USERID_ILLEGAL, 1, 1, 1, 1);
                this.f.setParamater(1, AMapException.CODE_AMAP_CLIENT_NEARBY_NULL_RESULT, myTrafficStyle.getSmoothColor(), myTrafficStyle.getSlowColor(), myTrafficStyle.getCongestedColor(), myTrafficStyle.getSeriousCongestedColor());
                this.f.setParamater(1, AMapException.CODE_AMAP_CLIENT_UPLOAD_TOO_FREQUENT, (int) (myTrafficStyle.getRatio() * 10.0f), 10, 0, 0);
            }
        }
    }

    public Location getMyLocation() throws RemoteException {
        if (this.ad != null) {
            return this.F.a;
        }
        return null;
    }

    public void setLocationSource(LocationSource locationSource) throws RemoteException {
        try {
            if (!this.V) {
                if (this.ad != null && (this.ad instanceof ag)) {
                    this.ad.deactivate();
                }
                this.ad = locationSource;
                if (locationSource != null) {
                    this.Q.f().a(true);
                } else {
                    this.Q.f().a(false);
                }
            }
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "setLocationSource");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setMyLocationRotateAngle(float f2) throws RemoteException {
        if (this.ac != null) {
            this.ac.a(f2);
        }
    }

    public UiSettings getAMapUiSettings() throws RemoteException {
        if (this.L == null) {
            this.L = new UiSettings(this.N);
        }
        return this.L;
    }

    public Projection getAMapProjection() throws RemoteException {
        return new Projection(this.M);
    }

    public void setOnMapClickListener(OnMapClickListener onMapClickListener) throws RemoteException {
        this.y = onMapClickListener;
    }

    public void setOnMapTouchListener(OnMapTouchListener onMapTouchListener) throws RemoteException {
        this.z = onMapTouchListener;
    }

    public void setOnPOIClickListener(OnPOIClickListener onPOIClickListener) throws RemoteException {
        this.A = onPOIClickListener;
    }

    public void setOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) throws RemoteException {
        this.B = onMapLongClickListener;
    }

    public void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) throws RemoteException {
        this.t = onMarkerClickListener;
    }

    public void setOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) throws RemoteException {
        this.u = onPolylineClickListener;
    }

    public void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) throws RemoteException {
        this.v = onMarkerDragListener;
    }

    public void setOnMaploadedListener(OnMapLoadedListener onMapLoadedListener) throws RemoteException {
        this.w = onMapLoadedListener;
    }

    public void setOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) throws RemoteException {
        this.x = onCameraChangeListener;
    }

    public void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) throws RemoteException {
        this.C = onInfoWindowClickListener;
    }

    public void setOnIndoorBuildingActiveListener(OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) throws RemoteException {
        this.D = onIndoorBuildingActiveListener;
    }

    public void setOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        this.E = onMyLocationChangeListener;
    }

    public void setInfoWindowAdapter(InfoWindowAdapter infoWindowAdapter) throws RemoteException {
        if (!this.V && this.J != null) {
            this.J.a(infoWindowAdapter);
        }
    }

    public void setOnMultiPointClickListener(OnMultiPointClickListener onMultiPointClickListener) {
        if (this.aY != null) {
            this.aY.a(onMultiPointClickListener);
        }
    }

    public String getMapContentApprovalNumber() {
        if (this.c == null || this.c.isCustomStyleEnable()) {
            return null;
        }
        return "GS（2017）3426号 | GS（2017）2550";
    }

    public String getSatelliteImageApprovalNumber() {
        return "GS（2017）2906";
    }

    public void setMapLanguage(String str) {
        if (!TextUtils.isEmpty(str) && this.c != null && !this.c.isCustomStyleEnable() && !this.c.getMapLanguage().equals(str)) {
            if (!str.equals("en")) {
                this.c.setMapLanguage("zh_cn");
                this.at = 0;
            } else {
                if (this.ao != 1) {
                    try {
                        setMapType(1);
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
                this.c.setMapLanguage("en");
                this.at = -10000;
            }
            try {
                a(getCameraPosition());
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
            }
            this.R.a(this.c.getMapLanguage());
        }
    }

    public void getMapPrintScreen(onMapPrintScreenListener onmapprintscreenlistener) {
        this.G = onmapprintscreenlistener;
        this.al = true;
        resetRenderTime();
    }

    public void getMapScreenShot(OnMapScreenShotListener onMapScreenShotListener) {
        this.H = onMapScreenShotListener;
        this.al = true;
        resetRenderTime();
    }

    public float getScalePerPixel() throws RemoteException {
        try {
            return ((float) ((((Math.cos((getCameraPosition().target.latitude * 3.141592653589793d) / 180.0d) * 2.0d) * 3.141592653589793d) * 6378137.0d) / (Math.pow(2.0d, (double) g()) * 256.0d))) * r();
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "getScalePerPixel");
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void setRunLowFrame(boolean z2) {
        if (!z2) {
            q();
        }
    }

    public void removecache() throws RemoteException {
        removecache(null);
    }

    public void removecache(OnCacheRemoveListener onCacheRemoveListener) throws RemoteException {
        if (this.i != null && this.f != null) {
            try {
                this.f.setParamater(1, GLMapStaticValue.AM_PARAMETERNAME_ON_OFF_DBLITE, 0, 0, 0, 0);
                d dVar = new d(this.e, onCacheRemoveListener);
                this.i.removeCallbacks(dVar);
                this.i.post(dVar);
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImp", "removecache");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void setCustomRenderer(CustomRenderer customRenderer) throws RemoteException {
        this.au = customRenderer;
    }

    public void setCenterToPixel(int i2, int i3) throws RemoteException {
        this.aa = true;
        this.aT = i2;
        this.aU = i3;
        if (this.aN && this.aM) {
            if (this.c.getAnchorX() != this.aT || this.c.getAnchorY() != this.aU) {
                this.c.setAnchorX(this.aT);
                this.c.setAnchorY(this.aU);
                queueEvent(new Runnable() {
                    public void run() {
                        try {
                            a.this.c.setAnchorX(Math.max(0, Math.min(a.this.aT, a.this.g)));
                            a.this.c.setAnchorY(Math.max(0, Math.min(a.this.aU, a.this.h)));
                            a.this.f.setParamater(1, AMapException.CODE_AMAP_ENGINE_RESPONSE_ERROR, a.this.c.getAnchorX(), a.this.c.getAnchorY(), 0, 0);
                            a.this.as = true;
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                });
            }
        }
    }

    public void setMapTextZIndex(int i2) throws RemoteException {
        this.at = i2;
    }

    public int getMapTextZIndex() throws RemoteException {
        return this.at;
    }

    public void reloadMap() {
    }

    public void setRenderFps(int i2) {
        try {
            this.ax = Math.max(10, Math.min(i2, 40));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setIndoorBuildingInfo(IndoorBuildingInfo indoorBuildingInfo) throws RemoteException {
        if (!this.V && indoorBuildingInfo != null && indoorBuildingInfo.activeFloorName != null && indoorBuildingInfo.poiid != null) {
            this.d = (ad) indoorBuildingInfo;
            resetRenderTime();
            queueEvent(new Runnable() {
                public void run() {
                    if (a.this.f != null) {
                        a.this.f.setIndoorBuildingToBeActive(1, a.this.d.activeFloorName, a.this.d.activeFloorIndex, a.this.d.poiid);
                    }
                }
            });
        }
    }

    public void setAMapGestureListener(AMapGestureListener aMapGestureListener) {
        if (this.aC != null) {
            this.I = aMapGestureListener;
            this.aC.a(aMapGestureListener);
        }
    }

    public float getZoomToSpanLevel(LatLng latLng, LatLng latLng2) {
        MapConfig mapConfig = getMapConfig();
        if (latLng == null || latLng2 == null || !this.aM || this.V) {
            return mapConfig.getS_z();
        }
        Builder builder = new Builder();
        builder.include(latLng);
        builder.include(latLng2);
        GLMapState gLMapState = new GLMapState(1, this.f.getMapEnginePtr());
        Pair a2 = ee.a(mapConfig, 0, 0, 0, 0, builder.build(), getMapWidth(), getMapHeight());
        gLMapState.recycle();
        if (a2 != null) {
            return ((Float) a2.first).floatValue();
        }
        return gLMapState.getMapZoomer();
    }

    public Pair<Float, LatLng> calculateZoomToSpanLevel(int i2, int i3, int i4, int i5, LatLng latLng, LatLng latLng2) {
        if (latLng != null && latLng2 != null && i2 == i3 && i3 == i4 && i4 == i5 && latLng.latitude == latLng2.latitude && latLng.longitude == latLng2.longitude) {
            return new Pair<>(Float.valueOf(getMaxZoomLevel()), latLng);
        }
        MapConfig mapConfig = getMapConfig();
        if (latLng == null || latLng2 == null || !this.aM || this.V) {
            DPoint obtain = DPoint.obtain();
            GLMapState.geo2LonLat(mapConfig.getS_x(), mapConfig.getS_y(), obtain);
            Pair pair = new Pair(Float.valueOf(mapConfig.getS_z()), new LatLng(obtain.y, obtain.x));
            obtain.recycle();
            return pair;
        }
        Builder builder = new Builder();
        builder.include(latLng);
        builder.include(latLng2);
        GLMapState gLMapState = new GLMapState(1, this.f.getMapEnginePtr());
        Pair a2 = ee.a(mapConfig, i2, i3, i4, i5, builder.build(), getMapWidth(), getMapHeight());
        gLMapState.recycle();
        if (a2 == null) {
            return null;
        }
        DPoint obtain2 = DPoint.obtain();
        GLMapState.geo2LonLat(((IPoint) a2.second).x, ((IPoint) a2.second).y, obtain2);
        Pair<Float, LatLng> pair2 = new Pair<>(a2.first, new LatLng(obtain2.y, obtain2.x));
        obtain2.recycle();
        return pair2;
    }

    public InfoWindowAnimationManager getInfoWindowAnimationManager() {
        return new InfoWindowAnimationManager(this.K);
    }

    public void setMaskLayerParams(int i2, int i3, int i4, int i5, final int i6, long j2) {
        GLAlphaAnimation gLAlphaAnimation;
        try {
            if (this.av != null) {
                float f2 = ((float) i5) / 255.0f;
                if (i6 == -1) {
                    gLAlphaAnimation = new GLAlphaAnimation(f2, 0.0f);
                    gLAlphaAnimation.setAnimationListener(new AnimationListener() {
                        public void onAnimationStart() {
                        }

                        public void onAnimationEnd() {
                            a.this.i.post(new Runnable() {
                                public void run() {
                                    a.this.aw = i6;
                                    if (a.this.Q != null) {
                                        a.this.Q.h().setVisibility(0);
                                    }
                                }
                            });
                        }
                    });
                } else {
                    this.aw = i6;
                    gLAlphaAnimation = new GLAlphaAnimation(0.0f, f2);
                    if (((double) f2) > 0.2d) {
                        if (this.Q != null) {
                            this.Q.h().setVisibility(4);
                        }
                    } else if (this.Q != null) {
                        this.Q.h().setVisibility(0);
                    }
                }
                gLAlphaAnimation.setInterpolator(new LinearInterpolator());
                gLAlphaAnimation.setDuration(j2);
                this.av.a(i2, i3, i4, i5);
                this.av.a(gLAlphaAnimation);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setMaxZoomLevel(float f2) {
        this.c.setMaxZoomLevel(f2);
    }

    public void setMinZoomLevel(float f2) {
        this.c.setMinZoomLevel(f2);
    }

    public void resetMinMaxZoomPreference() {
        this.c.resetMinMaxZoomPreference();
        try {
            if (this.N.isZoomControlsEnabled() && this.c.isNeedUpdateZoomControllerState()) {
                this.Y.invalidateZoomController(this.c.getS_z());
            }
        } catch (RemoteException e2) {
        }
    }

    public void setMapStatusLimits(LatLngBounds latLngBounds) {
        try {
            this.c.setLimitLatLngBounds(latLngBounds);
            B();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private boolean a(LatLngBounds latLngBounds) {
        if (latLngBounds == null || latLngBounds.northeast == null || latLngBounds.southwest == null) {
            return false;
        }
        return true;
    }

    private void B() {
        try {
            LatLngBounds limitLatLngBounds = this.c.getLimitLatLngBounds();
            if (this.f != null && a(limitLatLngBounds)) {
                GLMapState gLMapState = new GLMapState(1, this.f.getMapEnginePtr());
                IPoint obtain = IPoint.obtain();
                GLMapState.lonlat2Geo(limitLatLngBounds.northeast.longitude, limitLatLngBounds.northeast.latitude, obtain);
                IPoint obtain2 = IPoint.obtain();
                GLMapState.lonlat2Geo(limitLatLngBounds.southwest.longitude, limitLatLngBounds.southwest.latitude, obtain2);
                this.c.setLimitIPoints(new IPoint[]{obtain, obtain2});
                gLMapState.recycle();
                return;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        this.c.setLimitIPoints(null);
    }

    public Handler getMainHandler() {
        return this.i;
    }

    public void onChangeFinish() {
        Message obtainMessage = this.i.obtainMessage();
        obtainMessage.what = 11;
        this.i.sendMessage(obtainMessage);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z2, CameraPosition cameraPosition) {
        if (this.c != null && this.c.getChangedCounter() != 0) {
            try {
                this.c.resetChangedCounter();
                if (this.I != null) {
                    this.I.onMapStable();
                }
                if (this.x != null && this.P.isEnabled()) {
                    if (cameraPosition == null) {
                        cameraPosition = getCameraPosition();
                    }
                    this.x.onCameraChangeFinish(cameraPosition);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void setZoomScaleParam(float f2) {
        this.aF = f2;
    }

    public void onFling() {
        if (this.R != null) {
            this.R.b(true);
        }
        this.ak = true;
    }

    public int getMapWidth() {
        return this.g;
    }

    public int getMapHeight() {
        return this.h;
    }

    public float getCameraAngle() {
        return p(this.U);
    }

    public boolean isMaploaded() {
        return this.ab;
    }

    public MapConfig getMapConfig() {
        return this.c;
    }

    public View getView() throws RemoteException {
        return this.Q;
    }

    public void setZOrderOnTop(boolean z2) throws RemoteException {
    }

    public void onIndoorBuildingActivity(int i2, byte[] bArr) {
        int i3;
        ad adVar = null;
        if (bArr != null) {
            try {
                ad adVar2 = new ad();
                byte b2 = bArr[0];
                adVar2.a = new String(bArr, 1, b2, "utf-8");
                int i4 = b2 + 1;
                int i5 = i4 + 1;
                byte b3 = bArr[i4];
                adVar2.b = new String(bArr, i5, b3, "utf-8");
                int i6 = b3 + i5;
                int i7 = i6 + 1;
                byte b4 = bArr[i6];
                adVar2.activeFloorName = new String(bArr, i7, b4, "utf-8");
                int i8 = b4 + i7;
                adVar2.activeFloorIndex = GLConvertUtil.getInt(bArr, i8);
                int i9 = i8 + 4;
                int i10 = i9 + 1;
                byte b5 = bArr[i9];
                adVar2.poiid = new String(bArr, i10, b5, "utf-8");
                int i11 = b5 + i10;
                int i12 = i11 + 1;
                byte b6 = bArr[i11];
                adVar2.h = new String(bArr, i12, b6, "utf-8");
                int i13 = b6 + i12;
                adVar2.c = GLConvertUtil.getInt(bArr, i13);
                int i14 = i13 + 4;
                adVar2.floor_indexs = new int[adVar2.c];
                adVar2.floor_names = new String[adVar2.c];
                adVar2.d = new String[adVar2.c];
                for (int i15 = 0; i15 < adVar2.c; i15++) {
                    adVar2.floor_indexs[i15] = GLConvertUtil.getInt(bArr, i14);
                    int i16 = i14 + 4;
                    int i17 = i16 + 1;
                    byte b7 = bArr[i16];
                    if (b7 > 0) {
                        adVar2.floor_names[i15] = new String(bArr, i17, b7, "utf-8");
                        i3 = i17 + b7;
                    } else {
                        i3 = i17;
                    }
                    i14 = i3 + 1;
                    byte b8 = bArr[i3];
                    if (b8 > 0) {
                        adVar2.d[i15] = new String(bArr, i14, b8, "utf-8");
                        i14 += b8;
                    }
                }
                adVar2.e = GLConvertUtil.getInt(bArr, i14);
                int i18 = i14 + 4;
                if (adVar2.e > 0) {
                    adVar2.f = new int[adVar2.e];
                    int i19 = i18;
                    for (int i20 = 0; i20 < adVar2.e; i20++) {
                        adVar2.f[i20] = GLConvertUtil.getInt(bArr, i19);
                        i19 += 4;
                    }
                }
                adVar = adVar2;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return;
            }
        }
        this.bo = adVar;
        a((Runnable) new Runnable() {
            public void run() {
                if (a.this.aV != null) {
                    a.this.aV.a(a.this.bo);
                }
            }
        });
    }

    public AMapCameraInfo getCamerInfo() {
        try {
            GLMapState c2 = c();
            float mapAngle = c2.getMapAngle();
            float f2 = ((float) this.g) / ((float) this.h);
            float fov = c2.getFov();
            int[] iArr = new int[3];
            c2.getCameraPosition(iArr);
            return new AMapCameraInfo(fov, f2, mapAngle, (float) iArr[0], (float) iArr[1], (float) iArr[2]);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public MapTilsCacheAndResManager getMapCacheMgr() {
        if (!this.aM || this.f == null) {
            return null;
        }
        return this.f.getMapCacheMgr();
    }

    public void destroy() {
        this.V = true;
        try {
            if (this.aY != null) {
                this.aY.b();
            }
            if (this.ad != null) {
                this.ad.deactivate();
            }
            this.ad = null;
            this.aV = null;
            if (this.aB != null) {
                this.aB.renderPause();
            }
            if (this.aX != null) {
                this.aX.d();
            }
            if (this.aC != null) {
                this.aC.a((AMapGestureListener) null);
                this.aC.b();
                this.aC = null;
            }
            if (this.S != null) {
                this.S.b();
            }
            if (this.b != null) {
                this.b.i();
            }
            if (this.R != null) {
                this.R.f();
            }
            x();
            if (this.aq != null) {
                this.aq.interrupt();
                this.aq = null;
            }
            if (this.az != null) {
                this.az.a();
                this.az = null;
            }
            if (this.aA != null) {
                this.aA.a((com.amap.api.mapcore.util.db.a) null);
                this.aA.a();
                this.aA = null;
            }
            if (this.f != null) {
                this.f.setMapListener(null);
                queueEvent(new Runnable() {
                    public void run() {
                        try {
                            if (a.this.aX != null) {
                                a.this.aX.c();
                            }
                            a.this.aW.a();
                            a.this.aW = null;
                            a.this.f.destorySurface();
                            a.this.f = null;
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                });
                Thread.sleep(200);
            }
            if (this.J != null) {
                this.J.b();
            }
            if (this.Q != null) {
                this.Q.j();
                this.Q = null;
            }
            if (this.ac != null) {
                this.ac.b();
                this.ac = null;
            }
            this.ad = null;
            C();
            this.ap = null;
            gf.b();
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void C() {
        this.E = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.F = null;
        this.G = null;
        this.H = null;
    }

    public void beforeDrawLabel(int i2, GLMapState gLMapState) {
        o();
        if (this.f != null) {
            this.f.pushRendererState();
        }
        this.S.a(true, this.at);
        if (this.f != null) {
            this.f.popRendererState();
        }
    }

    public void afterDrawLabel(int i2, GLMapState gLMapState) {
        o();
        if (this.f != null) {
            this.f.pushRendererState();
        }
        this.R.b();
        this.S.a(false, this.at);
        if (this.aY != null) {
            this.aY.a(this.c, getViewMatrix(), getProjectionMatrix());
        }
        if (this.b != null) {
            this.b.a();
        }
        if (this.K != null) {
            this.K.b(getMapWidth(), getMapHeight());
        }
        if (this.f != null) {
            this.f.popRendererState();
        }
    }

    public void afterDrawFrame(final int i2, GLMapState gLMapState) {
        float mapZoomer = this.f.getMapState(i2).getMapZoomer();
        if (!this.aI && !this.f.isInMapAnimation(i2)) {
            if (this.aG) {
                this.aB.setRenderFps(10.0f);
            } else if (this.ax != -1) {
                this.aB.setRenderFps((float) this.ax);
            } else {
                this.aB.setRenderFps(15.0f);
            }
            if (this.aK == 1) {
                this.aK = 0;
            }
            if (this.aE != mapZoomer) {
                this.aE = mapZoomer;
            }
        }
        if (!this.aQ) {
            this.aQ = true;
            a((Runnable) new Runnable() {
                public void run() {
                    if (a.this.X != null) {
                        a.this.X.onSurfaceChanged(i2, a.this.g, a.this.h);
                    }
                }
            });
        }
    }

    public long createGLOverlay(int i2) {
        if (this.f != null) {
            return this.f.createOverlay(1, i2);
        }
        return 0;
    }

    public long getGlOverlayMgrPtr() {
        if (this.f != null) {
            return this.f.getGlOverlayMgrPtr(1);
        }
        return 0;
    }

    public CrossOverlay addCrossVector(CrossOverlayOptions crossOverlayOptions) {
        if (crossOverlayOptions == null || crossOverlayOptions.getRes() == null) {
            return null;
        }
        CrossVectorOverlay crossVectorOverlay = new CrossVectorOverlay(1, t(), this);
        if (crossOverlayOptions != null) {
            crossVectorOverlay.setAttribute(crossOverlayOptions.getAttribute());
        }
        if (this.f != null) {
            this.f.getOvelayBundle(1).addOverlay(crossVectorOverlay);
            crossVectorOverlay.resumeMarker(crossOverlayOptions.getRes());
        }
        return new CrossOverlay(crossOverlayOptions, crossVectorOverlay);
    }

    public RouteOverlay addNaviRouteOverlay() {
        if (!this.aM || this.f == null) {
            return null;
        }
        return new RouteOverlay(new BaseRouteOverlay(1, t(), this));
    }

    public void addOverlayTexture(int i2, GLTextureProperty gLTextureProperty) {
        if (this.f != null) {
            this.f.addOverlayTexture(i2, gLTextureProperty);
            this.f.getOvelayBundle(1).addOverlayTextureItem(gLTextureProperty.mId, gLTextureProperty.mAnchor, gLTextureProperty.mXRatio, gLTextureProperty.mYRatio, gLTextureProperty.mBitmap.getWidth(), gLTextureProperty.mBitmap.getHeight());
        }
    }

    public void setCustomMapStylePath(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.c.getCustomStylePath())) {
            this.c.setCustomStylePath(str);
            this.O = true;
        }
    }

    public void setCustomMapStyleID(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.c.getCustomStyleID())) {
            this.c.setCustomStyleID(str);
            this.O = true;
        }
    }

    public void setCustomTextureResourcePath(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.c.setCustomTextureResourcePath(str);
        }
    }

    public MyLocationStyle getMyLocationStyle() throws RemoteException {
        if (this.ac != null) {
            return this.ac.a();
        }
        return null;
    }

    public void setMapCustomEnable(boolean z2) {
        if (!this.aM || this.V) {
            this.bd.b = true;
            this.bd.c = z2;
        } else if (!TextUtils.isEmpty(this.c.getCustomStylePath()) || !TextUtils.isEmpty(this.c.getCustomStyleID())) {
            if (z2) {
                try {
                    if (!TextUtils.isEmpty(this.c.getCustomStyleID()) && this.az != null) {
                        this.az.a(this.c.getCustomStyleID());
                        this.az.b();
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                    return;
                }
            }
            if (this.O || (this.c.isCustomStyleEnable() ^ z2)) {
                a(z2, (byte[]) null, false);
            }
            this.O = false;
        }
    }

    public void a(boolean z2, byte[] bArr) {
        a(z2, bArr, false);
    }

    public void a(boolean z2, byte[] bArr, boolean z3) {
        StyleItem[] styleItemArr;
        dg dgVar;
        boolean z4 = false;
        this.c.setCustomStyleEnable(z2);
        this.N.setLogoEnable(!z2);
        if (z2) {
            g(1, true);
            df dfVar = new df(this.e);
            if (!TextUtils.isEmpty(this.c.getCustomTextureResourcePath())) {
                z4 = true;
            }
            if (bArr != null) {
                dgVar = dfVar.a(bArr, z4);
                styleItemArr = dgVar != null ? dgVar.c() : null;
            } else {
                styleItemArr = null;
                dgVar = null;
            }
            if (styleItemArr == null) {
                dgVar = dfVar.a(this.c.getCustomStylePath(), z4);
                if (dgVar != null) {
                    styleItemArr = dgVar.c();
                }
            }
            if (dfVar.a() != 0) {
                this.c.setCustomBackgroundColor(dfVar.a());
            }
            if (dgVar == null || dgVar.d() == null) {
                a(styleItemArr, z3);
            } else if (this.aA != null) {
                this.aA.a((String) dgVar.d());
                this.aA.a(dgVar);
                this.aA.b();
            }
        } else {
            g(1, false);
            a(1, this.c.getMapStyleMode(), this.c.getMapStyleTime(), this.c.getMapStyleState(), true, false, (StyleItem[]) null);
        }
    }

    public void a(String str, dg dgVar) {
        setCustomTextureResourcePath(str);
        if (this.c.isCustomStyleEnable() && dgVar != null) {
            a(dgVar.c(), false);
        }
    }

    /* access modifiers changed from: protected */
    public void a(StyleItem[] styleItemArr, boolean z2) {
        if (z2 || (styleItemArr != null && styleItemArr.length > 0)) {
            a(1, 0, 0, 0, true, true, styleItemArr);
            ed.a(this.e, true);
            return;
        }
        ed.a(this.e, false);
    }

    public void removeGLOverlay(BaseMapOverlay baseMapOverlay) {
        if (this.f != null) {
            this.f.getOvelayBundle(1).removeOverlay(baseMapOverlay);
        }
    }

    public float[] u() {
        if (this.f != null) {
            GLMapState mapState = this.f.getMapState(1);
            mapState.getViewMatrix(this.n);
            mapState.getProjectionMatrix(this.o);
            if (this.n == null || this.o == null) {
                return this.m;
            }
            Matrix.multiplyMM(this.m, 0, this.o, 0, this.n, 0);
        }
        return this.m;
    }

    public String c(String str) {
        if (this.S != null) {
            return this.S.a(str);
        }
        return null;
    }

    public void h(boolean z2) {
        if (!this.V) {
            this.Q.f(z2);
        }
    }

    public float[] getViewMatrix() {
        if (this.aM && this.aN && this.f != null) {
            GLMapState mapState = this.f.getMapState(1);
            if (mapState != null) {
                mapState.getViewMatrix(this.n);
            }
        }
        return this.n;
    }

    public float[] getProjectionMatrix() {
        if (this.aM && this.aN && this.f != null) {
            GLMapState mapState = this.f.getMapState(1);
            if (mapState != null) {
                mapState.getProjectionMatrix(this.o);
            }
        }
        return this.o;
    }

    public void changeSurface(GL10 gl10, int i2, int i3) {
        try {
            a(1, gl10, i2, i3);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void createSurface(GL10 gl10, EGLConfig eGLConfig) {
        try {
            a(1, gl10, eGLConfig);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void renderSurface(GL10 gl10) {
        drawFrame(gl10);
    }

    public boolean canStopMapRender() {
        if (this.f != null) {
            this.f.canStopMapRender(1);
        }
        return true;
    }

    public void getLatLngRect(DPoint[] dPointArr) {
        try {
            Rectangle geoRectangle = this.c.getGeoRectangle();
            if (geoRectangle != null) {
                IPoint[] clipRect = geoRectangle.getClipRect();
                for (int i2 = 0; i2 < 4; i2++) {
                    GLMapState.geo2LonLat(clipRect[i2].x, clipRect[i2].y, dPointArr[i2]);
                }
            }
        } catch (Throwable th) {
        }
    }

    public void checkMapState(GLMapState gLMapState) {
        if (this.c != null && !this.V) {
            LatLngBounds limitLatLngBounds = this.c.getLimitLatLngBounds();
            if (limitLatLngBounds != null) {
                try {
                    IPoint[] limitIPoints = this.c.getLimitIPoints();
                    if (limitIPoints == null) {
                        IPoint obtain = IPoint.obtain();
                        GLMapState.lonlat2Geo(limitLatLngBounds.northeast.longitude, limitLatLngBounds.northeast.latitude, obtain);
                        IPoint obtain2 = IPoint.obtain();
                        GLMapState.lonlat2Geo(limitLatLngBounds.southwest.longitude, limitLatLngBounds.southwest.latitude, obtain2);
                        limitIPoints = new IPoint[]{obtain, obtain2};
                        this.c.setLimitIPoints(limitIPoints);
                    }
                    IPoint[] iPointArr = limitIPoints;
                    float b2 = ee.b(this.c, iPointArr[0].x, iPointArr[0].y, iPointArr[1].x, iPointArr[1].y, getMapWidth(), getMapHeight());
                    float mapZoomer = gLMapState.getMapZoomer();
                    if (this.c.isSetLimitZoomLevel()) {
                        float maxZoomLevel = this.c.getMaxZoomLevel();
                        float minZoomLevel = this.c.getMinZoomLevel();
                        if (b2 < maxZoomLevel && b2 > minZoomLevel) {
                            b2 = Math.max(b2, Math.min(mapZoomer, maxZoomLevel));
                        }
                    } else if (b2 <= 0.0f || mapZoomer >= b2) {
                        b2 = mapZoomer;
                    }
                    gLMapState.setMapZoomer(b2);
                    IPoint obtain3 = IPoint.obtain();
                    gLMapState.getGeoCenter(obtain3);
                    int i2 = obtain3.x;
                    int i3 = obtain3.y;
                    int[] a2 = ee.a(iPointArr[0].x, iPointArr[0].y, iPointArr[1].x, iPointArr[1].y, this.c, gLMapState, i2, i3);
                    if (a2 != null && a2.length == 2) {
                        i2 = a2[0];
                        i3 = a2[1];
                    }
                    gLMapState.setMapGeoCenter(i2, i3);
                    obtain3.recycle();
                } catch (Throwable th) {
                }
            } else if (this.c.isSetLimitZoomLevel()) {
                gLMapState.setMapZoomer(Math.max(this.c.getMinZoomLevel(), Math.min(gLMapState.getMapZoomer(), this.c.getMaxZoomLevel())));
            }
        }
    }

    public void setRenderMode(int i2) {
        if (this.P != null) {
            this.W = i2;
            this.P.setRenderMode(i2);
        }
    }

    public cw t(int i2) {
        if (this.aW == null) {
            return null;
        }
        return this.aW.a(i2);
    }

    public cx v() {
        return this.aW;
    }

    public void b(int i2, int i3) {
        if (this.c != null) {
            this.g = i2;
            this.h = i3;
            this.c.setMapWidth(i2);
            this.c.setMapHeight(i3);
        }
    }

    public void i(boolean z2) {
        if (this.c != null) {
            this.c.setHideLogoEnble(z2);
            if (this.c.isCustomStyleEnable()) {
                this.N.setLogoEnable(!z2);
            }
        }
    }
}
