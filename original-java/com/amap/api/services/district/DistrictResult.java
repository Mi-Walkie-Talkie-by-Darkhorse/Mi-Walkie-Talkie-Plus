package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.AMapException;
import java.util.ArrayList;

public final class DistrictResult implements Parcelable {
    public Creator<DistrictResult> CREATOR = new Creator<DistrictResult>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DistrictResult(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DistrictResult[i];
        }
    };
    private DistrictSearchQuery a;
    private ArrayList<DistrictItem> b = new ArrayList<>();
    private int c;
    private AMapException d;

    public DistrictResult(DistrictSearchQuery districtSearchQuery, ArrayList<DistrictItem> arrayList) {
        this.a = districtSearchQuery;
        this.b = arrayList;
    }

    public DistrictResult() {
    }

    public final ArrayList<DistrictItem> getDistrict() {
        return this.b;
    }

    public final void setDistrict(ArrayList<DistrictItem> arrayList) {
        this.b = arrayList;
    }

    public final DistrictSearchQuery getQuery() {
        return this.a;
    }

    public final void setQuery(DistrictSearchQuery districtSearchQuery) {
        this.a = districtSearchQuery;
    }

    public final int getPageCount() {
        return this.c;
    }

    public final void setPageCount(int i) {
        this.c = i;
    }

    public final AMapException getAMapException() {
        return this.d;
    }

    public final void setAMapException(AMapException aMapException) {
        this.d = aMapException;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeTypedList(this.b);
    }

    protected DistrictResult(Parcel parcel) {
        this.a = (DistrictSearchQuery) parcel.readParcelable(DistrictSearchQuery.class.getClassLoader());
        this.b = parcel.createTypedArrayList(DistrictItem.CREATOR);
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        if (this.a == null) {
            hashCode = 0;
        } else {
            hashCode = this.a.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return i2 + i;
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
        DistrictResult districtResult = (DistrictResult) obj;
        if (this.a == null) {
            if (districtResult.a != null) {
                return false;
            }
        } else if (!this.a.equals(districtResult.a)) {
            return false;
        }
        if (this.b == null) {
            if (districtResult.b != null) {
                return false;
            }
            return true;
        } else if (!this.b.equals(districtResult.b)) {
            return false;
        } else {
            return true;
        }
    }

    public final String toString() {
        return "DistrictResult [mDisQuery=" + this.a + ", mDistricts=" + this.b + "]";
    }
}
