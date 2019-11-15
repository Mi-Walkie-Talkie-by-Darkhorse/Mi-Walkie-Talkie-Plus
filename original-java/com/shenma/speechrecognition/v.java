package com.shenma.speechrecognition;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.connect.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

class v implements Parcelable {
    public static final Creator CREATOR = new ac();
    private String a = "1.1";
    /* access modifiers changed from: private */
    public String b;
    private String c = "1";
    private String d = "opus";
    private String e = "1";
    private String f = (c.b + "");
    private String g = "json";
    private String h = "1";
    private String i = "0";
    /* access modifiers changed from: private */
    public String j = "0";
    /* access modifiers changed from: private */
    public String k;
    /* access modifiers changed from: private */
    public String l;
    /* access modifiers changed from: private */
    public String m;

    v() {
    }

    /* access modifiers changed from: 0000 */
    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("proto", this.a);
            jSONObject.put(Constants.PARAM_PLATFORM, this.b);
            jSONObject.put("encoded", this.c);
            jSONObject.put("encoder", this.d);
            jSONObject.put("bandmode", this.e);
            jSONObject.put("quality", this.f);
            jSONObject.put("format", this.g);
            jSONObject.put("partial", this.h);
            jSONObject.put("confidence", this.i);
            jSONObject.put("network", this.k);
            jSONObject.put("deviceid", this.l);
            jSONObject.put("params", this.m);
            jSONObject.put("url", this.j);
        } catch (JSONException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        return jSONObject.toString();
    }

    /* access modifiers changed from: 0000 */
    public void a(String str) {
        this.k = str;
    }

    /* access modifiers changed from: 0000 */
    public void b(String str) {
        this.b = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.b);
        parcel.writeString(this.j);
    }
}
