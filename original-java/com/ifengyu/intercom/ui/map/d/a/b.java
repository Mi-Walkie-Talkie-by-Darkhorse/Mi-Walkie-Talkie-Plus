package com.ifengyu.intercom.ui.map.d.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;
import com.ifengyu.intercom.R;
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.ItemizedIconOverlay;
import org.osmdroid.views.overlay.ItemizedIconOverlay.OnItemGestureListener;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.OverlayItem.HotspotPlace;

/* compiled from: MyItemizedOverlayWithFocus */
public class b<Item extends OverlayItem> extends ItemizedIconOverlay<Item> {
    protected int a;
    protected Paint b;
    protected Paint c;
    protected Paint d;
    protected Drawable e;
    protected int f;
    protected boolean g;
    private final int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private final Point p;
    private Context q;
    private String r;
    private final Rect s;

    public b(List<Item> list, OnItemGestureListener<Item> onItemGestureListener, Context context) {
        this(list, context.getResources().getDrawable(R.drawable.marker_default), null, Integer.MIN_VALUE, onItemGestureListener, context);
    }

    public b(List<Item> list, Drawable drawable, Drawable drawable2, int i2, OnItemGestureListener<Item> onItemGestureListener, Context context) {
        super(list, drawable, onItemGestureListener, context);
        this.h = Color.rgb(101, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384, 74);
        this.i = 3;
        this.j = 3;
        this.k = 2;
        this.l = 14;
        this.m = 600;
        this.n = 30;
        this.p = new Point();
        this.s = new Rect();
        this.q = context;
        if (drawable2 == null) {
            this.e = boundToHotspot(context.getResources().getDrawable(R.drawable.marker_default_focused_base), HotspotPlace.BOTTOM_CENTER);
        } else {
            this.e = drawable2;
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = this.h;
        }
        this.a = i2;
        b();
        a();
    }

    private void b() {
        this.o = (int) TypedValue.applyDimension(1, (float) this.l, this.q.getResources().getDisplayMetrics());
        this.n = this.o + 5;
        this.m = (int) (((double) this.q.getResources().getDisplayMetrics().widthPixels) * 0.8d);
        this.r = this.q.getResources().getString(R.string.unknown);
        this.b = new Paint();
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setTextSize((float) this.o);
        this.d = new Paint();
        this.d.setTextSize((float) this.o);
        this.d.setFakeBoldText(true);
        this.d.setAntiAlias(true);
    }

    public void a() {
        this.f = Integer.MIN_VALUE;
    }

    /* access modifiers changed from: protected */
    public boolean onSingleTapUpHelper(int i2, Item item, MapView mapView) {
        if (this.g) {
            this.f = i2;
            mapView.postInvalidate();
        }
        return this.mOnItemGestureListener.onItemSingleTapUp(i2, item);
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        Drawable drawable;
        String title;
        String snippet;
        int i2;
        super.draw(canvas, mapView, z);
        if (!z && this.f != Integer.MIN_VALUE && this.mItemList != null) {
            OverlayItem overlayItem = (OverlayItem) this.mItemList.get(this.f);
            Drawable marker = overlayItem.getMarker(4);
            if (marker == null) {
                drawable = this.e;
            } else {
                drawable = marker;
            }
            mapView.getProjection().toPixels(overlayItem.getPoint(), this.p);
            drawable.copyBounds(this.s);
            this.s.offset(this.p.x, this.p.y);
            if (overlayItem.getTitle() == null) {
                title = this.r;
            } else {
                title = overlayItem.getTitle();
            }
            if (overlayItem.getSnippet() == null) {
                snippet = this.r;
            } else {
                snippet = overlayItem.getSnippet();
            }
            float[] fArr = new float[snippet.length()];
            this.c.getTextWidths(snippet, fArr);
            StringBuilder sb = new StringBuilder();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i2 < fArr.length) {
                if (!Character.isLetter(snippet.charAt(i2))) {
                    i6 = i2;
                }
                float f2 = fArr[i2];
                if (((float) i4) + f2 > ((float) this.m)) {
                    if (i5 == i6) {
                        i2--;
                    } else {
                        i2 = i6;
                    }
                    sb.append(snippet.subSequence(i5, i2));
                    sb.append(10);
                    i3 = Math.max(i3, i4);
                    i4 = 0;
                    i5 = i2;
                }
                i4 = (int) (((float) i4) + f2);
                i7 = i2 + 1;
            }
            if (i2 != i5) {
                String substring = snippet.substring(i5, i2);
                i3 = Math.max(i3, (int) this.c.measureText(substring));
                sb.append(substring);
            }
            String[] split = sb.toString().split("\n");
            int min = Math.min(Math.max(i3, (int) this.c.measureText(title)), this.m);
            int width = ((this.s.left - (min / 2)) - this.i) + (this.s.width() / 2);
            int i8 = min + width + (this.i * 2);
            int i9 = this.s.top;
            int length = ((i9 - this.k) - ((split.length + 1) * this.n)) - (this.i * 2);
            this.b.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRoundRect(new RectF((float) (width - 1), (float) (length - 1), (float) (i8 + 1), (float) (i9 + 1)), (float) this.j, (float) this.j, this.c);
            this.b.setColor(this.a);
            canvas.drawRoundRect(new RectF((float) width, (float) length, (float) i8, (float) i9), (float) this.j, (float) this.j, this.b);
            int i10 = width + this.i;
            int i11 = i9 - this.i;
            int length2 = split.length - 1;
            int i12 = i11;
            while (length2 >= 0) {
                canvas.drawText(split[length2].trim(), (float) i10, (float) i12, this.c);
                length2--;
                i12 -= this.n;
            }
            canvas.drawText(title, (float) i10, (float) (i12 - this.k), this.d);
            canvas.drawLine((float) width, (float) i12, (float) i8, (float) i12, this.c);
            Overlay.drawAt(canvas, drawable, this.p.x, this.p.y, false, mapView.getMapOrientation());
        }
    }

    public void onDetach(MapView mapView) {
        super.onDetach(mapView);
        this.q = null;
    }

    /* access modifiers changed from: protected */
    public synchronized Drawable boundToHotspot(Drawable drawable, HotspotPlace hotspotPlace) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.s.set(0, 0, intrinsicWidth + 0, intrinsicHeight + 0);
        if (hotspotPlace == null) {
            hotspotPlace = HotspotPlace.BOTTOM_CENTER;
        }
        switch (hotspotPlace) {
            case CENTER:
                this.s.offset((-intrinsicWidth) / 2, (-intrinsicHeight) / 2);
                break;
            case BOTTOM_CENTER:
                this.s.offset((-intrinsicWidth) / 2, -intrinsicHeight);
                break;
            case TOP_CENTER:
                this.s.offset((-intrinsicWidth) / 2, 0);
                break;
            case RIGHT_CENTER:
                this.s.offset(-intrinsicWidth, (-intrinsicHeight) / 2);
                break;
            case LEFT_CENTER:
                this.s.offset(0, (-intrinsicHeight) / 2);
                break;
            case UPPER_RIGHT_CORNER:
                this.s.offset(-intrinsicWidth, 0);
                break;
            case LOWER_RIGHT_CORNER:
                this.s.offset(-intrinsicWidth, -intrinsicHeight);
                break;
            case UPPER_LEFT_CORNER:
                this.s.offset(0, 0);
                break;
            case LOWER_LEFT_CORNER:
                this.s.offset(0, -intrinsicHeight);
                break;
        }
        drawable.setBounds(this.s);
        return drawable;
    }
}
