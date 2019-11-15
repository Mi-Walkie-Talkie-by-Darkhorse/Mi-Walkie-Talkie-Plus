package org.osmdroid.util;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import java.util.List;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.util.constants.MapViewConstants;

public class BoundingBox implements Parcelable, Serializable, MapViewConstants {
    public static final Creator<BoundingBox> CREATOR = new Creator<BoundingBox>() {
        public BoundingBox createFromParcel(Parcel parcel) {
            return BoundingBox.readFromParcel(parcel);
        }

        public BoundingBox[] newArray(int i) {
            return new BoundingBox[i];
        }
    };
    static final long serialVersionUID = 2;
    protected final double mLatNorth;
    protected final double mLatSouth;
    protected final double mLonEast;
    protected final double mLonWest;

    public BoundingBox(double d, double d2, double d3, double d4) {
        this.mLatNorth = d;
        this.mLonEast = d2;
        this.mLatSouth = d3;
        this.mLonWest = d4;
    }

    public GeoPoint getCenter() {
        return new GeoPoint((this.mLatNorth + this.mLatSouth) / 2.0d, (this.mLonEast + this.mLonWest) / 2.0d);
    }

    public double getDiagonalLengthInMeters() {
        return (double) new GeoPoint(this.mLatNorth, this.mLonWest).distanceTo(new GeoPoint(this.mLatSouth, this.mLonEast));
    }

    public double getLatNorth() {
        return this.mLatNorth;
    }

    public double getLatSouth() {
        return this.mLatSouth;
    }

    public double getLonEast() {
        return this.mLonEast;
    }

    public double getLonWest() {
        return this.mLonWest;
    }

    public double getLatitudeSpan() {
        return Math.abs(this.mLatNorth - this.mLatSouth);
    }

    public double getLongitudeSpan() {
        return Math.abs(this.mLonEast - this.mLonWest);
    }

    public PointF getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(double d, double d2, PointF pointF) {
        if (pointF == null) {
            pointF = new PointF();
        }
        pointF.set(1.0f - ((float) ((this.mLonEast - d2) / getLongitudeSpan())), (float) ((this.mLatNorth - d) / getLatitudeSpan()));
        return pointF;
    }

    public PointF getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(double d, double d2, PointF pointF) {
        if (pointF == null) {
            pointF = new PointF();
        }
        pointF.set(1.0f - ((float) ((this.mLonEast - d2) / getLongitudeSpan())), (float) ((MyMath.gudermannInverse(this.mLatNorth) - MyMath.gudermannInverse(d)) / (MyMath.gudermannInverse(this.mLatNorth) - MyMath.gudermannInverse(this.mLatSouth))));
        return pointF;
    }

    public GeoPoint getGeoPointOfRelativePositionWithLinearInterpolation(float f, float f2) {
        double latitudeSpan = this.mLatNorth - (getLatitudeSpan() * ((double) f2));
        double longitudeSpan = this.mLonWest + (getLongitudeSpan() * ((double) f));
        while (latitudeSpan > 90.5d) {
            latitudeSpan -= 90.5d;
        }
        while (latitudeSpan < -90.5d) {
            latitudeSpan += 90.5d;
        }
        while (longitudeSpan > 180.0d) {
            longitudeSpan -= 180.0d;
        }
        while (longitudeSpan < -180.0d) {
            longitudeSpan += 180.0d;
        }
        return new GeoPoint(latitudeSpan, longitudeSpan);
    }

    public GeoPoint getGeoPointOfRelativePositionWithExactGudermannInterpolation(float f, float f2) {
        double gudermannInverse = MyMath.gudermannInverse(this.mLatNorth);
        double gudermannInverse2 = MyMath.gudermannInverse(this.mLatSouth);
        double gudermann = MyMath.gudermann(((gudermannInverse - gudermannInverse2) * ((double) (1.0f - f2))) + gudermannInverse2);
        double longitudeSpan = this.mLonWest + (getLongitudeSpan() * ((double) f));
        while (gudermann > 90.5d) {
            gudermann -= 90.5d;
        }
        while (gudermann < -90.5d) {
            gudermann += 90.5d;
        }
        while (longitudeSpan > 180.0d) {
            longitudeSpan -= 180.0d;
        }
        while (longitudeSpan < -180.0d) {
            longitudeSpan += 180.0d;
        }
        return new GeoPoint(gudermann, longitudeSpan);
    }

    public BoundingBox increaseByScale(float f) {
        GeoPoint center = getCenter();
        double latitudeSpan = (getLatitudeSpan() * ((double) f)) / 2.0d;
        double longitudeSpan = (getLongitudeSpan() * ((double) f)) / 2.0d;
        return new BoundingBox(center.getLatitude() + latitudeSpan, center.getLongitude() + longitudeSpan, center.getLatitude() - latitudeSpan, center.getLongitude() - longitudeSpan);
    }

    public String toString() {
        return new StringBuffer().append("N:").append(this.mLatNorth).append("; E:").append(this.mLonEast).append("; S:").append(this.mLatSouth).append("; W:").append(this.mLonWest).toString();
    }

    public GeoPoint bringToBoundingBox(double d, double d2) {
        return new GeoPoint(Math.max(this.mLatSouth, Math.min(this.mLatNorth, d)), Math.max(this.mLonWest, Math.min(this.mLonEast, d2)));
    }

    public static BoundingBox fromGeoPoints(List<? extends IGeoPoint> list) {
        double d = Double.MAX_VALUE;
        double d2 = -1.7976931348623157E308d;
        double d3 = -1.7976931348623157E308d;
        double d4 = Double.MAX_VALUE;
        for (IGeoPoint iGeoPoint : list) {
            double latitude = iGeoPoint.getLatitude();
            double longitude = iGeoPoint.getLongitude();
            d4 = Math.min(d4, latitude);
            d = Math.min(d, longitude);
            d3 = Math.max(d3, latitude);
            d2 = Math.max(d2, longitude);
        }
        return new BoundingBox(d3, d2, d4, d);
    }

    public boolean contains(IGeoPoint iGeoPoint) {
        return contains(iGeoPoint.getLatitude(), iGeoPoint.getLongitude());
    }

    public boolean contains(double d, double d2) {
        return d < this.mLatNorth && d > this.mLatSouth && d2 < this.mLonEast && d2 > this.mLonWest;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.mLatNorth);
        parcel.writeDouble(this.mLonEast);
        parcel.writeDouble(this.mLatSouth);
        parcel.writeDouble(this.mLonWest);
    }

    /* access modifiers changed from: private */
    public static BoundingBox readFromParcel(Parcel parcel) {
        return new BoundingBox(parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble());
    }

    @Deprecated
    public int getLatitudeSpanE6() {
        return (int) (getLatitudeSpan() * 1000000.0d);
    }

    @Deprecated
    public int getLongitudeSpanE6() {
        return (int) (getLongitudeSpan() * 1000000.0d);
    }
}
