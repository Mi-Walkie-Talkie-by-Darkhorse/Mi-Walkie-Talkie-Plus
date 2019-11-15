package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class RouteResult implements Parcelable {
    public static final Creator<RouteResult> CREATOR = new Creator<RouteResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RouteResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RouteResult[i];
        }
    };
    private LatLonPoint a;
    private LatLonPoint b;

    public LatLonPoint getStartPos() {
        return this.a;
    }

    public void setStartPos(LatLonPoint latLonPoint) {
        this.a = latLonPoint;
    }

    public LatLonPoint getTargetPos() {
        return this.b;
    }

    public void setTargetPos(LatLonPoint latLonPoint) {
        this.b = latLonPoint;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
    }

    public RouteResult(Parcel parcel) {
        this.a = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.b = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
    }

    public RouteResult() {
    }
}
