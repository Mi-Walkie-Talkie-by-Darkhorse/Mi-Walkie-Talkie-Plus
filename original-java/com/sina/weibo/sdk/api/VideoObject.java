package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.sina.weibo.sdk.utils.c;
import org.json.JSONException;
import org.json.JSONObject;

public class VideoObject extends BaseMediaObject {
    public static final Creator<VideoObject> CREATOR = new Creator<VideoObject>() {
        /* renamed from: a */
        public VideoObject createFromParcel(Parcel parcel) {
            return new VideoObject(parcel);
        }

        /* renamed from: a */
        public VideoObject[] newArray(int i) {
            return new VideoObject[i];
        }
    };
    public String g;
    public String h;
    public String i;
    public String j;
    public int k;

    public VideoObject() {
    }

    public VideoObject(Parcel parcel) {
        super(parcel);
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k);
    }

    public boolean a() {
        if (!super.a()) {
            return false;
        }
        if (this.i != null && this.i.length() > 512) {
            c.c("Weibo.VideoObject", "checkArgs fail, dataUrl is invalid");
            return false;
        } else if (this.j != null && this.j.length() > 512) {
            c.c("Weibo.VideoObject", "checkArgs fail, dataHdUrl is invalid");
            return false;
        } else if (this.k > 0) {
            return true;
        } else {
            c.c("Weibo.VideoObject", "checkArgs fail, duration is invalid");
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public BaseMediaObject a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                this.g = new JSONObject(str).optString("extra_key_defaulttext");
            } catch (JSONException e) {
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.g)) {
                jSONObject.put("extra_key_defaulttext", this.g);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }
}
