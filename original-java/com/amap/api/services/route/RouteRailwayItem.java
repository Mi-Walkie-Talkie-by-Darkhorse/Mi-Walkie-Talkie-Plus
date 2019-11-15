package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class RouteRailwayItem extends Railway implements Parcelable {
    public static final Creator<RouteRailwayItem> CREATOR = new Creator<RouteRailwayItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RouteRailwayItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RouteRailwayItem[i];
        }
    };
    private String a;
    private String b;
    private float c;
    private String d;
    private RailwayStationItem e;
    private RailwayStationItem f;
    private List<RailwayStationItem> g = new ArrayList();
    private List<Railway> h = new ArrayList();
    private List<RailwaySpace> i = new ArrayList();

    public RouteRailwayItem() {
    }

    public String getTime() {
        return this.a;
    }

    public String getTrip() {
        return this.b;
    }

    public float getDistance() {
        return this.c;
    }

    public String getType() {
        return this.d;
    }

    public RailwayStationItem getDeparturestop() {
        return this.e;
    }

    public RailwayStationItem getArrivalstop() {
        return this.f;
    }

    public List<RailwayStationItem> getViastops() {
        return this.g;
    }

    public List<Railway> getAlters() {
        return this.h;
    }

    public List<RailwaySpace> getSpaces() {
        return this.i;
    }

    public void setTime(String str) {
        this.a = str;
    }

    public void setTrip(String str) {
        this.b = str;
    }

    public void setDistance(float f2) {
        this.c = f2;
    }

    public void setType(String str) {
        this.d = str;
    }

    public void setDeparturestop(RailwayStationItem railwayStationItem) {
        this.e = railwayStationItem;
    }

    public void setArrivalstop(RailwayStationItem railwayStationItem) {
        this.f = railwayStationItem;
    }

    public void setViastops(List<RailwayStationItem> list) {
        this.g = list;
    }

    public void setAlters(List<Railway> list) {
        this.h = list;
    }

    public void setSpaces(List<RailwaySpace> list) {
        this.i = list;
    }

    protected RouteRailwayItem(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readFloat();
        this.d = parcel.readString();
        this.e = (RailwayStationItem) parcel.readParcelable(RailwayStationItem.class.getClassLoader());
        this.f = (RailwayStationItem) parcel.readParcelable(RailwayStationItem.class.getClassLoader());
        this.g = parcel.createTypedArrayList(RailwayStationItem.CREATOR);
        this.h = parcel.createTypedArrayList(Railway.CREATOR);
        this.i = parcel.createTypedArrayList(RailwaySpace.CREATOR);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeFloat(this.c);
        parcel.writeString(this.d);
        parcel.writeParcelable(this.e, i2);
        parcel.writeParcelable(this.f, i2);
        parcel.writeTypedList(this.g);
        parcel.writeTypedList(this.h);
        parcel.writeTypedList(this.i);
    }

    public int describeContents() {
        return 0;
    }
}
