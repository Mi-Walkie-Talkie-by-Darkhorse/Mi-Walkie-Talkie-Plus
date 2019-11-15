package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.route.RouteSearch.TruckRouteQuery;
import java.util.List;

public class TruckRouteRestult implements Parcelable {
    public static final Creator<TruckRouteRestult> CREATOR = new Creator<TruckRouteRestult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new TruckRouteRestult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TruckRouteRestult[i];
        }
    };
    private TruckRouteQuery a;
    private List<TruckPath> b;
    private LatLonPoint c;
    private LatLonPoint d;

    public TruckRouteRestult() {
    }

    protected TruckRouteRestult(Parcel parcel) {
        this.b = parcel.createTypedArrayList(TruckPath.CREATOR);
        this.c = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.d = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
    }

    public void setTruckQuery(TruckRouteQuery truckRouteQuery) {
        this.a = truckRouteQuery;
    }

    public void setPaths(List<TruckPath> list) {
        this.b = list;
    }

    public void setStartPos(LatLonPoint latLonPoint) {
        this.c = latLonPoint;
    }

    public void setTargetPos(LatLonPoint latLonPoint) {
        this.d = latLonPoint;
    }

    public TruckRouteQuery getTruckQuery() {
        return this.a;
    }

    public List<TruckPath> getPaths() {
        return this.b;
    }

    public LatLonPoint getStartPos() {
        return this.c;
    }

    public LatLonPoint getTargetPos() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
    }
}
