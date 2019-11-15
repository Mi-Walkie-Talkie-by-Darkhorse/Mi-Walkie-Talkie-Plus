package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.route.RouteSearch.DriveRouteQuery;
import java.util.ArrayList;
import java.util.List;

public class DriveRouteResult extends RouteResult implements Parcelable {
    public static final Creator<DriveRouteResult> CREATOR = new Creator<DriveRouteResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DriveRouteResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DriveRouteResult[i];
        }
    };
    private float a;
    private List<DrivePath> b = new ArrayList();
    private DriveRouteQuery c;

    public float getTaxiCost() {
        return this.a;
    }

    public void setTaxiCost(float f) {
        this.a = f;
    }

    public List<DrivePath> getPaths() {
        return this.b;
    }

    public void setPaths(List<DrivePath> list) {
        this.b = list;
    }

    public DriveRouteQuery getDriveQuery() {
        return this.c;
    }

    public void setDriveQuery(DriveRouteQuery driveRouteQuery) {
        this.c = driveRouteQuery;
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

    public DriveRouteResult(Parcel parcel) {
        super(parcel);
        this.a = parcel.readFloat();
        this.b = parcel.createTypedArrayList(DrivePath.CREATOR);
        this.c = (DriveRouteQuery) parcel.readParcelable(DriveRouteQuery.class.getClassLoader());
    }

    public DriveRouteResult() {
    }
}
