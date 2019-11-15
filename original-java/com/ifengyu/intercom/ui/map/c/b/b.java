package com.ifengyu.intercom.ui.map.c.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.ui.map.d.a.f;
import com.ifengyu.intercom.ui.widget.dialog.t;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
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
import org.osmdroid.views.overlay.ItemizedIconOverlay.OnItemGestureListener;
import org.osmdroid.views.overlay.ItemizedOverlayWithFocus;

/* compiled from: OsmClusterOverlayManager */
public class b implements MapListener {
    private final ItemizedOverlayWithFocus a;
    /* access modifiers changed from: private */
    public MapView b;
    private List<a> c;
    private int d;
    /* access modifiers changed from: private */
    public Context e;
    private float f = 0.0f;
    private Map<String, com.ifengyu.intercom.ui.map.b.a> g;
    private Map<String, Runnable> h = new HashMap();
    private Paint i;
    /* access modifiers changed from: private */
    public a j;
    private a k;
    /* access modifiers changed from: private */
    public ArrayList<f> l;
    private ArrayList<f> m;
    private OnItemClickListener n = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            new t((Activity) b.this.e, (BeanUserLocation) ((f) b.this.l.get(i)).a()).show();
        }
    };

    /* compiled from: OsmClusterOverlayManager */
    class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            return b.this.l.size();
        }

        public Object getItem(int i) {
            return null;
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(b.this.e, R.layout.friend_cluster_marker_item, null);
            }
            BeanUserLocation beanUserLocation = (BeanUserLocation) ((f) b.this.l.get(i)).a();
            CirclrImageView circlrImageView = (CirclrImageView) view.findViewById(R.id.friend_icon);
            ((TextView) view.findViewById(R.id.friend_name)).setText(beanUserLocation.getName());
            if (beanUserLocation.getImgUrl() == null || beanUserLocation.getImgUrl().length() <= 0 || beanUserLocation.getImgUrl().equals("null")) {
                circlrImageView.setImageDrawable(b.this.e.getResources().getDrawable(R.drawable.my_head_default));
            } else {
                ImageLoader.getInstance().displayImage(beanUserLocation.getImgUrl(), (ImageView) circlrImageView);
            }
            return view;
        }
    }

    public b(MapView mapView, int i2, Context context) {
        this.e = context;
        this.b = mapView;
        this.d = (int) v.a((float) i2);
        this.c = new ArrayList();
        this.g = new ConcurrentHashMap();
        this.m = new ArrayList<>();
        this.a = new ItemizedOverlayWithFocus((List<Item>) this.m, (OnItemGestureListener<Item>) new OnItemGestureListener<f>() {
            /* renamed from: a */
            public boolean onItemSingleTapUp(int i, f fVar) {
                Object a2 = fVar.a();
                if (a2 instanceof BeanUserLocation) {
                    MiTalkiApp.a().c(false);
                    b.this.b.getController().animateTo(fVar.getPoint());
                    new t((Activity) b.this.e, (BeanUserLocation) a2).show();
                } else if (a2 instanceof a) {
                    MiTalkiApp.a().c(false);
                    b.this.j = (a) a2;
                    b.this.l = new ArrayList();
                    b.this.l.addAll(b.this.j.e());
                    b.this.b.getController().animateTo(b.this.j.c());
                    MiTalkiApp.n().postDelayed(new Runnable() {
                        public void run() {
                            b.this.a(b.this.b);
                        }
                    }, 250);
                }
                return true;
            }

            /* renamed from: b */
            public boolean onItemLongPress(int i, f fVar) {
                return false;
            }
        }, this.e);
        this.b.setMapListener(this);
        this.i = new Paint();
        this.i.setAntiAlias(true);
        this.i.setFilterBitmap(true);
        this.i.setStyle(Style.FILL);
        this.i.setColor(-1);
    }

    public boolean onScroll(ScrollEvent scrollEvent) {
        return false;
    }

    public boolean onZoom(ZoomEvent zoomEvent) {
        float zoomLevel = (float) this.b.getZoomLevel();
        if (Float.floatToIntBits(zoomLevel) != Float.floatToIntBits(this.f)) {
            c();
            this.f = zoomLevel;
        }
        return false;
    }

    public void a(BeanUserLocation beanUserLocation) {
        s.c("OsmClusterOverlayManager", "addOrUpdateSingleFriendIcon" + beanUserLocation.toString());
        if (this.g.containsKey(beanUserLocation.getUserID())) {
            ((com.ifengyu.intercom.ui.map.b.a) this.g.get(beanUserLocation.getUserID())).a(beanUserLocation);
            c();
            return;
        }
        b(beanUserLocation);
    }

    public void b(BeanUserLocation beanUserLocation) {
        a(c(beanUserLocation));
    }

    private f c(BeanUserLocation beanUserLocation) {
        f fVar = new f(null, null, d(beanUserLocation));
        fVar.a(beanUserLocation);
        this.g.put(beanUserLocation.getUserID(), new com.ifengyu.intercom.ui.map.b.a(beanUserLocation, fVar));
        if (a(beanUserLocation.getTime())) {
            a(fVar, beanUserLocation, true);
        } else {
            a(fVar, beanUserLocation, false);
        }
        return fVar;
    }

    private void a(final f fVar, BeanUserLocation beanUserLocation, final boolean z) {
        File file = null;
        if (beanUserLocation != null && this.g != null && this.g.size() > 0) {
            View inflate = View.inflate(this.e, R.layout.map_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
            String imgUrl = beanUserLocation.getImgUrl();
            if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                file = ImageLoader.getInstance().getDiskCache().get(imgUrl);
            }
            if (file == null || !file.exists()) {
                imageView.setVisibility(8);
                Drawable b2 = v.b(inflate);
                if (b2 != null) {
                    fVar.setMarker(b2);
                }
                if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                    ImageLoader.getInstance().loadImage(imgUrl, new ImageLoadingListener() {
                        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                            if (bitmap != null) {
                                View inflate = View.inflate(b.this.e, R.layout.map_marker_item, null);
                                ImageView imageView = (ImageView) inflate.findViewById(R.id.map_marker_item_portrait_iv);
                                if (z) {
                                    bitmap = v.a(bitmap);
                                }
                                imageView.setVisibility(0);
                                imageView.setImageBitmap(bitmap);
                                Drawable b2 = v.b(inflate);
                                if (b2 != null) {
                                    fVar.setMarker(b2);
                                }
                            }
                        }

                        public void onLoadingStarted(String str, View view) {
                        }

                        public void onLoadingFailed(String str, View view, FailReason failReason) {
                        }

                        public void onLoadingCancelled(String str, View view) {
                        }
                    });
                    return;
                }
                return;
            }
            imageView.setVisibility(0);
            Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(beanUserLocation.getImgUrl(), new ImageSize((int) v.a(50.0f), (int) v.a(50.0f)));
            if (loadImageSync != null) {
                if (z) {
                    loadImageSync = v.a(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
                Drawable b3 = v.b(inflate);
                if (b3 != null) {
                    fVar.setMarker(b3);
                }
            }
        }
    }

    public void a(f fVar) {
        if (fVar != null) {
            IGeoPoint point = fVar.getPoint();
            Point pixels = this.b.getProjection().toPixels(point, null);
            a a2 = a(pixels);
            if (a2 != null) {
                a2.a(fVar);
                a(a2);
                return;
            }
            a aVar = new a(pixels, point);
            aVar.a(fVar);
            this.c.add(aVar);
            this.a.addItem(fVar);
        }
    }

    private void a(a aVar) {
        boolean z;
        if (aVar.a() > 1) {
            if (aVar.e().size() > 2) {
                b(aVar);
            } else {
                f fVar = new f(null, null, aVar.c());
                Iterator it = aVar.e().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    if ((System.currentTimeMillis() / 1000) - ((long) ((BeanUserLocation) ((f) it.next()).a()).getTime()) < 900) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    a(fVar, aVar.a(), (f) aVar.e().get(0), true);
                } else {
                    a(fVar, aVar.a(), (f) aVar.e().get(0), false);
                }
                fVar.a(aVar);
                this.a.addItem(fVar);
                aVar.b(fVar);
            }
            for (f removeItem : aVar.e()) {
                this.a.removeItem(removeItem);
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(MapView mapView) {
        View inflate = View.inflate(this.e, R.layout.layout_cluster_marker_scroll, null);
        ListView listView = (ListView) inflate.findViewById(R.id.friend_listview);
        this.k = new a();
        listView.setAdapter(this.k);
        listView.setOnItemClickListener(this.n);
        float integer = (float) this.e.getResources().getInteger(R.integer.cluster_marker_friend_list_view_wight);
        float integer2 = (float) this.e.getResources().getInteger(R.integer.cluster_marker_friend_list_view_height);
        if (this.j.a() == 2) {
            integer2 = (integer2 / 3.0f) * 2.0f;
        }
        PopupWindow popupWindow = new PopupWindow(inflate, (int) v.a(integer), (int) v.a(integer2));
        popupWindow.setTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.showAsDropDown(mapView, (int) ((((float) mapView.getWidth()) / 2.0f) - v.a(integer / 2.0f)), -((int) (v.a(integer2) + ((float) (mapView.getHeight() / 2)) + ((float) this.d) + v.a(3.0f))));
    }

    private void a(final f fVar, final int i2, f fVar2, final boolean z) {
        BeanUserLocation beanUserLocation = (BeanUserLocation) fVar2.a();
        if (beanUserLocation != null && fVar != null) {
            View inflate = View.inflate(this.e, R.layout.map_cluster_marker_item, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.map_cluster_item_portrait_iv);
            TextView textView = (TextView) inflate.findViewById(R.id.map_cluster_item_number_tv);
            String imgUrl = beanUserLocation.getImgUrl();
            File file = null;
            if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                file = ImageLoader.getInstance().getDiskCache().get(imgUrl);
            }
            if (file == null || !file.exists()) {
                if (z) {
                    textView.setBackground(this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                }
                imageView.setVisibility(8);
                textView.setText(ad.a((int) R.string.person, Integer.valueOf(i2)));
                Drawable b2 = v.b(inflate);
                if (b2 != null) {
                    fVar.setMarker(b2);
                }
                if (imgUrl != null && !imgUrl.equals("") && !imgUrl.equals("null")) {
                    ImageLoader.getInstance().loadImage(imgUrl, new ImageLoadingListener() {
                        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                            if (bitmap != null) {
                                View inflate = View.inflate(b.this.e, R.layout.map_cluster_marker_item, null);
                                ImageView imageView = (ImageView) inflate.findViewById(R.id.map_cluster_item_portrait_iv);
                                TextView textView = (TextView) inflate.findViewById(R.id.map_cluster_item_number_tv);
                                if (z) {
                                    textView.setBackground(b.this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                                    bitmap = v.a(bitmap);
                                }
                                imageView.setVisibility(0);
                                textView.setText(ad.a((int) R.string.person, Integer.valueOf(i2)));
                                imageView.setImageBitmap(bitmap);
                                Drawable b2 = v.b(inflate);
                                if (b2 != null) {
                                    fVar.setMarker(b2);
                                }
                            }
                        }

                        public void onLoadingStarted(String str, View view) {
                        }

                        public void onLoadingFailed(String str, View view, FailReason failReason) {
                        }

                        public void onLoadingCancelled(String str, View view) {
                        }
                    });
                    return;
                }
                return;
            }
            imageView.setVisibility(0);
            textView.setText(ad.a((int) R.string.person, Integer.valueOf(i2)));
            Bitmap loadImageSync = ImageLoader.getInstance().loadImageSync(imgUrl, new ImageSize((int) v.a(50.0f), (int) v.a(50.0f)));
            if (loadImageSync != null) {
                if (z) {
                    textView.setBackground(this.e.getResources().getDrawable(R.drawable.map_cluster_marker_right_top_grey_bg));
                    loadImageSync = v.a(loadImageSync);
                }
                imageView.setImageBitmap(loadImageSync);
                Drawable b3 = v.b(inflate);
                if (b3 != null) {
                    fVar.setMarker(b3);
                }
            }
        }
    }

    private void b(a aVar) {
        f fVar;
        boolean z;
        f d2 = aVar.d();
        List e2 = aVar.e();
        if (d2 == null) {
            fVar = (f) e2.get(0);
        } else {
            fVar = d2;
        }
        Iterator it = e2.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if ((System.currentTimeMillis() / 1000) - ((long) ((BeanUserLocation) ((f) it.next()).a()).getTime()) < 900) {
                z = true;
                break;
            }
        }
        if (z) {
            a(fVar, aVar.a(), (f) e2.get(0), true);
        } else {
            a(fVar, aVar.a(), (f) e2.get(0), false);
        }
    }

    private void c() {
        for (a e2 : this.c) {
            e2.e().clear();
        }
        this.c.clear();
        this.a.removeAllItems();
        for (String str : this.g.keySet()) {
            com.ifengyu.intercom.ui.map.b.a aVar = (com.ifengyu.intercom.ui.map.b.a) this.g.get(str);
            BeanUserLocation a2 = aVar.a();
            f fVar = new f(null, null, d(a2));
            fVar.a(a2);
            if (a(a2.getTime())) {
                a(fVar, a2, true);
            } else {
                a(fVar, a2, false);
            }
            aVar.a(fVar);
            a(fVar);
        }
    }

    private a a(Point point) {
        for (a aVar : this.c) {
            Point b2 = aVar.b();
            if (a((double) point.x, (double) point.y, (double) b2.x, (double) b2.y) <= 75.0d) {
                return aVar;
            }
        }
        return null;
    }

    public void a() {
        if (!this.b.getOverlays().contains(this.a)) {
            this.b.getOverlays().add(0, this.a);
        }
    }

    public void b() {
        if (this.b.getOverlays().contains(this.a)) {
            this.b.getOverlays().remove(this.a);
        }
    }

    private double a(double d2, double d3, double d4, double d5) {
        return Math.sqrt(((d2 - d4) * (d2 - d4)) + ((d3 - d5) * (d3 - d5)));
    }

    private GeoPoint d(BeanUserLocation beanUserLocation) {
        return new GeoPoint(beanUserLocation.getLatitudeDouble(), beanUserLocation.getLongitudeDouble());
    }

    private boolean a(int i2) {
        return (System.currentTimeMillis() / 1000) - ((long) i2) > 900;
    }
}
