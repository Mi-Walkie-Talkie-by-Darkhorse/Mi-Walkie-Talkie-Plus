package org.osmdroid.views.overlay;

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
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.osmdroid.library.R;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.ItemizedIconOverlay.OnItemGestureListener;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.OverlayItem.HotspotPlace;

public class ItemizedOverlayWithFocus<Item extends OverlayItem> extends ItemizedIconOverlay<Item> {
    private final int DEFAULTMARKER_BACKGROUNDCOLOR;
    private int DESCRIPTION_BOX_CORNERWIDTH;
    private int DESCRIPTION_BOX_PADDING;
    private int DESCRIPTION_LINE_HEIGHT;
    private int DESCRIPTION_MAXWIDTH;
    private int DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT;
    private int FONT_SIZE_DP;
    private String UNKNOWN;
    private int fontSizePixels;
    private Context mContext;
    protected Paint mDescriptionPaint;
    protected boolean mFocusItemsOnTap;
    protected int mFocusedItemIndex;
    private final Point mFocusedScreenCoords;
    protected Paint mMarkerBackgroundPaint;
    protected int mMarkerFocusedBackgroundColor;
    protected Drawable mMarkerFocusedBase;
    private final Rect mRect;
    protected Paint mTitlePaint;

    public ItemizedOverlayWithFocus(Context context, List<Item> list, OnItemGestureListener<Item> onItemGestureListener) {
        this(list, onItemGestureListener, context);
    }

    public ItemizedOverlayWithFocus(List<Item> list, OnItemGestureListener<Item> onItemGestureListener, Context context) {
        this(list, context.getResources().getDrawable(R.drawable.marker_default), null, Integer.MIN_VALUE, onItemGestureListener, context);
    }

    public ItemizedOverlayWithFocus(List<Item> list, Drawable drawable, Drawable drawable2, int i, OnItemGestureListener<Item> onItemGestureListener, Context context) {
        super(list, drawable, onItemGestureListener, context);
        this.DEFAULTMARKER_BACKGROUNDCOLOR = Color.rgb(101, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384, 74);
        this.DESCRIPTION_BOX_PADDING = 3;
        this.DESCRIPTION_BOX_CORNERWIDTH = 3;
        this.DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT = 2;
        this.FONT_SIZE_DP = 14;
        this.DESCRIPTION_MAXWIDTH = 600;
        this.DESCRIPTION_LINE_HEIGHT = 30;
        this.mFocusedScreenCoords = new Point();
        this.mRect = new Rect();
        this.mContext = context;
        if (drawable2 == null) {
            this.mMarkerFocusedBase = boundToHotspot(context.getResources().getDrawable(R.drawable.marker_default_focused_base), HotspotPlace.BOTTOM_CENTER);
        } else {
            this.mMarkerFocusedBase = drawable2;
        }
        if (i == Integer.MIN_VALUE) {
            i = this.DEFAULTMARKER_BACKGROUNDCOLOR;
        }
        this.mMarkerFocusedBackgroundColor = i;
        calculateDrawSettings();
        unSetFocusedItem();
    }

    private void calculateDrawSettings() {
        this.fontSizePixels = (int) TypedValue.applyDimension(1, (float) this.FONT_SIZE_DP, this.mContext.getResources().getDisplayMetrics());
        this.DESCRIPTION_LINE_HEIGHT = this.fontSizePixels + 5;
        this.DESCRIPTION_MAXWIDTH = (int) (((double) this.mContext.getResources().getDisplayMetrics().widthPixels) * 0.8d);
        this.UNKNOWN = this.mContext.getResources().getString(R.string.unknown);
        this.mMarkerBackgroundPaint = new Paint();
        this.mDescriptionPaint = new Paint();
        this.mDescriptionPaint.setAntiAlias(true);
        this.mDescriptionPaint.setTextSize((float) this.fontSizePixels);
        this.mTitlePaint = new Paint();
        this.mTitlePaint.setTextSize((float) this.fontSizePixels);
        this.mTitlePaint.setFakeBoldText(true);
        this.mTitlePaint.setAntiAlias(true);
    }

    public void setDescriptionBoxPadding(int i) {
        this.DESCRIPTION_BOX_PADDING = i;
    }

    public void setDescriptionBoxCornerWidth(int i) {
        this.DESCRIPTION_BOX_CORNERWIDTH = i;
    }

    public void setDescriptionTitleExtraLineHeight(int i) {
        this.DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT = i;
    }

    public void setMarkerBackgroundColor(int i) {
        this.mMarkerFocusedBackgroundColor = i;
    }

    public void setMarkerTitleForegroundColor(int i) {
        this.mTitlePaint.setColor(i);
    }

    public void setMarkerDescriptionForegroundColor(int i) {
        this.mDescriptionPaint.setColor(i);
    }

    public void setFontSize(int i) {
        this.FONT_SIZE_DP = i;
        calculateDrawSettings();
    }

    public void setDescriptionMaxWidth(int i) {
        this.DESCRIPTION_MAXWIDTH = i;
        calculateDrawSettings();
    }

    public void setDescriptionLineHeight(int i) {
        this.DESCRIPTION_LINE_HEIGHT = i;
        calculateDrawSettings();
    }

