package com.ifengyu.intercom.p216ui.p218c.p220g;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.animation.AlphaAnimation;
import com.amap.api.maps.model.animation.Animation;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.c.g.d */
/* loaded from: classes2.dex */
public class ClusterOverlay implements AMap.OnCameraChangeListener, AMap.OnMarkerClickListener {

    /* renamed from: a */
    private AMap f15095a;

    /* renamed from: b */
    private Context f15096b;

    /* renamed from: c */
    private List<ClusterItem> f15097c;

    /* renamed from: e */
    private int f15099e;

    /* renamed from: f */
    private ClusterClickListener f15100f;

    /* renamed from: h */
    private double f15102h;

    /* renamed from: k */
    private Handler f15105k;

    /* renamed from: l */
    private Handler f15106l;

    /* renamed from: m */
    private float f15107m;

    /* renamed from: o */
    private float f15109o;

    /* renamed from: g */
    private List<Marker> f15101g = new ArrayList();

    /* renamed from: i */
    private final HandlerThread f15103i = new HandlerThread("addMarker");

    /* renamed from: j */
    private final HandlerThread f15104j = new HandlerThread("calculateCluster");

    /* renamed from: n */
    private boolean f15108n = false;

    /* renamed from: p */
    private AlphaAnimation f15110p = new AlphaAnimation(BitmapDescriptorFactory.HUE_RED, 1.0f);

