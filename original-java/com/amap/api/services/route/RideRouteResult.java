package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.route.RouteSearch.RideRouteQuery;
import java.util.ArrayList;
import java.util.List;

public class RideRouteResult extends RouteResult implements Parcelable {
    public static final Creator<RideRouteResult> CREATOR = new Creator<RideRouteResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RideRouteResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RideRouteResult[i];
        }
    };
    private List<RidePath> a = new ArrayList();
    private RideRouteQuery b;

    public List<RidePath> getPaths() {
        return this.a;
    }

    public void setPaths(List<RidePath> list) {
        this.a = list;
    }

    public RideRouteQuery getRideQuery() {
        return this.b;
    }

    public void setRideQuery(RideRouteQuery rideRouteQuery) {
        this.b = rideRouteQuery;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.a);
        parcel.writeParcelable(this.b, i);
    }

    public RideRouteResult(Parcel parcel) {
        super(parcel);
        this.a = parcel.createTypedArrayList(RidePath.CREATOR);
        this.b = (RideRouteQuery) parcel.readParcelable(RideRouteQuery.class.getClassLoader());
    }

    public RideRouteResult() {
    }
}
