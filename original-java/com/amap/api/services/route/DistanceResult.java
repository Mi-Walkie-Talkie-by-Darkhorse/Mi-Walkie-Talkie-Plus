package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.route.DistanceSearch.DistanceQuery;
import java.util.List;

public class DistanceResult implements Parcelable {
    public static final Creator<DistanceResult> CREATOR = new Creator<DistanceResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DistanceResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DistanceResult[i];
        }
    };
    private DistanceQuery a;
    private List<DistanceItem> b = null;

    public DistanceResult() {
    }

    protected DistanceResult(Parcel parcel) {
        this.b = parcel.createTypedArrayList(DistanceItem.CREATOR);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
    }

    public void setDistanceQuery(DistanceQuery distanceQuery) {
        this.a = distanceQuery;
    }

    public DistanceQuery getDistanceQuery() {
        return this.a;
    }

    public List<DistanceItem> getDistanceResults() {
        return this.b;
    }

    public void setDistanceResults(List<DistanceItem> list) {
        this.b = list;
    }
}
