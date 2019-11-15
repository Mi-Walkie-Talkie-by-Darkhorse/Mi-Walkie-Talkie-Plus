package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.t;

public class DistrictSearchQuery implements Parcelable, Cloneable {
    public static final Creator<DistrictSearchQuery> CREATOR = new Creator<DistrictSearchQuery>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            boolean z = true;
            DistrictSearchQuery districtSearchQuery = new DistrictSearchQuery();
            districtSearchQuery.setKeywords(parcel.readString());
            districtSearchQuery.setKeywordsLevel(parcel.readString());
            districtSearchQuery.setPageNum(parcel.readInt());
            districtSearchQuery.setPageSize(parcel.readInt());
            districtSearchQuery.setShowChild(parcel.readByte() == 1);
            districtSearchQuery.setShowBoundary(parcel.readByte() == 1);
            if (parcel.readByte() != 1) {
                z = false;
            }
            districtSearchQuery.setShowBusinessArea(z);
            return districtSearchQuery;
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DistrictSearchQuery[i];
        }
    };
    public static final String KEYWORDS_BUSINESS = "biz_area";
    public static final String KEYWORDS_CITY = "city";
    public static final String KEYWORDS_COUNTRY = "country";
    public static final String KEYWORDS_DISTRICT = "district";
    public static final String KEYWORDS_PROVINCE = "province";
    private int a;
    private int b;
    private String c;
    private String d;
    private boolean e;
    private boolean f;
    private boolean g;

    public void setShowBoundary(boolean z) {
        this.g = z;
    }

    public boolean isShowBoundary() {
        return this.g;
    }

    public DistrictSearchQuery() {
        this.a = 1;
        this.b = 20;
        this.e = true;
        this.f = false;
        this.g = false;
    }

    public DistrictSearchQuery(String str, String str2, int i) {
        this.a = 1;
        this.b = 20;
        this.e = true;
        this.f = false;
        this.g = false;
        this.c = str;
        this.d = str2;
        this.a = i;
    }

    public DistrictSearchQuery(String str, String str2, int i, boolean z, int i2) {
        this(str, str2, i);
        this.e = z;
        this.b = i2;
    }

    public int getPageNum() {
        if (this.a <= 0) {
            return 1;
        }
        return this.a;
    }

    public void setPageNum(int i) {
        this.a = i;
    }

    public int getPageSize() {
        return this.b;
    }

    public void setPageSize(int i) {
        this.b = i;
    }

    public String getKeywords() {
        return this.c;
    }

    public void setKeywords(String str) {
        this.c = str;
    }

    public String getKeywordsLevel() {
        return this.d;
    }

    public void setKeywordsLevel(String str) {
        this.d = str;
    }

    public boolean isShowChild() {
        return this.e;
    }

    public void setShowChild(boolean z) {
        this.e = z;
    }

    public boolean isShowBusinessArea() {
        return this.f;
    }

    public void setShowBusinessArea(boolean z) {
        this.f = z;
    }

    public boolean checkLevels() {
        if (this.d == null) {
            return false;
        }
        if (this.d.trim().equals(KEYWORDS_COUNTRY) || this.d.trim().equals(KEYWORDS_PROVINCE) || this.d.trim().equals(KEYWORDS_CITY) || this.d.trim().equals(KEYWORDS_DISTRICT) || this.d.trim().equals(KEYWORDS_BUSINESS)) {
            return true;
        }
        return false;
    }

    public boolean checkKeyWords() {
        if (this.c != null && !this.c.trim().equalsIgnoreCase("")) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 1231;
        int i2 = 0;
        int i3 = ((this.g ? 1231 : 1237) + 31) * 31;
        if (this.c == null) {
            hashCode = 0;
        } else {
            hashCode = this.c.hashCode();
        }
        int i4 = (hashCode + i3) * 31;
        if (this.d != null) {
            i2 = this.d.hashCode();
        }
        int i5 = (((((i4 + i2) * 31) + this.a) * 31) + this.b) * 31;
        if (!this.e) {
            i = 1237;
        }
        return i5 + i;
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
        DistrictSearchQuery districtSearchQuery = (DistrictSearchQuery) obj;
        if (this.g != districtSearchQuery.g) {
            return false;
        }
        if (this.c == null) {
            if (districtSearchQuery.c != null) {
                return false;
            }
        } else if (!this.c.equals(districtSearchQuery.c)) {
            return false;
        }
        if (this.a != districtSearchQuery.a) {
            return false;
        }
        if (this.b != districtSearchQuery.b) {
            return false;
        }
        if (this.e != districtSearchQuery.e) {
            return false;
        }
        return true;
    }

    public boolean weakEquals(DistrictSearchQuery districtSearchQuery) {
        if (this == districtSearchQuery) {
            return true;
        }
        if (districtSearchQuery == null) {
            return false;
        }
        if (this.c == null) {
            if (districtSearchQuery.c != null) {
                return false;
            }
        } else if (!this.c.equals(districtSearchQuery.c)) {
            return false;
        }
        if (this.b != districtSearchQuery.b) {
            return false;
        }
        if (this.e != districtSearchQuery.e) {
            return false;
        }
        if (this.g != districtSearchQuery.g) {
            return false;
        }
        return true;
    }

    public DistrictSearchQuery clone() {
        try {
            super.clone();
        } catch (CloneNotSupportedException e2) {
            t.a(e2, "DistrictSearchQuery", "clone");
        }
        DistrictSearchQuery districtSearchQuery = new DistrictSearchQuery();
        districtSearchQuery.setKeywords(this.c);
        districtSearchQuery.setKeywordsLevel(this.d);
        districtSearchQuery.setPageNum(this.a);
        districtSearchQuery.setPageSize(this.b);
        districtSearchQuery.setShowChild(this.e);
        districtSearchQuery.setShowBoundary(this.g);
        districtSearchQuery.setShowBusinessArea(this.f);
        return districtSearchQuery;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3;
        int i4 = 1;
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        if (this.e) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (this.g) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        if (!this.f) {
            i4 = 0;
        }
        parcel.writeByte((byte) i4);
    }
}
