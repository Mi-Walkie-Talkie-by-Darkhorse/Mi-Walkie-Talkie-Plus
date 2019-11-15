package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class WebpageObject extends BaseMediaObject {
    public static final Creator<WebpageObject> CREATOR = new Creator<WebpageObject>() {
        /* renamed from: a */
        public WebpageObject createFromParcel(Parcel parcel) {
            return new WebpageObject(parcel);
        }

        /* renamed from: a */
        public WebpageObject[] newArray(int i) {
            return new WebpageObject[i];
        }
    };
    public String g;

    public WebpageObject() {
    }

    public WebpageObject(Parcel parcel) {
        super(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    public boolean a() {
        if (!super.a()) {
            return false;
        }
        return true;
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
