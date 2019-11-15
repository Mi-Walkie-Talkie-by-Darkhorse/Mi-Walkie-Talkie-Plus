package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class RidePath extends Path implements Parcelable {
    public static final Creator<RidePath> CREATOR = new Creator<RidePath>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RidePath(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private List<RideStep> a = new ArrayList();

    public List<RideStep> getSteps() {
        return this.a;
    }

    public void setSteps(List<RideStep> list) {
        this.a = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.a);
    }

    public RidePath(Parcel parcel) {
        super(parcel);
        this.a = parcel.createTypedArrayList(RideStep.CREATOR);
    }

    public RidePath() {
    }
}
