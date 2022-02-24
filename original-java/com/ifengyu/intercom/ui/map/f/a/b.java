package com.ifengyu.intercom.ui.map.f.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.ifengyu.intercom.R;
import com.just.agentweb.WebIndicator;
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.ItemizedIconOverlay;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.OverlayItem;

/* compiled from: MyItemizedOverlayWithFocus.java */
/* loaded from: classes2.dex */
public class b<Item extends OverlayItem> extends ItemizedIconOverlay<Item> {

    /* renamed from: a  reason: collision with root package name */
    private final int f6547a;

    /* renamed from: b  reason: collision with root package name */
    private int f6548b;

    /* renamed from: c  reason: collision with root package name */
    private int f6549c;
    private int d;
    private int e;
    private int f;
    private int g;
    protected int h;
    protected Paint i;
    protected Paint j;
    protected Paint k;
    protected Drawable l;
    protected int m;
    protected boolean n;
    private int o;
    private final Point p;
    private Context q;
    private String r;
    private final Rect s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyItemizedOverlayWithFocus.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6550a;

        static {
            int[] iArr = new int[OverlayItem.HotspotPlace.values().length];
            f6550a = iArr;
            try {
                iArr[OverlayItem.HotspotPlace.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.BOTTOM_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.TOP_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.RIGHT_CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.LEFT_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.UPPER_RIGHT_CORNER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.LOWER_RIGHT_CORNER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.UPPER_LEFT_CORNER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6550a[OverlayItem.HotspotPlace.LOWER_LEFT_CORNER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public b(List<Item> list, ItemizedIconOverlay.OnItemGestureListener<Item> onItemGestureListener, Context context) {
        this(list, context.getResources().getDrawable(R.drawable.marker_default), null, Integer.MIN_VALUE, onItemGestureListener, context);
    }

    private void calculateDrawSettings() {
        int applyDimension = (int) TypedValue.applyDimension(1, this.e, this.q.getResources().getDisplayMetrics());
        this.o = applyDimension;
        this.g = applyDimension + 5;
        this.f = (int) (this.q.getResources().getDisplayMetrics().widthPixels * 0.8d);
        this.r = this.q.getResources().getString(R.string.unknown);
        this.i = new Paint();
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setTextSize(this.o);
        Paint paint2 = new Paint();
        this.k = paint2;
        paint2.setTextSize(this.o);
        this.k.setFakeBoldText(true);
        this.k.setAntiAlias(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.osmdroid.views.overlay.ItemizedOverlay
    public synchronized Drawable boundToHotspot(Drawable drawable, OverlayItem.HotspotPlace hotspotPlace) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.s.set(0, 0, intrinsicWidth + 0, intrinsicHeight + 0);
        if (hotspotPlace == null) {
            hotspotPlace = OverlayItem.HotspotPlace.BOTTOM_CENTER;
        }
        switch (a.f6550a[hotspotPlace.ordinal()]) {
            case 2:
                this.s.offset((-intrinsicWidth) / 2, (-intrinsicHeight) / 2);
                break;
            case 3:
                this.s.offset((-intrinsicWidth) / 2, -intrinsicHeight);
                break;
            case 4:
                this.s.offset((-intrinsicWidth) / 2, 0);
                break;
            case 5:
                this.s.offset(-intrinsicWidth, (-intrinsicHeight) / 2);
                break;
            case 6:
                this.s.offset(0, (-intrinsicHeight) / 2);
                break;
            case 7:
                this.s.offset(-intrinsicWidth, 0);
                break;
            case 8:
                this.s.offset(-intrinsicWidth, -intrinsicHeight);
                break;
            case 9:
                this.s.offset(0, 0);
                break;
            case 10:
                this.s.offset(0, -intrinsicHeight);
                break;
        }
        drawable.setBounds(this.s);
        return drawable;
    }

    @Override // org.osmdroid.views.overlay.ItemizedOverlay, org.osmdroid.views.overlay.Overlay
    public void draw(Canvas canvas, MapView mapView, boolean z) {
        int i;
        List<Item> list;
        String str;
        String str2;
        super.draw(canvas, mapView, z);
        if (!(z || (i = this.m) == Integer.MIN_VALUE || (list = this.mItemList) == null)) {
            Item item = list.get(i);
            Drawable marker = item.getMarker(4);
            if (marker == null) {
                marker = this.l;
            }
            mapView.getProjection().toPixels(item.getPoint(), this.p);
            marker.copyBounds(this.s);
            Rect rect = this.s;
            Point point = this.p;
            rect.offset(point.x, point.y);
            if (item.getTitle() == null) {
                str = this.r;
            } else {
                str = item.getTitle();
            }
            if (item.getSnippet() == null) {
                str2 = this.r;
            } else {
                str2 = item.getSnippet();
            }
            int length = str2.length();
            float[] fArr = new float[length];
            this.j.getTextWidths(str2, fArr);
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i2 < length) {
                if (!Character.isLetter(str2.charAt(i2))) {
                    i6 = i2;
                }
                float f = fArr[i2];
                if (i5 + f > this.f) {
                    i2 = i3 == i6 ? i2 - 1 : i6;
                    sb.append(str2.subSequence(i3, i2));
                    sb.append('\n');
                    i4 = Math.max(i4, i5);
                    i3 = i2;
                    i5 = 0;
                }
                i5 = (int) (i5 + f);
                i2++;
            }
            if (i2 != i3) {
                String substring = str2.substring(i3, i2);
                i4 = Math.max(i4, (int) this.j.measureText(substring));
                sb.append(substring);
            }
            String[] split = sb.toString().split("\n");
            int min = Math.min(Math.max(i4, (int) this.j.measureText(str)), this.f);
            Rect rect2 = this.s;
            int width = ((rect2.left - (min / 2)) - this.f6548b) + (rect2.width() / 2);
            int i7 = this.f6548b;
            int i8 = min + width + (i7 * 2);
            int i9 = this.s.top;
            int length2 = ((i9 - this.d) - ((split.length + 1) * this.g)) - (i7 * 2);
            this.i.setColor(-16777216);
            RectF rectF = new RectF(width - 1, length2 - 1, i8 + 1, i9 + 1);
            int i10 = this.f6549c;
            canvas.drawRoundRect(rectF, i10, i10, this.j);
            this.i.setColor(this.h);
            float f2 = width;
            float f3 = i8;
            RectF rectF2 = new RectF(f2, length2, f3, i9);
            int i11 = this.f6549c;
            canvas.drawRoundRect(rectF2, i11, i11, this.i);
            int i12 = this.f6548b;
            int i13 = width + i12;
            int i14 = i9 - i12;
            for (int length3 = split.length - 1; length3 >= 0; length3--) {
                canvas.drawText(split[length3].trim(), i13, i14, this.j);
                i14 -= this.g;
            }
            canvas.drawText(str, i13, i14 - this.d, this.k);
            float f4 = i14;
            canvas.drawLine(f2, f4, f3, f4, this.j);
            Point point2 = this.p;
            Overlay.drawAt(canvas, marker, point2.x, point2.y, false, mapView.getMapOrientation());
        }
    }

    @Override // org.osmdroid.views.overlay.ItemizedIconOverlay, org.osmdroid.views.overlay.ItemizedOverlay, org.osmdroid.views.overlay.Overlay
    public void onDetach(MapView mapView) {
        super.onDetach(mapView);
        this.q = null;
    }

    @Override // org.osmdroid.views.overlay.ItemizedIconOverlay
    protected boolean onSingleTapUpHelper(int i, Item item, MapView mapView) {
        if (this.n) {
            this.m = i;
            mapView.postInvalidate();
        }
        return this.mOnItemGestureListener.onItemSingleTapUp(i, item);
    }

    public void unSetFocusedItem() {
        this.m = Integer.MIN_VALUE;
    }

    public b(List<Item> list, Drawable drawable, Drawable drawable2, int i, ItemizedIconOverlay.OnItemGestureListener<Item> onItemGestureListener, Context context) {
        super(list, drawable, onItemGestureListener, context);
        this.f6547a = Color.rgb(101, (int) CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384, 74);
        this.f6548b = 3;
        this.f6549c = 3;
        this.d = 2;
        this.e = 14;
        this.f = WebIndicator.DO_END_ANIMATION_DURATION;
        this.g = 30;
        this.p = new Point();
        this.s = new Rect();
        this.q = context;
        if (drawable2 == null) {
            this.l = boundToHotspot(context.getResources().getDrawable(R.drawable.marker_default_focused_base), OverlayItem.HotspotPlace.BOTTOM_CENTER);
        } else {
            this.l = drawable2;
        }
        this.h = i == Integer.MIN_VALUE ? this.f6547a : i;
        calculateDrawSettings();
        unSetFocusedItem();
    }
}
