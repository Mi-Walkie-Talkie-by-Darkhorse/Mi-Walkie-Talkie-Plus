package com.xiaomi.mistatistic.sdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.mipush.sdk.Constants;

public class StatEventPojo implements Parcelable {
    public static final Creator<StatEventPojo> CREATOR = new Creator<StatEventPojo>() {
        /* renamed from: a */
        public StatEventPojo createFromParcel(Parcel parcel) {
            StatEventPojo statEventPojo = new StatEventPojo();
            statEventPojo.category = parcel.readString();
            statEventPojo.timeStamp = parcel.readLong();
            statEventPojo.key = parcel.readString();
            statEventPojo.type = parcel.readString();
            statEventPojo.value = parcel.readString();
            statEventPojo.extra = parcel.readString();
            return statEventPojo;
        }

        /* renamed from: a */
        public StatEventPojo[] newArray(int i) {
            return new StatEventPojo[i];
        }
    };
    public String category;
    public String extra;
    public String key;
    public long timeStamp;
    public String type;
    public String value;

    public String toString() {
        return "Event [" + "category=" + this.category + Constants.ACCEPT_TIME_SEPARATOR_SP + "key=" + this.key + Constants.ACCEPT_TIME_SEPARATOR_SP + "value=" + this.value + ",params=" + this.extra + "]";
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.category);
        parcel.writeLong(this.timeStamp);
        parcel.writeString(this.key);
        parcel.writeString(this.type);
        parcel.writeString(this.value);
        parcel.writeString(this.extra);
    }
}
