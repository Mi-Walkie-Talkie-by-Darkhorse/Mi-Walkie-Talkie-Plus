package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class DistrictItem implements Parcelable {
    public static final Creator<DistrictItem> CREATOR = new Creator<DistrictItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DistrictItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DistrictItem[i];
        }
    };
    private String a;
    private String b;
    private String c;
    private LatLonPoint d;
    private String e;
    private List<DistrictItem> f = new ArrayList();
    private String[] g = new String[0];

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeParcelable(this.d, i);
        parcel.writeString(this.e);
        parcel.writeTypedList(this.f);
        parcel.writeInt(this.g.length);
        parcel.writeStringArray(this.g);
    }

    public final void setDistrictBoundary(String[] strArr) {
        this.g = strArr;
    }

    public final String[] districtBoundary() {
        return this.g;
    }

    public DistrictItem() {
    }

    public DistrictItem(String str, String str2, String str3, LatLonPoint latLonPoint, String str4) {
        this.c = str;
        this.a = str2;
        this.b = str3;
        this.d = latLonPoint;
        this.e = str4;
    }

    public final String getCitycode() {
        return this.a;
    }

    public final void setCitycode(String str) {
        this.a = str;
    }

    public final String getAdcode() {
        return this.b;
    }

    public final void setAdcode(String str) {
        this.b = str;
    }

    public final String getName() {
        return this.c;
    }

    public final void setName(String str) {
        this.c = str;
    }

    public final LatLonPoint getCenter() {
        return this.d;
    }

    public final void setCenter(LatLonPoint latLonPoint) {
        this.d = latLonPoint;
    }

    public final String getLevel() {
        return this.e;
    }

    public final void setLevel(String str) {
        this.e = str;
    }

    public final List<DistrictItem> getSubDistrict() {
        return this.f;
    }

    public final void setSubDistrict(ArrayList<DistrictItem> arrayList) {
        this.f = arrayList;
    }

    public final int describeContents() {
        return 0;
    }

    public DistrictItem(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.e = parcel.readString();
        this.f = parcel.createTypedArrayList(CREATOR);
        this.g = new String[parcel.readInt()];
        parcel.readStringArray(this.g);
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        int hashCode3 = ((this.d == null ? 0 : this.d.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + 31) * 31)) * 31;
        if (this.a == null) {
            hashCode = 0;
        } else {
            hashCode = this.a.hashCode();
        }
        int hashCode4 = (((hashCode + hashCode3) * 31) + Arrays.hashCode(this.g)) * 31;
        if (this.f == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = this.f.hashCode();
        }
        int hashCode5 = ((this.e == null ? 0 : this.e.hashCode()) + ((hashCode2 + hashCode4) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode5 + i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        DistrictItem districtItem = (DistrictItem) obj;
        if (this.b == null) {
            if (districtItem.b != null) {
                return false;
            }
        } else if (!this.b.equals(districtItem.b)) {
            return false;
        }
        if (this.d == null) {
            if (districtItem.d != null) {
                return false;
            }
        } else if (!this.d.equals(districtItem.d)) {
            return false;
        }
        if (this.a == null) {
            if (districtItem.a != null) {
                return false;
            }
        } else if (!this.a.equals(districtItem.a)) {
            return false;
        }
        if (!Arrays.equals(this.g, districtItem.g)) {
            return false;
        }
        if (this.f == null) {
            if (districtItem.f != null) {
                return false;
            }
        } else if (!this.f.equals(districtItem.f)) {
            return false;
        }
        if (this.e == null) {
            if (districtItem.e != null) {
                return false;
            }
        } else if (!this.e.equals(districtItem.e)) {
            return false;
        }
        if (this.c == null) {
            if (districtItem.c != null) {
                return false;
            }
            return true;
        } else if (!this.c.equals(districtItem.c)) {
            return false;
        } else {
            return true;
        }
    }

    public final String toString() {
        return "DistrictItem [mCitycode=" + this.a + ", mAdcode=" + this.b + ", mName=" + this.c + ", mCenter=" + this.d + ", mLevel=" + this.e + ", mDistricts=" + this.f + "]";
    }
}
