package com.ifengyu.intercom.ui.map.e.a;

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
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ClusterOverlay.java */
/* loaded from: classes2.dex */
public class d implements AMap.OnCameraChangeListener, AMap.OnMarkerClickListener {

    /* renamed from: a  reason: collision with root package name */
    private AMap f6521a;

    /* renamed from: b  reason: collision with root package name */
    private Context f6522b;

    /* renamed from: c  reason: collision with root package name */
    private List<c> f6523c;
    private int e;
    private b f;
    private double h;
    private Handler k;
    private Handler l;
    private float m;
    private float o;
    private List<Marker> g = new ArrayList();
    private HandlerThread i = new HandlerThread("addMarker");
    private HandlerThread j = new HandlerThread("calculateCluster");
    private boolean n = false;
    private AlphaAnimation p = new AlphaAnimation(0.0f, 1.0f);
    private List<a> d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* loaded from: classes2.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                d.this.a((List) message.obj);
            } else if (i == 1) {
                d.this.a((a) message.obj);
            } else if (i == 2) {
                d.this.b((a) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* loaded from: classes2.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        private List<Marker> f6525a;

        b(d dVar, List<Marker> list) {
            this.f6525a = list;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            for (Marker marker : this.f6525a) {
                marker.remove();
            }
            this.f6525a.clear();
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationStart() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClusterOverlay.java */
    /* loaded from: classes2.dex */
    public class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                d.this.d();
            } else if (i == 1) {
                c cVar = (c) message.obj;
                Iterator it = d.this.f6523c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    c cVar2 = (c) it.next();
                    if (cVar2.a().equals(cVar.a())) {
                        d.this.f6523c.remove(cVar2);
                        break;
                    }
                }
                d.this.f6523c.add(cVar);
                d.this.d();
            }
        }
    }

    public d(AMap aMap, List<c> list, int i, Context context) {
        this.f6523c = list;
        this.f6522b = context;
        this.f6521a = aMap;
        this.e = i;
        float scalePerPixel = aMap.getScalePerPixel();
        this.m = scalePerPixel;
        this.h = scalePerPixel * i;
        aMap.setOnCameraChangeListener(this);
        aMap.setOnMarkerClickListener(this);
        e();
        a();
        this.o = this.f6521a.getCameraPosition().zoom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.n = false;
        this.d.clear();
        LatLngBounds latLngBounds = this.f6521a.getProjection().getVisibleRegion().latLngBounds;
        for (c cVar : this.f6523c) {
            if (!this.n) {
                LatLng position = cVar.getPosition();
                a a2 = a(position, this.d);
                if (a2 != null) {
                    a2.a(cVar);
                } else {
                    a aVar = new a(position);
                    this.d.add(aVar);
                    aVar.a(cVar);
                }
            } else {
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.d);
        Message obtain = Message.obtain();
        obtain.what = 0;
        obtain.obj = arrayList;
        if (!this.n) {
            this.k.sendMessage(obtain);
        }
    }

    private void e() {
        this.i.start();
        this.j.start();
        this.k = new a(this.i.getLooper());
        this.l = new c(this.j.getLooper());
    }

    public void c() {
        for (Marker marker : this.g) {
            marker.remove();
        }
        this.g.clear();
        List<c> list = this.f6523c;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.amap.api.maps.AMap.OnCameraChangeListener
    public void onCameraChange(CameraPosition cameraPosition) {
    }

    @Override // com.amap.api.maps.AMap.OnCameraChangeListener
    public void onCameraChangeFinish(CameraPosition cameraPosition) {
        if (cameraPosition.zoom != this.o) {
            float scalePerPixel = this.f6521a.getScalePerPixel();
            this.m = scalePerPixel;
            this.h = scalePerPixel * this.e;
            a();
            this.o = cameraPosition.zoom;
        }
    }

    @Override // com.amap.api.maps.AMap.OnMarkerClickListener
    public boolean onMarkerClick(Marker marker) {
        if (this.f == null) {
            return true;
        }
        a aVar = (a) marker.getObject();
        if (aVar == null) {
            return false;
        }
        this.f.a(marker, aVar);
        return true;
    }

    public void b() {
        this.n = true;
        this.l.removeCallbacksAndMessages(null);
        this.k.removeCallbacksAndMessages(null);
        this.j.quit();
        this.i.quit();
        for (Marker marker : this.g) {
            marker.remove();
        }
        this.g.clear();
        List<c> list = this.f6523c;
        if (list != null) {
            list.clear();
        }
    }

    public void a(b bVar) {
        this.f = bVar;
    }

    public void a(c cVar) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = cVar;
        this.l.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<a> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.g);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        b bVar = new b(this, arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Marker marker = (Marker) it.next();
            marker.setAnimation(alphaAnimation);
            marker.setAnimationListener(bVar);
            marker.startAnimation();
        }
        for (a aVar : list) {
            a(aVar);
        }
    }

    private BitmapDescriptor b(List<c> list) {
        boolean z = true;
        String str = null;
        if (list.size() == 1) {
            View inflate = View.inflate(this.f6522b, R.layout.map_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
            e eVar = (e) list.get(0);
            String imgUrl = eVar.b().getImgUrl();
            if (imgUrl != null) {
                Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(imgUrl, new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
                if (loadImageSync == null) {
                    loadImageSync = ImageLoader.getInstance().loadImageSync("drawable://2131231134", new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
                }
                if (a(eVar.b().getTime()) && loadImageSync != null) {
                    loadImageSync = c0.a(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
            }
            return BitmapDescriptorFactory.fromView(inflate);
        }
        View inflate2 = View.inflate(this.f6522b, R.layout.map_cluster_marker_item, null);
        ImageView imageView2 = (ImageView) inflate2.findViewById(R.id.map_cluster_item_portrait_iv);
        TextView textView = (TextView) inflate2.findViewById(R.id.map_cluster_item_number_tv);
        textView.setText(k0.a((int) R.string.person, Integer.valueOf(list.size())));
        Iterator<c> it = list.iterator();
        e eVar2 = null;
        int i = 0;
        while (it.hasNext()) {
            e eVar3 = (e) it.next();
            int time = eVar3.b().getTime();
            if (time > i) {
                eVar2 = eVar3;
                i = time;
            }
            if (!a(time)) {
                z = false;
            }
        }
        if (eVar2 != null) {
            str = eVar2.b().getImgUrl();
        }
        if (str != null) {
            Bitmap loadImageSync2 = ImageLoader.getInstance().loadImageSync(str, new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
            if (loadImageSync2 == null) {
                loadImageSync2 = ImageLoader.getInstance().loadImageSync("drawable://2131231134", new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
            }
            if (z && loadImageSync2 != null) {
                loadImageSync2 = c0.a(loadImageSync2);
            }
            imageView2.setImageBitmap(loadImageSync2);
        }
        if (z) {
            textView.setBackground(this.f6522b.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
        } else {
            textView.setBackground(this.f6522b.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_bg));
        }
        return BitmapDescriptorFactory.fromView(inflate2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        LatLng a2 = aVar.a();
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.anchor(0.5f, 1.0f).icon(b(aVar.b())).position(a2).title("是经济数据").infoWindowEnable(true);
        Marker addMarker = this.f6521a.addMarker(markerOptions);
        addMarker.setAnimation(this.p);
        addMarker.setObject(aVar);
        addMarker.startAnimation();
        aVar.a(addMarker);
        this.g.add(addMarker);
    }

    public void a() {
        this.n = true;
        this.l.removeMessages(0);
        this.l.sendEmptyMessage(0);
    }

    private a a(LatLng latLng, List<a> list) {
        for (a aVar : list) {
            if (AMapUtils.calculateLineDistance(latLng, aVar.a()) < this.h) {
                return aVar;
            }
        }
        return null;
    }

    private boolean a(int i) {
        return (System.currentTimeMillis() / 1000) - ((long) i) > 900;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(a aVar) {
        aVar.c().setIcon(b(aVar.b()));
    }
}
