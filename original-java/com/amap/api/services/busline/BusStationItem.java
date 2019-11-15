package com.amap.api.services.busline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.List;

public class BusStationItem implements Parcelable {
    public static final Creator<BusStationItem> CREATOR = new Creator<BusStationItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new BusStationItem(parcel, 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;
    private LatLonPoint c;
    private String d;
    private String e;
    private List<BusLineItem> f;

    /* synthetic */ BusStationItem(Parcel parcel, byte b2) {
        this(parcel);
    }

    public BusStationItem() {
        this.f = new ArrayList();
    }

    public String getBusStationId() {
        return this.a;
    }

    public void setBusStationId(String str) {
        this.a = str;
    }

    public String getBusStationName() {
        return this.b;
    }

    public void setBusStationName(String str) {
        this.b = str;
    }

    public LatLonPoint getLatLonPoint() {
        return this.c;
    }

    public void setLatLonPoint(LatLonPoint latLonPoint) {
        this.c = latLonPoint;
    }

    public String getCityCode() {
        return this.d;
    }

    public void setCityCode(String str) {
        this.d = str;
    }

    public String getAdCode() {
        return this.e;
    }

    public void setAdCode(String str) {
        this.e = str;
    }

    public List<BusLineItem> getBusLineItems() {
        return this.f;
    }

    public void setBusLineItems(List<BusLineItem> list) {
        this.f = list;
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
        BusStationItem busStationItem = (BusStationItem) obj;
        if (this.a == null) {
            if (busStationItem.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(busStationItem.a)) {
            return false;
        } else {
            return true;
        }
    }

    public int hashCode() {
        int hashCode;
        if (this.a == null) {
            hashCode = 0;
        } else {
            hashCode = this.a.hashCode();
        }
        return hashCode + 31;
    }

    public String toString() {
        return "BusStationName: " + this.b + " LatLonPoint: " + this.c.toString() + " BusLines: " + a(this.f) + " CityCode: " + this.d + " AdCode: " + this.e;
    }

    private static String a(List<BusLineItem> list) {
        StringBuffer stringBuffer = new StringBuffer();
        if (list != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                stringBuffer.append(((BusLineItem) list.get(i2)).getBusLineName());
                if (i2 < list.size() - 1) {
                    stringBuffer.append("|");
                }
                i = i2 + 1;
            }
        }
        return stringBuffer.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.a);
        parcel.writeValue(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeList(this.f);
    }

    private BusStationItem(Parcel parcel) {
        this.f = new ArrayList();
        this.b = parcel.readString();
        this.a = parcel.readString();
        this.c = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readArrayList(BusLineItem.class.getClassLoader());
    }
}
