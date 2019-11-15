package com.amap.api.services.busline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.LatLonPoint;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BusLineItem implements Parcelable {
    public static final Creator<BusLineItem> CREATOR = new Creator<BusLineItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new BusLineItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private float a;
    private String b;
    private String c;
    private String d;
    private List<LatLonPoint> e = new ArrayList();
    private List<LatLonPoint> f = new ArrayList();
    private String g;
    private String h;
    private String i;
    private Date j;
    private Date k;
    private String l;
    private float m;
    private float n;
    private List<BusStationItem> o = new ArrayList();

    public BusLineItem() {
    }

    public float getDistance() {
        return this.a;
    }

    public void setDistance(float f2) {
        this.a = f2;
    }

    public String getBusLineName() {
        return this.b;
    }

    public void setBusLineName(String str) {
        this.b = str;
    }

    public String getBusLineType() {
        return this.c;
    }

    public void setBusLineType(String str) {
        this.c = str;
    }

    public String getCityCode() {
        return this.d;
    }

    public void setCityCode(String str) {
        this.d = str;
    }

    public List<LatLonPoint> getDirectionsCoordinates() {
        return this.e;
    }

    public void setDirectionsCoordinates(List<LatLonPoint> list) {
        this.e = list;
    }

    public List<LatLonPoint> getBounds() {
        return this.f;
    }

    public void setBounds(List<LatLonPoint> list) {
        this.f = list;
    }

    public String getBusLineId() {
        return this.g;
    }

    public void setBusLineId(String str) {
        this.g = str;
    }

    public String getOriginatingStation() {
        return this.h;
    }

    public void setOriginatingStation(String str) {
        this.h = str;
    }

    public String getTerminalStation() {
        return this.i;
    }

    public void setTerminalStation(String str) {
        this.i = str;
    }

    public Date getFirstBusTime() {
        if (this.j == null) {
            return null;
        }
        return (Date) this.j.clone();
    }

    public void setFirstBusTime(Date date) {
        if (date == null) {
            this.j = null;
        } else {
            this.j = (Date) date.clone();
        }
    }

    public Date getLastBusTime() {
        if (this.k == null) {
            return null;
        }
        return (Date) this.k.clone();
    }

    public void setLastBusTime(Date date) {
        if (date == null) {
            this.k = null;
        } else {
            this.k = (Date) date.clone();
        }
    }

    public String getBusCompany() {
        return this.l;
    }

    public void setBusCompany(String str) {
        this.l = str;
    }

    public float getBasicPrice() {
        return this.m;
    }

    public void setBasicPrice(float f2) {
        this.m = f2;
    }

    public float getTotalPrice() {
        return this.n;
    }

    public void setTotalPrice(float f2) {
        this.n = f2;
    }

    public List<BusStationItem> getBusStations() {
        return this.o;
    }

    public void setBusStations(List<BusStationItem> list) {
        this.o = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        BusLineItem busLineItem = (BusLineItem) obj;
        if (this.g == null) {
            if (busLineItem.g != null) {
                return false;
            }
            return true;
        } else if (!this.g.equals(busLineItem.g)) {
            return false;
        } else {
            return true;
        }
    }

    public int hashCode() {
        int hashCode;
        if (this.g == null) {
            hashCode = 0;
        } else {
            hashCode = this.g.hashCode();
        }
        return hashCode + 31;
    }

    public String toString() {
        return this.b + Token.SEPARATOR + t.a(this.j) + "-" + t.a(this.k);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeList(this.e);
        parcel.writeList(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(t.a(this.j));
        parcel.writeString(t.a(this.k));
        parcel.writeString(this.l);
        parcel.writeFloat(this.m);
        parcel.writeFloat(this.n);
        parcel.writeList(this.o);
    }

    public BusLineItem(Parcel parcel) {
        this.a = parcel.readFloat();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readArrayList(LatLonPoint.class.getClassLoader());
        this.f = parcel.readArrayList(LatLonPoint.class.getClassLoader());
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = t.d(parcel.readString());
        this.k = t.d(parcel.readString());
        this.l = parcel.readString();
        this.m = parcel.readFloat();
        this.n = parcel.readFloat();
        this.o = parcel.readArrayList(BusStationItem.class.getClassLoader());
    }
}
