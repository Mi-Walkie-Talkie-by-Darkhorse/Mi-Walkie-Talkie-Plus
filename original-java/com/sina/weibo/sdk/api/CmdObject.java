package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class CmdObject extends BaseMediaObject {
    public static final Creator<CmdObject> CREATOR = new Creator<CmdObject>() {
        /* renamed from: a */
        public CmdObject createFromParcel(Parcel parcel) {
            return new CmdObject(parcel);
        }

        /* renamed from: a */
        public CmdObject[] newArray(int i) {
            return new CmdObject[i];
        }
    };
    public String g;

    public CmdObject() {
    }

    public CmdObject(Parcel parcel) {
        this.g = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.g);
    }

    public boolean a() {
        if (this.g == null || this.g.length() == 0 || this.g.length() > 1024) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public BaseMediaObject a(String str) {
        return this;
    }

    /* access modifiers changed from: protected */
    public String b() {
        return "";
    }
}
