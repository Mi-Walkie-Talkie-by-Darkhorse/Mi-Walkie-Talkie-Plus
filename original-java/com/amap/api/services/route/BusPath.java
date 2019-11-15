package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class BusPath extends Path implements Parcelable {
    public static final Creator<BusPath> CREATOR = new Creator<BusPath>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new BusPath(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private float a;
    private boolean b;
    private float c;
    private float d;
    private List<BusStep> e = new ArrayList();

    public float getCost() {
        return this.a;
    }

    public void setCost(float f) {
        this.a = f;
    }

    public boolean isNightBus() {
        return this.b;
    }

    public void setNightBus(boolean z) {
        this.b = z;
    }

    public float getWalkDistance() {
        return this.c;
    }

    public void setWalkDistance(float f) {
        this.c = f;
    }

    public float getBusDistance() {
        return this.d;
    }

    public void setBusDistance(float f) {
        this.d = f;
    }

    public List<BusStep> getSteps() {
        return this.e;
    }

    public void setSteps(List<BusStep> list) {
        this.e = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.a);
        parcel.writeBooleanArray(new boolean[]{this.b});
        parcel.writeFloat(this.c);
        parcel.writeFloat(this.d);
        parcel.writeTypedList(this.e);
    }

    public BusPath(Parcel parcel) {
        super(parcel);
        this.a = parcel.readFloat();
        boolean[] zArr = new boolean[1];
        parcel.readBooleanArray(zArr);
        this.b = zArr[0];
        this.c = parcel.readFloat();
        this.d = parcel.readFloat();
        this.e = parcel.createTypedArrayList(BusStep.CREATOR);
    }

    public BusPath() {
    }
}
