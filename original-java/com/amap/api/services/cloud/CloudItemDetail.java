package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class CloudItemDetail extends CloudItem implements Parcelable {
    public static final Creator<CloudItemDetail> CREATOR = new Creator<CloudItemDetail>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CloudItemDetail(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CloudItemDetail[i];
        }
    };

    public CloudItemDetail(String str, LatLonPoint latLonPoint, String str2, String str3) {
        super(str, latLonPoint, str2, str3);
    }

    protected CloudItemDetail(Parcel parcel) {
        super(parcel);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
