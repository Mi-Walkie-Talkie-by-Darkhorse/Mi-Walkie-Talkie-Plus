package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.mipush.sdk.Constants;

public class LatLonSharePoint extends LatLonPoint implements Parcelable {
    public static final Creator<LatLonSharePoint> CREATOR = new Creator<LatLonSharePoint>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new LatLonSharePoint(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new LatLonSharePoint[i];
        }
    };
    private String a;

    public LatLonSharePoint(double d, double d2, String str) {
        super(d, d2);
        this.a = str;
    }

    public String getSharePointName() {
        return this.a;
    }

    public void setSharePointName(String str) {
        this.a = str;
    }

    protected LatLonSharePoint(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = super.hashCode() * 31;
        if (this.a == null) {
            hashCode = 0;
        } else {
            hashCode = this.a.hashCode();
        }
        return hashCode + hashCode2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        LatLonSharePoint latLonSharePoint = (LatLonSharePoint) obj;
        if (this.a == null) {
            if (latLonSharePoint.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(latLonSharePoint.a)) {
            return false;
        } else {
            return true;
        }
    }

    public String toString() {
        return super.toString() + Constants.ACCEPT_TIME_SEPARATOR_SP + this.a;
    }
}
