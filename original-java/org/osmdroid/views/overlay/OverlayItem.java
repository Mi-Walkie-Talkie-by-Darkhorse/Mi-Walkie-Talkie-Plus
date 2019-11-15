package org.osmdroid.views.overlay;

import android.graphics.Point;
import android.graphics.drawable.Drawable;
import org.osmdroid.api.IGeoPoint;

public class OverlayItem {
    protected static final Point DEFAULT_MARKER_SIZE = new Point(26, 94);
    public static final int ITEM_STATE_FOCUSED_MASK = 4;
    public static final int ITEM_STATE_PRESSED_MASK = 1;
    public static final int ITEM_STATE_SELECTED_MASK = 2;
    protected final IGeoPoint mGeoPoint;
    protected HotspotPlace mHotspotPlace;
    protected Drawable mMarker;
    protected final String mSnippet;
    protected final String mTitle;
    protected final String mUid;

    public enum HotspotPlace {
        NONE,
        CENTER,
        BOTTOM_CENTER,
        TOP_CENTER,
        RIGHT_CENTER,
        LEFT_CENTER,
        UPPER_RIGHT_CORNER,
        LOWER_RIGHT_CORNER,
        UPPER_LEFT_CORNER,
        LOWER_LEFT_CORNER
    }

    public OverlayItem(String str, String str2, IGeoPoint iGeoPoint) {
        this(null, str, str2, iGeoPoint);
    }

    public OverlayItem(String str, String str2, String str3, IGeoPoint iGeoPoint) {
        this.mTitle = str2;
        this.mSnippet = str3;
        this.mGeoPoint = iGeoPoint;
        this.mUid = str;
    }

    public String getUid() {
        return this.mUid;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getSnippet() {
        return this.mSnippet;
    }

    public IGeoPoint getPoint() {
        return this.mGeoPoint;
    }

    public Drawable getMarker(int i) {
        if (this.mMarker == null) {
            return null;
        }
        setState(this.mMarker, i);
        return this.mMarker;
    }

    public void setMarker(Drawable drawable) {
        this.mMarker = drawable;
    }

    public void setMarkerHotspot(HotspotPlace hotspotPlace) {
        if (hotspotPlace == null) {
            hotspotPlace = HotspotPlace.BOTTOM_CENTER;
        }
        this.mHotspotPlace = hotspotPlace;
    }

    public HotspotPlace getMarkerHotspot() {
        return this.mHotspotPlace;
    }

    public static void setState(Drawable drawable, int i) {
        int i2;
        int i3;
        int[] iArr = new int[3];
        if ((i & 1) > 0) {
            i2 = 1;
            iArr[0] = 16842919;
        } else {
            i2 = 0;
        }
        if ((i & 2) > 0) {
            i3 = i2 + 1;
            iArr[i2] = 16842913;
        } else {
            i3 = i2;
        }
        if ((i & 4) > 0) {
            int i4 = i3 + 1;
            iArr[i3] = 16842908;
        }
        drawable.setState(iArr);
    }

    public Drawable getDrawable() {
        return this.mMarker;
    }

    public int getWidth() {
        return this.mMarker.getIntrinsicWidth();
    }

    public int getHeight() {
        return this.mMarker.getIntrinsicHeight();
    }
}