    public Item getFocusedItem() {
        if (this.mFocusedItemIndex == Integer.MIN_VALUE) {
            return null;
        }
        return (OverlayItem) this.mItemList.get(this.mFocusedItemIndex);
    }

    public void setFocusedItem(int i) {
        this.mFocusedItemIndex = i;
    }

    public void unSetFocusedItem() {
        this.mFocusedItemIndex = Integer.MIN_VALUE;
    }

    public void setFocusedItem(Item item) {
        int indexOf = this.mItemList.indexOf(item);
        if (indexOf < 0) {
            throw new IllegalArgumentException();
        }
        setFocusedItem(indexOf);
    }

    public void setFocusItemsOnTap(boolean z) {
        this.mFocusItemsOnTap = z;
    }

    /* access modifiers changed from: protected */
    public boolean onSingleTapUpHelper(int i, Item item, MapView mapView) {
        if (this.mFocusItemsOnTap) {
            this.mFocusedItemIndex = i;
            mapView.postInvalidate();
        }
        return this.mOnItemGestureListener.onItemSingleTapUp(i, item);
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        Drawable drawable;
        String title;
        String snippet;
        int i;
        super.draw(canvas, mapView, z);
        if (!z && this.mFocusedItemIndex != Integer.MIN_VALUE && this.mItemList != null) {
            OverlayItem overlayItem = (OverlayItem) this.mItemList.get(this.mFocusedItemIndex);
            Drawable marker = overlayItem.getMarker(4);
            if (marker == null) {
                drawable = this.mMarkerFocusedBase;
            } else {
                drawable = marker;
            }
            mapView.getProjection().toPixels(overlayItem.getPoint(), this.mFocusedScreenCoords);
            drawable.copyBounds(this.mRect);
            this.mRect.offset(this.mFocusedScreenCoords.x, this.mFocusedScreenCoords.y);
            if (overlayItem.getTitle() == null) {
                title = this.UNKNOWN;
            } else {
                title = overlayItem.getTitle();
            }
            if (overlayItem.getSnippet() == null) {
                snippet = this.UNKNOWN;
            } else {
                snippet = overlayItem.getSnippet();
            }
            float[] fArr = new float[snippet.length()];
            this.mDescriptionPaint.getTextWidths(snippet, fArr);
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i < fArr.length) {
                if (!Character.isLetter(snippet.charAt(i))) {
                    i5 = i;
                }
                float f = fArr[i];
                if (((float) i3) + f > ((float) this.DESCRIPTION_MAXWIDTH)) {
                    if (i4 == i5) {
                        i--;
                    } else {
                        i = i5;
                    }
                    sb.append(snippet.subSequence(i4, i));
                    sb.append(10);
                    i2 = Math.max(i2, i3);
                    i3 = 0;
                    i4 = i;
                }
                i3 = (int) (((float) i3) + f);
                i6 = i + 1;
            }
            if (i != i4) {
                String substring = snippet.substring(i4, i);
                i2 = Math.max(i2, (int) this.mDescriptionPaint.measureText(substring));
                sb.append(substring);
            }
            String[] split = sb.toString().split("\n");
            int min = Math.min(Math.max(i2, (int) this.mDescriptionPaint.measureText(title)), this.DESCRIPTION_MAXWIDTH);
            int width = ((this.mRect.left - (min / 2)) - this.DESCRIPTION_BOX_PADDING) + (this.mRect.width() / 2);
            int i7 = min + width + (this.DESCRIPTION_BOX_PADDING * 2);
            int i8 = this.mRect.top;
            int length = ((i8 - this.DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT) - ((split.length + 1) * this.DESCRIPTION_LINE_HEIGHT)) - (this.DESCRIPTION_BOX_PADDING * 2);
            this.mMarkerBackgroundPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRoundRect(new RectF((float) (width - 1), (float) (length - 1), (float) (i7 + 1), (float) (i8 + 1)), (float) this.DESCRIPTION_BOX_CORNERWIDTH, (float) this.DESCRIPTION_BOX_CORNERWIDTH, this.mDescriptionPaint);
            this.mMarkerBackgroundPaint.setColor(this.mMarkerFocusedBackgroundColor);
            canvas.drawRoundRect(new RectF((float) width, (float) length, (float) i7, (float) i8), (float) this.DESCRIPTION_BOX_CORNERWIDTH, (float) this.DESCRIPTION_BOX_CORNERWIDTH, this.mMarkerBackgroundPaint);
            int i9 = width + this.DESCRIPTION_BOX_PADDING;
            int i10 = i8 - this.DESCRIPTION_BOX_PADDING;
            int length2 = split.length - 1;
            int i11 = i10;
            while (length2 >= 0) {
                canvas.drawText(split[length2].trim(), (float) i9, (float) i11, this.mDescriptionPaint);
                length2--;
                i11 -= this.DESCRIPTION_LINE_HEIGHT;
            }
            canvas.drawText(title, (float) i9, (float) (i11 - this.DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT), this.mTitlePaint);
            canvas.drawLine((float) width, (float) i11, (float) i7, (float) i11, this.mDescriptionPaint);
            Overlay.drawAt(canvas, drawable, this.mFocusedScreenCoords.x, this.mFocusedScreenCoords.y, false, mapView.getMapOrientation());
        }
    }

    public void onDetach(MapView mapView) {
        super.onDetach(mapView);
        this.mContext = null;
    }
}
