package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.sina.weibo.sdk.utils.c;

public class TextObject extends BaseMediaObject {
    public static final Creator<TextObject> CREATOR = new Creator<TextObject>() {
        /* renamed from: a */
        public TextObject createFromParcel(Parcel parcel) {
            return new TextObject(parcel);
        }

        /* renamed from: a */
        public TextObject[] newArray(int i) {
            return new TextObject[i];
        }
    };
    public String g;

    public TextObject() {
    }

    public TextObject(Parcel parcel) {
        this.g = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.g);
    }

    public boolean a() {
        if (this.g != null && this.g.length() != 0 && this.g.length() <= 1024) {
            return true;
        }
        c.c("Weibo.TextObject", "checkArgs fail, text is invalid");
        return false;
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
