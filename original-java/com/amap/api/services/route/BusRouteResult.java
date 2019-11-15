package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.route.RouteSearch.BusRouteQuery;
import java.util.ArrayList;
import java.util.List;

public class BusRouteResult extends RouteResult implements Parcelable {
    public static final Creator<BusRouteResult> CREATOR = new Creator<BusRouteResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new BusRouteResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new BusRouteResult[i];
        }
    };
    private float a;
    private List<BusPath> b = new ArrayList();
    private BusRouteQuery c;

    public float getTaxiCost() {
        return this.a;
    }

    public void setTaxiCost(float f) {
        this.a = f;
    }

    public List<BusPath> getPaths() {
        return this.b;
    }

    public void setPaths(List<BusPath> list) {
        this.b = list;
    }

    public BusRouteQuery getBusQuery() {
        return this.c;
    }

    public void setBusQuery(BusRouteQuery busRouteQuery) {
        this.c = busRouteQuery;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.a);
        parcel.writeTypedList(this.b);
        parcel.writeParcelable(this.c, i);
    }

    public BusRouteResult(Parcel parcel) {
        super(parcel);
        this.a = parcel.readFloat();
        this.b = parcel.createTypedArrayList(BusPath.CREATOR);
        this.c = (BusRouteQuery) parcel.readParcelable(BusRouteQuery.class.getClassLoader());
    }

    public BusRouteResult() {
    }
}
