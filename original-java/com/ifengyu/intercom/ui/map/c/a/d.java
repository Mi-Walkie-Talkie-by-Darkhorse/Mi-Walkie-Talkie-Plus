package com.ifengyu.intercom.ui.map.c.a;

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
import com.amap.api.maps.AMap.OnCameraChangeListener;
import com.amap.api.maps.AMap.OnMarkerClickListener;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.animation.AlphaAnimation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ClusterOverlay */
public class d implements OnCameraChangeListener, OnMarkerClickListener {
    private AMap a;
    private Context b;
    /* access modifiers changed from: private */
    public List<c> c;
    private List<a> d;
    private int e;
    private b f;
    private List<Marker> g = new ArrayList();
    private double h;
    private HandlerThread i = new HandlerThread("addMarker");
    private HandlerThread j = new HandlerThread("calculateCluster");
    private Handler k;
    private Handler l;
    private float m;
    private boolean n = false;
    private float o;
    private AlphaAnimation p = new AlphaAnimation(0.0f, 1.0f);

    /* compiled from: ClusterOverlay */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    d.this.a((List) message.obj);
                    return;
                case 1:
                    d.this.a((a) message.obj);
                    return;
                case 2:
                    d.this.b((a) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    /* compiled from: ClusterOverlay */
    class b implements AnimationListener {
        private List<Marker> b;

        b(List<Marker> list) {
            this.b = list;
        }

        public void onAnimationStart() {
        }

        public void onAnimationEnd() {
            for (Marker remove : this.b) {
                remove.remove();
            }
            this.b.clear();
        }
    }

    /* compiled from: ClusterOverlay */
    class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    d.this.e();
                    return;
                case 1:
                    c cVar = (c) message.obj;
                    Iterator it = d.this.c.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            c cVar2 = (c) it.next();
                            if (cVar2.b().equals(cVar.b())) {
                                d.this.c.remove(cVar2);
                            }
                        }
                    }
                    d.this.c.add(cVar);
                    d.this.e();
                    return;
                default:
                    return;
            }
        }
    }

    public d(AMap aMap, List<c> list, int i2, Context context) {
        this.c = list;
        this.b = context;
        this.d = new ArrayList();
        this.a = aMap;
        this.e = i2;
        this.m = this.a.getScalePerPixel();
        this.h = (double) (this.m * ((float) i2));
        aMap.setOnCameraChangeListener(this);
        aMap.setOnMarkerClickListener(this);
        d();
        c();
        this.o = this.a.getCameraPosition().zoom;
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

    public void a() {
        this.n = true;
        this.l.removeCallbacksAndMessages(null);
        this.k.removeCallbacksAndMessages(null);
        this.j.quit();
        this.i.quit();
        for (Marker remove : this.g) {
            remove.remove();
        }
        this.g.clear();
        if (this.c != null) {
            this.c.clear();
        }
    }

    public void b() {
        for (Marker remove : this.g) {
            remove.remove();
        }
        this.g.clear();
        if (this.c != null) {
            this.c.clear();
        }
    }

    private void d() {
        this.i.start();
        this.j.start();
        this.k = new a(this.i.getLooper());
        this.l = new c(this.j.getLooper());
    }

    public void onCameraChange(CameraPosition cameraPosition) {
    }

    public void onCameraChangeFinish(CameraPosition cameraPosition) {
        if (cameraPosition.zoom != this.o) {
            this.m = this.a.getScalePerPixel();
            this.h = (double) (this.m * ((float) this.e));
            c();
            this.o = cameraPosition.zoom;
        }
    }

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

    /* access modifiers changed from: private */
    public void a(List<a> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.g);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        b bVar = new b(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Marker marker = (Marker) it.next();
            marker.setAnimation(alphaAnimation);
            marker.setAnimationListener(bVar);
            marker.startAnimation();
        }
        for (a a2 : list) {
            a(a2);
        }
    }

    /* access modifiers changed from: private */
    public void a(a aVar) {
        LatLng a2 = aVar.a();
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.anchor(0.5f, 1.0f).icon(b(aVar.c())).position(a2).title("是经济数据").infoWindowEnable(true);
        Marker addMarker = this.a.addMarker(markerOptions);
        addMarker.setAnimation(this.p);
        addMarker.setObject(aVar);
        addMarker.startAnimation();
        aVar.a(addMarker);
        this.g.add(addMarker);
    }

    /* access modifiers changed from: private */
    public void e() {
        this.n = false;
        this.d.clear();
        LatLngBounds latLngBounds = this.a.getProjection().getVisibleRegion().latLngBounds;
        for (c cVar : this.c) {
            if (!this.n) {
                LatLng a2 = cVar.a();
                a a3 = a(a2, this.d);
                if (a3 != null) {
                    a3.a(cVar);
                } else {
                    a aVar = new a(a2);
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

    public void c() {
        this.n = true;
        this.l.removeMessages(0);
        this.l.sendEmptyMessage(0);
    }

    private a a(LatLng latLng, List<a> list) {
        for (a aVar : list) {
            if (((double) AMapUtils.calculateLineDistance(latLng, aVar.a())) < this.h) {
                return aVar;
            }
        }
        return null;
    }

    private BitmapDescriptor b(List<c> list) {
        int i2;
        e eVar;
        boolean z;
        Bitmap bitmap;
        boolean z2 = true;
        String str = null;
        if (list.size() == 1) {
            View inflate = View.inflate(this.b, R.layout.map_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
            e eVar2 = (e) list.get(0);
            String imgUrl = eVar2.c().getImgUrl();
            if (imgUrl != null) {
                Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(imgUrl, new ImageSize((int) v.a(50.0f), (int) v.a(50.0f)));
                if (!a(eVar2.c().getTime()) || loadImageSync == null) {
                    bitmap = loadImageSync;
                } else {
                    bitmap = v.a(loadImageSync);
                }
                imageView.setImageBitmap(bitmap);
            }
            return BitmapDescriptorFactory.fromView(inflate);
        }
        View inflate2 = View.inflate(this.b, R.layout.map_cluster_marker_item, null);
        ImageView imageView2 = (ImageView) inflate2.findViewById(R.id.map_cluster_item_portrait_iv);
        ((TextView) inflate2.findViewById(R.id.map_cluster_item_number_tv)).setText(ad.a((int) R.string.person, Integer.valueOf(list.size())));
        int i3 = 0;
        e eVar3 = null;
        for (c cVar : list) {
            e eVar4 = (e) cVar;
            int time = eVar4.c().getTime();
            if (time > i3) {
                eVar = eVar4;
                i2 = time;
            } else {
                i2 = i3;
                eVar = eVar3;
            }
            if (!a(time)) {
                z = false;
            } else {
                z = z2;
            }
            z2 = z;
            eVar3 = eVar;
            i3 = i2;
        }
        if (eVar3 != null) {
            str = eVar3.c().getImgUrl();
        }
        if (str != null) {
            Bitmap loadImageSync2 = ImageLoader.getInstance().loadImageSync(str, new ImageSize((int) v.a(50.0f), (int) v.a(50.0f)));
            if (z2) {
                loadImageSync2 = v.a(loadImageSync2);
            }
            imageView2.setImageBitmap(loadImageSync2);
        }
        return BitmapDescriptorFactory.fromView(inflate2);
    }

    /* access modifiers changed from: private */
    public void b(a aVar) {
        aVar.b().setIcon(b(aVar.c()));
    }

    private boolean a(int i2) {
        return (System.currentTimeMillis() / 1000) - ((long) i2) > 900;
    }
}