    /* renamed from: d */
    private List<Cluster> f15098d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* renamed from: com.ifengyu.intercom.ui.c.g.d$a */
    /* loaded from: classes2.dex */
    public class HandlerC4468a extends Handler {
        HandlerC4468a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                ClusterOverlay.this.m10219g((List) message.obj);
            } else if (i == 1) {
                ClusterOverlay.this.m10218h((Cluster) message.obj);
            } else if (i != 2) {
            } else {
                ClusterOverlay.this.m10208r((Cluster) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* renamed from: com.ifengyu.intercom.ui.c.g.d$b */
    /* loaded from: classes2.dex */
    public class C4469b implements Animation.AnimationListener {

        /* renamed from: a */
        private List<Marker> f15112a;

        C4469b(ClusterOverlay clusterOverlay, List<Marker> list) {
            this.f15112a = list;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            for (Marker marker : this.f15112a) {
                marker.remove();
            }
            this.f15112a.clear();
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationStart() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* renamed from: com.ifengyu.intercom.ui.c.g.d$c */
    /* loaded from: classes2.dex */
    public class HandlerC4470c extends Handler {
        HandlerC4470c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                ClusterOverlay.this.m10216j();
            } else if (i != 1) {
            } else {
                ClusterItem clusterItem = (ClusterItem) message.obj;
                Iterator it2 = ClusterOverlay.this.f15097c.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    ClusterItem clusterItem2 = (ClusterItem) it2.next();
                    if (clusterItem2.m10226c().equals(clusterItem.m10226c())) {
                        ClusterOverlay.this.f15097c.remove(clusterItem2);
                        break;
                    }
                }
                ClusterOverlay.this.f15097c.add(clusterItem);
                ClusterOverlay.this.m10216j();
            }
        }
    }

    public ClusterOverlay(AMap aMap, List<ClusterItem> list, int i, Context context) {
        this.f15097c = list;
        this.f15096b = context;
        this.f15095a = aMap;
        this.f15099e = i;
        float scalePerPixel = aMap.getScalePerPixel();
        this.f15107m = scalePerPixel;
        this.f15102h = scalePerPixel * i;
        aMap.setOnCameraChangeListener(this);
        aMap.setOnMarkerClickListener(this);
        m10213m();
        m10217i();
        this.f15109o = this.f15095a.getCameraPosition().zoom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m10219g(List<Cluster> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f15101g);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, BitmapDescriptorFactory.HUE_RED);
        C4469b c4469b = new C4469b(this, arrayList);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Marker marker = (Marker) it2.next();
            marker.setAnimation(alphaAnimation);
            marker.setAnimationListener(c4469b);
            marker.startAnimation();
        }
        for (Cluster cluster : list) {
            m10218h(cluster);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m10218h(Cluster cluster) {
        LatLng m10233b = cluster.m10233b();
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.anchor(0.5f, 1.0f).icon(m10215k(cluster.m10232c())).position(m10233b).title("").infoWindowEnable(true);
        Marker addMarker = this.f15095a.addMarker(markerOptions);
        addMarker.setAnimation(this.f15110p);
        addMarker.setObject(cluster);
        addMarker.startAnimation();
        cluster.m10230e(addMarker);
        this.f15101g.add(addMarker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m10216j() {
        this.f15108n = false;
        this.f15098d.clear();
        LatLngBounds latLngBounds = this.f15095a.getProjection().getVisibleRegion().latLngBounds;
        for (ClusterItem clusterItem : this.f15097c) {
            if (this.f15108n) {
                return;
            }
            LatLng m10227b = clusterItem.m10227b();
            Cluster m10214l = m10214l(m10227b, this.f15098d);
            if (m10214l != null) {
                m10214l.m10234a(clusterItem);
            } else {
                Cluster cluster = new Cluster(m10227b);
                this.f15098d.add(cluster);
                cluster.m10234a(clusterItem);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f15098d);
        Message obtain = Message.obtain();
        obtain.what = 0;
        obtain.obj = arrayList;
        if (this.f15108n) {
            return;
        }
        this.f15105k.sendMessage(obtain);
    }

    /* renamed from: k */
    private BitmapDescriptor m10215k(List<ClusterItem> list) {
        boolean z = true;
        if (list.size() == 1) {
            View inflate = View.inflate(this.f15096b, R.layout.map_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
            ClusterItem clusterItem = list.get(0);
            String imgUrl = clusterItem.m10228a().getImgUrl();
            if (imgUrl != null) {
                Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(imgUrl, new ImageSize((int) MethodsUtils.m11292h(50.0f), (int) MethodsUtils.m11292h(50.0f)));
                if (loadImageSync == null) {
                    loadImageSync = ImageLoader.getInstance().loadImageSync("drawable://2131231177", new ImageSize((int) MethodsUtils.m11292h(50.0f), (int) MethodsUtils.m11292h(50.0f)));
                }
                if (m10212n(clusterItem.m10228a().getTime()) && loadImageSync != null) {
                    loadImageSync = MethodsUtils.m11294f(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
            }
            return BitmapDescriptorFactory.fromView(inflate);
        }
        View inflate2 = View.inflate(this.f15096b, R.layout.map_cluster_marker_item, null);
        ImageView imageView2 = (ImageView) inflate2.findViewById(R.id.map_cluster_item_portrait_iv);
        TextView textView = (TextView) inflate2.findViewById(R.id.map_cluster_item_number_tv);
        textView.setText(UIUtils.m8602p(R.string.person, Integer.valueOf(list.size())));
        ClusterItem clusterItem2 = null;
        int i = 0;
        for (ClusterItem clusterItem3 : list) {
            int time = clusterItem3.m10228a().getTime();
            if (time > i) {
                clusterItem2 = clusterItem3;
                i = time;
            }
            if (!m10212n(time)) {
                z = false;
            }
        }
        String imgUrl2 = clusterItem2 != null ? clusterItem2.m10228a().getImgUrl() : null;
        if (imgUrl2 != null) {
            Bitmap loadImageSync2 = ImageLoader.getInstance().loadImageSync(imgUrl2, new ImageSize((int) MethodsUtils.m11292h(50.0f), (int) MethodsUtils.m11292h(50.0f)));
            if (loadImageSync2 == null) {
                loadImageSync2 = ImageLoader.getInstance().loadImageSync("drawable://2131231177", new ImageSize((int) MethodsUtils.m11292h(50.0f), (int) MethodsUtils.m11292h(50.0f)));
            }
            if (z && loadImageSync2 != null) {
                loadImageSync2 = MethodsUtils.m11294f(loadImageSync2);
            }
            imageView2.setImageBitmap(loadImageSync2);
        }
        if (z) {
            textView.setBackground(this.f15096b.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
        } else {
            textView.setBackground(this.f15096b.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_bg));
        }
        return BitmapDescriptorFactory.fromView(inflate2);
    }

    /* renamed from: l */
    private Cluster m10214l(LatLng latLng, List<Cluster> list) {
        for (Cluster cluster : list) {
            if (AMapUtils.calculateLineDistance(latLng, cluster.m10233b()) < this.f15102h) {
                return cluster;
            }
        }
        return null;
    }

    /* renamed from: m */
    private void m10213m() {
        this.f15103i.start();
        this.f15104j.start();
        this.f15105k = new HandlerC4468a(this.f15103i.getLooper());
        this.f15106l = new HandlerC4470c(this.f15104j.getLooper());
    }

    /* renamed from: n */
    private boolean m10212n(int i) {
        return (System.currentTimeMillis() / 1000) - ((long) i) > 900;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m10208r(Cluster cluster) {
        cluster.m10231d().setIcon(m10215k(cluster.m10232c()));
    }

    /* renamed from: f */
    public void m10220f(ClusterItem clusterItem) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = clusterItem;
        this.f15106l.sendMessage(obtain);
    }

    /* renamed from: i */
    public void m10217i() {
        this.f15108n = true;
        this.f15106l.removeMessages(0);
        this.f15106l.sendEmptyMessage(0);
    }

    /* renamed from: o */
    public void m10211o() {
        this.f15108n = true;
        this.f15106l.removeCallbacksAndMessages(null);
        this.f15105k.removeCallbacksAndMessages(null);
        this.f15104j.quit();
        this.f15103i.quit();
        for (Marker marker : this.f15101g) {
            marker.remove();
        }
        this.f15101g.clear();
        List<ClusterItem> list = this.f15097c;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.amap.api.maps.AMap.OnCameraChangeListener
    public void onCameraChange(CameraPosition cameraPosition) {
    }

    @Override // com.amap.api.maps.AMap.OnCameraChangeListener
    public void onCameraChangeFinish(CameraPosition cameraPosition) {
        if (cameraPosition.zoom != this.f15109o) {
            float scalePerPixel = this.f15095a.getScalePerPixel();
            this.f15107m = scalePerPixel;
            this.f15102h = scalePerPixel * this.f15099e;
            m10217i();
            this.f15109o = cameraPosition.zoom;
        }
    }

    @Override // com.amap.api.maps.AMap.OnMarkerClickListener
    public boolean onMarkerClick(Marker marker) {
        if (this.f15100f == null) {
            return true;
        }
        Cluster cluster = (Cluster) marker.getObject();
        if (cluster != null) {
            this.f15100f.mo10229s1(marker, cluster);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public void m10210p() {
        for (Marker marker : this.f15101g) {
            marker.remove();
        }
        this.f15101g.clear();
        List<ClusterItem> list = this.f15097c;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: q */
    public void m10209q(ClusterClickListener clusterClickListener) {
        this.f15100f = clusterClickListener;
    }
}
