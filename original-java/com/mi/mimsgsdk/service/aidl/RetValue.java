package com.mi.mimsgsdk.service.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RetValue implements Parcelable {
    public static final Creator<RetValue> CREATOR = new Creator() {
        public RetValue createFromParcel(Parcel parcel) {
            return new RetValue(parcel);
        }

        public RetValue[] newArray(int i) {
            return new RetValue[i];
        }
    };
    public int retCode;
    public String retMsg;

    public RetValue(Parcel parcel) {
        this.retCode = parcel.readInt();
        this.retMsg = parcel.readString();
    }

    public RetValue() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.retCode);
        parcel.writeString(this.retMsg);
    }

    public String toString() {
        return String.format("retCode: %d, retMsg: %s", new Object[]{Integer.valueOf(this.retCode), this.retMsg});
    }
}
