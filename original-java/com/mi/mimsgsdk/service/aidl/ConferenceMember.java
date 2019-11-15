package com.mi.mimsgsdk.service.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ConferenceMember implements Parcelable {
    public static final Creator<ConferenceMember> CREATOR = new Creator() {
        public ConferenceMember createFromParcel(Parcel parcel) {
            return new ConferenceMember(parcel);
        }

        public ConferenceMember[] newArray(int i) {
            return new ConferenceMember[i];
        }
    };
    public String gUid;
    public long mUid;
    public int mediaMuid;

    public ConferenceMember(Parcel parcel) {
        this.gUid = parcel.readString();
        this.mUid = parcel.readLong();
        this.mediaMuid = parcel.readInt();
    }

    public ConferenceMember() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.gUid);
        parcel.writeLong(this.mUid);
        parcel.writeInt(this.mediaMuid);
    }
}
