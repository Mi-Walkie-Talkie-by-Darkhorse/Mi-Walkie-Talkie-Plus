package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.poisearch.IndoorData;
import com.amap.api.services.poisearch.Photo;
import com.amap.api.services.poisearch.PoiItemExtension;
import com.amap.api.services.poisearch.SubPoiItem;
import java.util.ArrayList;
import java.util.List;

public class PoiItem implements Parcelable {
    public static final Creator<PoiItem> CREATOR = new Creator<PoiItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PoiItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PoiItem[i];
        }
    };
    private String A;
    private String B;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e = "";
    private int f = -1;
    private final LatLonPoint g;
    private final String h;
    private final String i;
    private LatLonPoint j;
    private LatLonPoint k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private boolean s;
    private IndoorData t;
    private String u;
    private String v;
    private String w;
    private List<SubPoiItem> x = new ArrayList();
    private List<Photo> y = new ArrayList();
    private PoiItemExtension z;

    public PoiItem(String str, LatLonPoint latLonPoint, String str2, String str3) {
        this.a = str;
        this.g = latLonPoint;
        this.h = str2;
        this.i = str3;
    }

    public String getBusinessArea() {
        return this.v;
    }

    public void setBusinessArea(String str) {
        this.v = str;
    }

    public String getAdName() {
        return this.r;
    }

    public void setAdName(String str) {
        this.r = str;
    }

    public String getCityName() {
        return this.q;
    }

    public void setCityName(String str) {
        this.q = str;
    }

    public String getProvinceName() {
        return this.p;
    }

    public void setProvinceName(String str) {
        this.p = str;
    }

    public String getTypeDes() {
        return this.e;
    }

    public void setTypeDes(String str) {
        this.e = str;
    }

    public String getTel() {
        return this.b;
    }

    public void setTel(String str) {
        this.b = str;
    }

    public String getAdCode() {
        return this.c;
    }

    public void setAdCode(String str) {
        this.c = str;
    }

    public String getPoiId() {
        return this.a;
    }

    public int getDistance() {
        return this.f;
    }

    public void setDistance(int i2) {
        this.f = i2;
    }

    public String getTitle() {
        return this.h;
    }

    public String getSnippet() {
        return this.i;
    }

    public LatLonPoint getLatLonPoint() {
        return this.g;
    }

    public String getCityCode() {
        return this.d;
    }

    public void setCityCode(String str) {
        this.d = str;
    }

    public LatLonPoint getEnter() {
        return this.j;
    }

    public void setEnter(LatLonPoint latLonPoint) {
        this.j = latLonPoint;
    }

    public LatLonPoint getExit() {
        return this.k;
    }

    public void setExit(LatLonPoint latLonPoint) {
        this.k = latLonPoint;
    }

    public String getWebsite() {
        return this.l;
    }

    public void setWebsite(String str) {
        this.l = str;
    }

    public String getPostcode() {
        return this.m;
    }

    public void setPostcode(String str) {
        this.m = str;
    }

    public String getEmail() {
        return this.n;
    }

    public void setEmail(String str) {
        this.n = str;
    }

    public String getDirection() {
        return this.o;
    }

    public void setDirection(String str) {
        this.o = str;
    }

    public void setIndoorMap(boolean z2) {
        this.s = z2;
    }

    public boolean isIndoorMap() {
        return this.s;
    }

    public void setProvinceCode(String str) {
        this.u = str;
    }

    public String getProvinceCode() {
        return this.u;
    }

    public void setParkingType(String str) {
        this.w = str;
    }

    public String getParkingType() {
        return this.w;
    }

    public void setSubPois(List<SubPoiItem> list) {
        this.x = list;
    }

    public List<SubPoiItem> getSubPois() {
        return this.x;
    }

    public IndoorData getIndoorData() {
        return this.t;
    }

    public void setIndoorDate(IndoorData indoorData) {
        this.t = indoorData;
    }

    public List<Photo> getPhotos() {
        return this.y;
    }

    public void setPhotos(List<Photo> list) {
        this.y = list;
    }

    public PoiItemExtension getPoiExtension() {
        return this.z;
    }

    public void setPoiExtension(PoiItemExtension poiItemExtension) {
        this.z = poiItemExtension;
    }

    public String getTypeCode() {
        return this.A;
    }

    public void setTypeCode(String str) {
        this.A = str;
    }

    public String getShopID() {
        return this.B;
    }

    public void setShopID(String str) {
        this.B = str;
    }

    protected PoiItem(Parcel parcel) {
        this.a = parcel.readString();
        this.c = parcel.readString();
        this.b = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readInt();
        this.g = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.d = parcel.readString();
        this.j = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.k = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.l = parcel.readString();
        this.m = parcel.readString();
        this.n = parcel.readString();
        boolean[] zArr = new boolean[1];
        parcel.readBooleanArray(zArr);
        this.s = zArr[0];
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readString();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.w = parcel.readString();
        this.x = parcel.readArrayList(SubPoiItem.class.getClassLoader());
        this.t = (IndoorData) parcel.readValue(IndoorData.class.getClassLoader());
        this.y = parcel.createTypedArrayList(Photo.CREATOR);
        this.z = (PoiItemExtension) parcel.readParcelable(PoiItemExtension.class.getClassLoader());
        this.A = parcel.readString();
        this.B = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.c);
        parcel.writeString(this.b);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
        parcel.writeValue(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.d);
        parcel.writeValue(this.j);
        parcel.writeValue(this.k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeBooleanArray(new boolean[]{this.s});
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeList(this.x);
        parcel.writeValue(this.t);
        parcel.writeTypedList(this.y);
        parcel.writeParcelable(this.z, i2);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
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
        PoiItem poiItem = (PoiItem) obj;
        if (this.a == null) {
            if (poiItem.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(poiItem.a)) {
            return false;
        } else {
            return true;
        }
    }

    public int hashCode() {
        return (this.a == null ? 0 : this.a.hashCode()) + 31;
    }

    public String toString() {
        return this.h;
    }
}
