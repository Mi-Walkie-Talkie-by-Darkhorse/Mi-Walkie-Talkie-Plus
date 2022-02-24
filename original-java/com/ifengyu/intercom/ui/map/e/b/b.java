package com.ifengyu.intercom.ui.map.e.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.map.f.a.f;
import com.ifengyu.intercom.ui.widget.dialog.s;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.ifengyu.library.base.BaseApp;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.events.MapListener;
import org.osmdroid.events.ScrollEvent;
import org.osmdroid.events.ZoomEvent;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.ItemizedIconOverlay;
import org.osmdroid.views.overlay.ItemizedOverlayWithFocus;

/* compiled from: OsmClusterOverlayManager.java */
/* loaded from: classes2.dex */
public class b implements MapListener {

    /* renamed from: a  reason: collision with root package name */
    private final ItemizedOverlayWithFocus f6533a;

    /* renamed from: b  reason: collision with root package name */
    private MapView f6534b;
    private int d;
    private Context e;
    private Paint h;
    private a i;
    private e j;
    private ArrayList<f> k;
    private float f = 0.0f;
    private AdapterView.OnItemClickListener m = new c();

    /* renamed from: c  reason: collision with root package name */
    private List<a> f6535c = new ArrayList();
    private Map<String, com.ifengyu.intercom.ui.map.d.a> g = new ConcurrentHashMap();
    private ArrayList<f> l = new ArrayList<>();

    /* compiled from: OsmClusterOverlayManager.java */
    /* loaded from: classes2.dex */
    class a implements ItemizedIconOverlay.OnItemGestureListener<f> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OsmClusterOverlayManager.java */
        /* renamed from: com.ifengyu.intercom.ui.map.e.b.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0170a implements Runnable {
            RunnableC0170a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                bVar.a(bVar.f6534b);
            }
        }

        a() {
        }

        /* renamed from: a */
        public boolean onItemLongPress(int i, f fVar) {
            return false;
        }

