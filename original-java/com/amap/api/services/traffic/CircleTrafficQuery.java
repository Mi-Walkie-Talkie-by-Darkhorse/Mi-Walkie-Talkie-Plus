package com.amap.api.services.traffic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.LatLonPoint;

public class CircleTrafficQuery extends a implements Parcelable, Cloneable {
    public static final Creator<CircleTrafficQuery> CREATOR = new Creator<CircleTrafficQuery>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CircleTrafficQuery(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CircleTrafficQuery[i];
        }
    };
    private LatLonPoint b;
    private int c = 1000;

    public /* bridge */ /* synthetic */ int getLevel() {
        return super.getLevel();
    }

    public /* bridge */ /* synthetic */ void setLevel(int i) {
        super.setLevel(i);
    }

    public LatLonPoint getCenterPoint() {
        return this.b;
    }

    public void setCenterPoint(LatLonPoint latLonPoint) {
        this.b = latLonPoint;
    }

    public int getRadius() {
        return this.c;
    }

    public void setRadius(int i) {
        this.c = i;
    }

    public CircleTrafficQuery(LatLonPoint latLonPoint, int i, int i2) {
        this.b = latLonPoint;
        this.c = i;
        this.a = i2;
    }

    protected CircleTrafficQuery(Parcel parcel) {
        this.b = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.c = parcel.readInt();
        this.a = parcel.readInt();
    }

    public CircleTrafficQuery clone() {
        try {
            super.clone();
        } catch (CloneNotSupportedException e) {
            t.a(e, "CircleTrafficQuery", "CircleTrafficQueryClone");
        }
        return new CircleTrafficQuery(this.b, this.c, this.a);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.a);
    }
}
