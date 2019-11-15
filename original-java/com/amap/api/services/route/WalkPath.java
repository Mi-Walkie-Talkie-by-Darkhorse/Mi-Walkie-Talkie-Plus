package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class WalkPath extends Path implements Parcelable {
    public static final Creator<WalkPath> CREATOR = new Creator<WalkPath>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new WalkPath(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private List<WalkStep> a = new ArrayList();

    public List<WalkStep> getSteps() {
        return this.a;
    }

    public void setSteps(List<WalkStep> list) {
        this.a = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.a);
    }

    public WalkPath(Parcel parcel) {
        super(parcel);
        this.a = parcel.createTypedArrayList(WalkStep.CREATOR);
    }

    public WalkPath() {
    }
}
