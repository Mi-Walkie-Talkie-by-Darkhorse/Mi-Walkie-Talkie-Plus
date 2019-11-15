package org.osmdroid.util;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.util.constants.MapViewConstants;

@Deprecated
public class BoundingBoxE6 implements Parcelable, Serializable, MapViewConstants {
    public static final Creator<BoundingBoxE6> CREATOR = new Creator<BoundingBoxE6>() {
        public BoundingBoxE6 createFromParcel(Parcel parcel) {
            return BoundingBoxE6.readFromParcel(parcel);
        }

        public BoundingBoxE6[] newArray(int i) {
            return new BoundingBoxE6[i];
        }
    };
    static final long serialVersionUID = 2;
    protected final int mLatNorthE6;
    protected final int mLatSouthE6;
    protected final int mLonEastE6;
    protected final int mLonWestE6;

    public BoundingBoxE6(int i, int i2, int i3, int i4) {
        this.mLatNorthE6 = i;
        this.mLonEastE6 = i2;
        this.mLatSouthE6 = i3;
        this.mLonWestE6 = i4;
    }

    public BoundingBoxE6(double d, double d2, double d3, double d4) {
        this.mLatNorthE6 = (int) (d * 1000000.0d);
        this.mLonEastE6 = (int) (d2 * 1000000.0d);
        this.mLatSouthE6 = (int) (d3 * 1000000.0d);
        this.mLonWestE6 = (int) (d4 * 1000000.0d);
    }

    public GeoPoint getCenter() {
        return new GeoPoint((this.mLatNorthE6 + this.mLatSouthE6) / 2, (this.mLonEastE6 + this.mLonWestE6) / 2);
    }

    public int getDiagonalLengthInMeters() {
        return new GeoPoint(this.mLatNorthE6, this.mLonWestE6).distanceTo(new GeoPoint(this.mLatSouthE6, this.mLonEastE6));
    }

    public int getLatNorthE6() {
        return this.mLatNorthE6;
    }

    public int getLatSouthE6() {
        return this.mLatSouthE6;
    }

    public int getLonEastE6() {
        return this.mLonEastE6;
    }

    public int getLonWestE6() {
        return this.mLonWestE6;
    }

    public int getLatitudeSpanE6() {
        return Math.abs(this.mLatNorthE6 - this.mLatSouthE6);
    }

    public int getLongitudeSpanE6() {
        return Math.abs(this.mLonEastE6 - this.mLonWestE6);
    }

    public PointF getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(int i, int i2, PointF pointF) {
        if (pointF == null) {
            pointF = new PointF();
        }
        pointF.set(1.0f - (((float) (this.mLonEastE6 - i2)) / ((float) getLongitudeSpanE6())), ((float) (this.mLatNorthE6 - i)) / ((float) getLatitudeSpanE6()));
        return pointF;
    }

    public PointF getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(int i, int i2, PointF pointF) {
        if (pointF == null) {
            pointF = new PointF();
        }
        pointF.set(1.0f - (((float) (this.mLonEastE6 - i2)) / ((float) getLongitudeSpanE6())), (float) ((MyMath.gudermannInverse(((double) this.mLatNorthE6) / 1000000.0d) - MyMath.gudermannInverse(((double) i) / 1000000.0d)) / (MyMath.gudermannInverse(((double) this.mLatNorthE6) / 1000000.0d) - MyMath.gudermannInverse(((double) this.mLatSouthE6) / 1000000.0d))));
        return pointF;
    }

    public GeoPoint getGeoPointOfRelativePositionWithLinearInterpolation(float f, float f2) {
        int latitudeSpanE6 = (int) (((float) this.mLatNorthE6) - (((float) getLatitudeSpanE6()) * f2));
        int longitudeSpanE6 = (int) (((float) this.mLonWestE6) + (((float) getLongitudeSpanE6()) * f));
        while (latitudeSpanE6 > 90500000) {
            latitudeSpanE6 -= 90500000;
        }
        while (latitudeSpanE6 < -90500000) {
            latitudeSpanE6 += 90500000;
        }
        while (longitudeSpanE6 > 180000000) {
            longitudeSpanE6 -= 180000000;
        }
        while (longitudeSpanE6 < -180000000) {
            longitudeSpanE6 += 180000000;
        }
        return new GeoPoint(latitudeSpanE6, longitudeSpanE6);
    }