        /* renamed from: b */
        public boolean onItemSingleTapUp(int i, f fVar) {
            Object a2 = fVar.a();
            if (a2 instanceof BeanUserLocation) {
                MiTalkiApp.b().b(false);
                b.this.f6534b.getController().animateTo(fVar.getPoint());
                new s((Activity) b.this.e, (BeanUserLocation) a2).show();
                return true;
            } else if (!(a2 instanceof a)) {
                return true;
            } else {
                MiTalkiApp.b().b(false);
                b.this.i = (a) a2;
                b.this.k = new ArrayList();
                b.this.k.addAll(b.this.i.d());
                b.this.f6534b.getController().animateTo(b.this.i.a());
                BaseApp.a().postDelayed(new RunnableC0170a(), 250L);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmClusterOverlayManager.java */
    /* renamed from: com.ifengyu.intercom.ui.map.e.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0171b implements ImageLoadingListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f6538a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f6539b;

        C0171b(boolean z, f fVar) {
            this.f6538a = z;
            this.f6539b = fVar;
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingCancelled(String str, View view) {
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
            if (bitmap != null) {
                View inflate = View.inflate(b.this.e, R.layout.map_marker_item, null);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
                if (this.f6538a) {
                    bitmap = c0.a(bitmap);
                }
                imageView.setVisibility(0);
                imageView.setImageBitmap(bitmap);
                Drawable a2 = c0.a(inflate);
                if (a2 != null) {
                    this.f6539b.setMarker(a2);
                }
            }
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingFailed(String str, View view, FailReason failReason) {
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingStarted(String str, View view) {
        }
    }

    /* compiled from: OsmClusterOverlayManager.java */
    /* loaded from: classes2.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            new s((Activity) b.this.e, (BeanUserLocation) ((f) b.this.k.get(i)).a()).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmClusterOverlayManager.java */
    /* loaded from: classes2.dex */
    public class d implements ImageLoadingListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f6542a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6543b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f f6544c;

        d(boolean z, int i, f fVar) {
            this.f6542a = z;
            this.f6543b = i;
            this.f6544c = fVar;
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingCancelled(String str, View view) {
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
            if (bitmap != null) {
                View inflate = View.inflate(b.this.e, R.layout.map_cluster_marker_item, null);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.map_cluster_item_portrait_iv);
                TextView textView = (TextView) inflate.findViewById(R.id.map_cluster_item_number_tv);
                if (this.f6542a) {
                    textView.setBackground(b.this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                    bitmap = c0.a(bitmap);
                }
                imageView.setVisibility(0);
                textView.setText(k0.a((int) R.string.person, Integer.valueOf(this.f6543b)));
                imageView.setImageBitmap(bitmap);
                Drawable a2 = c0.a(inflate);
                if (a2 != null) {
                    this.f6544c.setMarker(a2);
                }
            }
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingFailed(String str, View view, FailReason failReason) {
        }

        @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingStarted(String str, View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OsmClusterOverlayManager.java */
    /* loaded from: classes2.dex */
    public class e extends BaseAdapter {
        e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return b.this.k.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(b.this.e, R.layout.friend_cluster_marker_item, null);
            }
            BeanUserLocation beanUserLocation = (BeanUserLocation) ((f) b.this.k.get(i)).a();
            CirclrImageView circlrImageView = (CirclrImageView) view.findViewById(R.id.friend_icon);
            ((TextView) view.findViewById(R.id.friend_name)).setText(beanUserLocation.getName());
            if (beanUserLocation.getImgUrl() == null || beanUserLocation.getImgUrl().length() <= 0 || beanUserLocation.getImgUrl().equals("null")) {
                circlrImageView.setImageDrawable(b.this.e.getResources().getDrawable(R.drawable.my_head_default));
            } else {
                ImageLoader.getInstance().displayImage(beanUserLocation.getImgUrl(), circlrImageView);
            }
            return view;
        }
    }

    public b(MapView mapView, int i, Context context) {
        new HashMap();
        this.e = context;
        this.f6534b = mapView;
        this.d = (int) c0.a(i);
        this.f6533a = new ItemizedOverlayWithFocus(this.l, new a(), this.e);
        this.f6534b.setMapListener(this);
        Paint paint = new Paint();
        this.h = paint;
        paint.setAntiAlias(true);
        this.h.setFilterBitmap(true);
        this.h.setStyle(Paint.Style.FILL);
        this.h.setColor(-1);
    }

    @Override // org.osmdroid.events.MapListener
    public boolean onScroll(ScrollEvent scrollEvent) {
        return false;
    }

    @Override // org.osmdroid.events.MapListener
    public boolean onZoom(ZoomEvent zoomEvent) {
        float zoomLevel = this.f6534b.getZoomLevel();
        if (Float.floatToIntBits(zoomLevel) == Float.floatToIntBits(this.f)) {
            return false;
        }
        c();
        this.f = zoomLevel;
        return false;
    }

    private f c(BeanUserLocation beanUserLocation) {
        f fVar = new f(null, null, d(beanUserLocation));
        fVar.a(beanUserLocation);
        this.g.put(beanUserLocation.getUserID(), new com.ifengyu.intercom.ui.map.d.a(beanUserLocation, fVar));
        if (a(beanUserLocation.getTime())) {
            a(fVar, beanUserLocation, true);
        } else {
            a(fVar, beanUserLocation, false);
        }
        return fVar;
    }

    private GeoPoint d(BeanUserLocation beanUserLocation) {
        return new GeoPoint(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble());
    }

    public void b(BeanUserLocation beanUserLocation) {
        z.c("OsmClusterOverlayManager", "addOrUpdateSingleFriendIcon" + beanUserLocation.toString());
        if (this.g.containsKey(beanUserLocation.getUserID())) {
            this.g.get(beanUserLocation.getUserID()).a(beanUserLocation);
            c();
            return;
        }
        a(beanUserLocation);
    }

    public void a(BeanUserLocation beanUserLocation) {
        a(c(beanUserLocation));
    }

    private void a(f fVar, BeanUserLocation beanUserLocation, boolean z) {
        Map<String, com.ifengyu.intercom.ui.map.d.a> map;
        if (beanUserLocation != null && (map = this.g) != null && map.size() > 0) {
            File file = null;
            View inflate = View.inflate(this.e, R.layout.map_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
            String imgUrl = beanUserLocation.getImgUrl();
            if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                file = ImageLoader.getInstance().getDiskCache().get(imgUrl);
            }
            if (file == null || !file.exists()) {
                imageView.setVisibility(8);
                Drawable a2 = c0.a(inflate);
                if (a2 != null) {
                    fVar.setMarker(a2);
                }
                if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                    ImageLoader.getInstance().loadImage(imgUrl, new C0171b(z, fVar));
                    return;
                }
                return;
            }
            imageView.setVisibility(0);
            Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(beanUserLocation.getImgUrl(), new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
            if (loadImageSync != null) {
                if (z) {
                    loadImageSync = c0.a(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
                Drawable a3 = c0.a(inflate);
                if (a3 != null) {
                    fVar.setMarker(a3);
                }
            }
        }
    }

    private void b(a aVar) {
        char c2;
        f c3 = aVar.c();
        List<f> d2 = aVar.d();
        if (c3 == null) {
            c3 = d2.get(0);
        }
        Iterator<f> it = d2.iterator();
        while (true) {
            if (it.hasNext()) {
                if ((System.currentTimeMillis() / 1000) - ((BeanUserLocation) it.next().a()).getTime() < 900) {
                    c2 = 1;
                    break;
                }
            } else {
                c2 = 65535;
                break;
            }
        }
        if (c2 == 65535) {
            a(c3, aVar.e(), d2.get(0), true);
        } else {
            a(c3, aVar.e(), d2.get(0), false);
        }
    }

    private void c() {
        for (a aVar : this.f6535c) {
            aVar.d().clear();
        }
        this.f6535c.clear();
        this.f6533a.removeAllItems();
        for (String str : this.g.keySet()) {
            com.ifengyu.intercom.ui.map.d.a aVar2 = this.g.get(str);
            BeanUserLocation a2 = aVar2.a();
            f fVar = new f(null, null, d(a2));
            fVar.a(a2);
            if (a(a2.getTime())) {
                a(fVar, a2, true);
            } else {
                a(fVar, a2, false);
            }
            aVar2.a(fVar);
            a(fVar);
        }
    }

    public void b() {
        if (this.f6534b.getOverlays().contains(this.f6533a)) {
            this.f6534b.getOverlays().remove(this.f6533a);
        }
    }

    public void a(f fVar) {
        if (fVar != null) {
            IGeoPoint point = fVar.getPoint();
            Point pixels = this.f6534b.getProjection().toPixels(point, null);
            a a2 = a(pixels);
            if (a2 != null) {
                a2.a(fVar);
                a(a2);
                return;
            }
            a aVar = new a(pixels, point);
            aVar.a(fVar);
            this.f6535c.add(aVar);
            this.f6533a.addItem(fVar);
        }
    }

    private void a(a aVar) {
        char c2;
        if (aVar.e() > 1) {
            if (aVar.d().size() > 2) {
                b(aVar);
            } else {
                f fVar = new f(null, null, aVar.a());
                Iterator<f> it = aVar.d().iterator();
                while (true) {
                    if (it.hasNext()) {
                        if ((System.currentTimeMillis() / 1000) - ((BeanUserLocation) it.next().a()).getTime() < 900) {
                            c2 = 1;
                            break;
                        }
                    } else {
                        c2 = 65535;
                        break;
                    }
                }
                if (c2 == 65535) {
                    a(fVar, aVar.e(), aVar.d().get(0), true);
                } else {
                    a(fVar, aVar.e(), aVar.d().get(0), false);
                }
                fVar.a(aVar);
                this.f6533a.addItem(fVar);
                aVar.b(fVar);
            }
            for (f fVar2 : aVar.d()) {
                this.f6533a.removeItem((ItemizedOverlayWithFocus) fVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MapView mapView) {
        View inflate = View.inflate(this.e, R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        e eVar = new e();
        this.j = eVar;
        listView.setAdapter((ListAdapter) eVar);
        listView.setOnItemClickListener(this.m);
        float integer = this.e.getResources().getInteger(R.integer.cluster_marker_friend_list_view_wight);
        float integer2 = this.e.getResources().getInteger(R.integer.cluster_marker_friend_list_view_height);
        if (this.i.e() == 2) {
            integer2 = (integer2 / 3.0f) * 2.0f;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, (int) c0.a(integer), (int) c0.a(integer2));
        popupWindow.setTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.showAsDropDown(mapView, (int) ((mapView.getWidth() / 2.0f) - c0.a(integer / 2.0f)), -((int) ((mapView.getHeight() / 2) + c0.a(integer2) + this.d + c0.a(3.0f))));
    }

    private void a(f fVar, int i, f fVar2, boolean z) {
        BeanUserLocation beanUserLocation = (BeanUserLocation) fVar2.a();
        if (beanUserLocation != null && fVar != null) {
            File file = null;
            View inflate = View.inflate(this.e, R.layout.map_cluster_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_cluster_item_portrait_iv);
            TextView textView = (TextView) inflate.findViewById(R.id.map_cluster_item_number_tv);
            String imgUrl = beanUserLocation.getImgUrl();
            if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                file = ImageLoader.getInstance().getDiskCache().get(imgUrl);
            }
            if (file == null || !file.exists()) {
                if (z) {
                    textView.setBackground(this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                }
                imageView.setVisibility(8);
                textView.setText(k0.a((int) R.string.person, Integer.valueOf(i)));
                Drawable a2 = c0.a(inflate);
                if (a2 != null) {
                    fVar.setMarker(a2);
                }
                if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                    ImageLoader.getInstance().loadImage(imgUrl, new d(z, i, fVar));
                    return;
                }
                return;
            }
            imageView.setVisibility(0);
            textView.setText(k0.a((int) R.string.person, Integer.valueOf(i)));
            Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(imgUrl, new ImageSize((int) c0.a(50.0f), (int) c0.a(50.0f)));
            if (loadImageSync != null) {
                if (z) {
                    textView.setBackground(this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                    loadImageSync = c0.a(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
                Drawable a3 = c0.a(inflate);
                if (a3 != null) {
                    fVar.setMarker(a3);
                }
            }
        }
    }

    private a a(Point point) {
        for (a aVar : this.f6535c) {
            Point b2 = aVar.b();
            if (a(point.x, point.y, b2.x, b2.y) <= 75.0d) {
                return aVar;
            }
        }
        return null;
    }

    public void a() {
        if (!this.f6534b.getOverlays().contains(this.f6533a)) {
            this.f6534b.getOverlays().add(0, this.f6533a);
        }
    }

    private double a(double d2, double d3, double d4, double d5) {
        double d6 = d2 - d4;
        double d7 = d3 - d5;
        return Math.sqrt((d6 * d6) + (d7 * d7));
    }

    private boolean a(int i) {
        return (System.currentTimeMillis() / 1000) - ((long) i) > 900;
    }
}
