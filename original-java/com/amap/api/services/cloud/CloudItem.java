package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CloudItem implements Parcelable {
    public static final Creator<CloudItem> CREATOR = new Creator<CloudItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CloudItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CloudItem[i];
        }
    };
    private String a;
    private int b = -1;
    private String c;
    private String d;
    private HashMap<String, String> e;
    private List<CloudImage> f;
    protected final LatLonPoint mPoint;
    protected final String mSnippet;
    protected final String mTitle;

    public CloudItem(String str, LatLonPoint latLonPoint, String str2, String str3) {
        this.a = str;
        this.mPoint = latLonPoint;
        this.mTitle = str2;
        this.mSnippet = str3;
    }

    public String getID() {
        return this.a;
    }

    public int getDistance() {
        return this.b;
    }

    public void setDistance(int i) {
        this.b = i;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getSnippet() {
        return this.mSnippet;
    }

    public LatLonPoint getLatLonPoint() {
        return this.mPoint;
    }

    public String getCreatetime() {
        return this.c;
    }

    public void setCreatetime(String str) {
        this.c = str;
    }

    public String getUpdatetime() {
        return this.d;
    }

    public void setUpdatetime(String str) {
        this.d = str;
    }

    public HashMap<String, String> getCustomfield() {
        return this.e;
    }

    public void setCustomfield(HashMap<String, String> hashMap) {
        this.e = hashMap;
    }

    public List<CloudImage> getCloudImage() {
        return this.f;
    }

    public void setmCloudImage(List<CloudImage> list) {
        this.f = list;
    }

    protected CloudItem(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.mPoint = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.mTitle = parcel.readString();
        this.mSnippet = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = new HashMap<>();
        parcel.readMap(this.e, HashMap.class.getClassLoader());
        this.f = new ArrayList();
        parcel.readList(this.f, getClass().getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeValue(this.mPoint);
        parcel.writeString(this.mTitle);
        parcel.writeString(this.mSnippet);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeMap(this.e);
        parcel.writeList(this.f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof CloudItem)) {
            return false;
        }
        CloudItem cloudItem = (CloudItem) obj;
        if (this.a == null) {
            if (cloudItem.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(cloudItem.a)) {
            return false;
        } else {
            return true;
        }
    }

    public int hashCode() {
        return (this.a == null ? 0 : this.a.hashCode()) + 31;
    }

    public String toString() {
        return this.mTitle;
    }
}