    public GeoPoint getGeoPointOfRelativePositionWithExactGudermannInterpolation(float f, float f2) {
        double gudermannInverse = MyMath.gudermannInverse(((double) this.mLatNorthE6) / 1000000.0d);
        double gudermannInverse2 = MyMath.gudermannInverse(((double) this.mLatSouthE6) / 1000000.0d);
        int gudermann = (int) (MyMath.gudermann(((gudermannInverse - gudermannInverse2) * ((double) (1.0f - f2))) + gudermannInverse2) * 1000000.0d);
        int longitudeSpanE6 = (int) (((float) this.mLonWestE6) + (((float) getLongitudeSpanE6()) * f));
        while (gudermann > 90500000) {
            gudermann -= 90500000;
        }
        while (gudermann < -90500000) {
            gudermann += 90500000;
        }
        while (longitudeSpanE6 > 180000000) {
            longitudeSpanE6 -= 180000000;
        }
        while (longitudeSpanE6 < -180000000) {
            longitudeSpanE6 += 180000000;
        }
        return new GeoPoint(gudermann, longitudeSpanE6);
    }

    public BoundingBoxE6 increaseByScale(float f) {
        GeoPoint center = getCenter();
        int latitudeSpanE6 = (int) ((((float) getLatitudeSpanE6()) * f) / 2.0f);
        int longitudeSpanE6 = (int) ((((float) getLongitudeSpanE6()) * f) / 2.0f);
        return new BoundingBoxE6(center.getLatitudeE6() + latitudeSpanE6, center.getLongitudeE6() + longitudeSpanE6, center.getLatitudeE6() - latitudeSpanE6, center.getLongitudeE6() - longitudeSpanE6);
    }

    public String toString() {
        return new StringBuffer().append("N:").append(this.mLatNorthE6).append("; E:").append(this.mLonEastE6).append("; S:").append(this.mLatSouthE6).append("; W:").append(this.mLonWestE6).toString();
    }

    public GeoPoint bringToBoundingBox(int i, int i2) {
        return new GeoPoint(Math.max(this.mLatSouthE6, Math.min(this.mLatNorthE6, i)), Math.max(this.mLonWestE6, Math.min(this.mLonEastE6, i2)));
    }

    public static BoundingBoxE6 fromGeoPoints(ArrayList<? extends GeoPoint> arrayList) {
        int i = Integer.MIN_VALUE;
        Iterator it = arrayList.iterator();
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            int i5 = i;
            if (!it.hasNext()) {
                return new BoundingBoxE6(i2, i5, i4, i3);
            }
            GeoPoint geoPoint = (GeoPoint) it.next();
            int latitudeE6 = geoPoint.getLatitudeE6();
            int longitudeE6 = geoPoint.getLongitudeE6();
            i4 = Math.min(i4, latitudeE6);
            i3 = Math.min(i3, longitudeE6);
            i2 = Math.max(i2, latitudeE6);
            i = Math.max(i5, longitudeE6);
        }
    }

    public boolean contains(IGeoPoint iGeoPoint) {
        return contains(iGeoPoint.getLatitudeE6(), iGeoPoint.getLongitudeE6());
    }

    public boolean contains(int i, int i2) {
        if (i < this.mLatNorthE6 && i > this.mLatSouthE6) {
            if (this.mLonWestE6 < this.mLonEastE6) {
                if (i2 < this.mLonEastE6 && i2 > this.mLonWestE6) {
                    return true;
                }
            } else if (i2 < this.mLonEastE6 || i2 > this.mLonWestE6) {
                return true;
            }
        }
        return false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mLatNorthE6);
        parcel.writeInt(this.mLonEastE6);
        parcel.writeInt(this.mLatSouthE6);
        parcel.writeInt(this.mLonWestE6);
    }

    /* access modifiers changed from: private */
    public static BoundingBoxE6 readFromParcel(Parcel parcel) {
        return new BoundingBoxE6(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
