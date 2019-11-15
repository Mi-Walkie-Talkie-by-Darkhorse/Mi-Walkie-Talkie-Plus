package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.List;

public class TruckStep implements Parcelable {
    public static final Creator<TruckStep> CREATOR = new Creator<TruckStep>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new TruckStep(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TruckStep[i];
        }
    };
    private String a;
    private String b;
    private String c;
    private float d;
    private float e;
    private float f;
    private String g;
    private float h;
    private List<LatLonPoint> i;
    private String j;
    private String k;
    private List<RouteSearchCity> l;
    private List<TMC> m;

    public TruckStep() {
    }

    protected TruckStep(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readFloat();
        this.e = parcel.readFloat();
        this.f = parcel.readFloat();
        this.g = parcel.readString();
        this.h = parcel.readFloat();
        this.i = parcel.createTypedArrayList(LatLonPoint.CREATOR);
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.l = parcel.createTypedArrayList(RouteSearchCity.CREATOR);
        this.m = parcel.createTypedArrayList(TMC.CREATOR);
    }

    public void setInstruction(String str) {
        this.a = str;
    }

    public void setOrientation(String str) {
        this.b = str;
    }

    public void setRoad(String str) {
        this.c = str;
    }

    public void setTolls(float f2) {
        this.d = f2;
    }

    public void setDistance(float f2) {
        this.e = f2;
    }

    public void setTollDistance(float f2) {
        this.f = f2;
    }

    public void setTollRoad(String str) {
        this.g = str;
    }

    public void setDuration(float f2) {
        this.h = f2;
    }

    public void setPolyline(List<LatLonPoint> list) {
        this.i = list;
    }

    public void setAction(String str) {
        this.j = str;
    }

    public void setAssistantAction(String str) {
        this.k = str;
    }

    public void setRouteSearchCityList(List<RouteSearchCity> list) {
        this.l = list;
    }

    public void setTMCs(List<TMC> list) {
        this.m = list;
    }

    public String getInstruction() {
        return this.a;
    }

    public String getOrientation() {
        return this.b;
    }

    public String getRoad() {
        return this.c;
    }

    public float getTolls() {
        return this.d;
    }

    public float getDistance() {
        return this.e;
    }

    public float getTollDistance() {
        return this.f;
    }

    public String getTollRoad() {
        return this.g;
    }

    public float getDuration() {
        return this.h;
    }

    public List<LatLonPoint> getPolyline() {
        return this.i;
    }

    public String getAction() {
        return this.j;
    }

    public String getAssistantAction() {
        return this.k;
    }

    public List<RouteSearchCity> getRouteSearchCityList() {
        return this.l;
    }

    public List<TMC> getTMCs() {
        return this.m;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeFloat(this.d);
        parcel.writeFloat(this.e);
        parcel.writeFloat(this.f);
        parcel.writeString(this.g);
        parcel.writeFloat(this.h);
        parcel.writeTypedList(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeTypedList(this.l);
        parcel.writeTypedList(this.m);
    }
}
