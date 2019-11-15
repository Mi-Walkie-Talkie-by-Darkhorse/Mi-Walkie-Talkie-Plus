package com.amap.api.services.traffic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.List;

public class TrafficStatusInfo implements Parcelable {
    public static final Creator<TrafficStatusInfo> CREATOR = new Creator<TrafficStatusInfo>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new TrafficStatusInfo(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TrafficStatusInfo[i];
        }
    };
    private String a;
    private String b;
    private String c;
    private int d;
    private float e;
    private String f;
    private List<LatLonPoint> g;

    public TrafficStatusInfo() {
    }

    protected TrafficStatusInfo(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readInt();
        this.e = parcel.readFloat();
        this.f = parcel.readString();
        this.g = parcel.readArrayList(TrafficStatusInfo.class.getClassLoader());
    }

    public String getName() {
        return this.a;
    }

    public void setName(String str) {
        this.a = str;
    }

    public String getStatus() {
        return this.b;
    }

    public void setStatus(String str) {
        this.b = str;
    }

    public String getDirection() {
        return this.c;
    }

    public void setDirection(String str) {
        this.c = str;
    }

    public int getAngle() {
        return this.d;
    }

    public void setAngle(int i) {
        this.d = i;
    }

    public float getSpeed() {
        return this.e;
    }

    public void setSpeed(float f2) {
        this.e = f2;
    }

    public String getLcodes() {
        return this.f;
    }

    public void setLcodes(String str) {
        this.f = str;
    }

    public List<LatLonPoint> getCoordinates() {
        return this.g;
    }

    public void setCoordinates(List<LatLonPoint> list) {
        this.g = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeFloat(this.e);
        parcel.writeString(this.f);
        parcel.writeTypedList(this.g);
    }
}
