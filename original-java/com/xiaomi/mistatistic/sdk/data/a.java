package com.xiaomi.mistatistic.sdk.data;

import android.annotation.SuppressLint;
import android.view.View;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
/* compiled from: ClickableView */
public class a {
    private int a;
    private int b;
    private int c;
    private int d;

    public a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.a = iArr[0];
        this.b = iArr[1];
        this.c = view.getWidth();
        this.d = view.getHeight();
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("left", this.a);
        jSONObject.put("top", this.b);
        jSONObject.put("width", this.c);
        jSONObject.put("height", this.d);
        return jSONObject;
    }

    public String toString() {
        try {
            return a().toString();
        } catch (JSONException e) {
            return "";
        }
    }
}
