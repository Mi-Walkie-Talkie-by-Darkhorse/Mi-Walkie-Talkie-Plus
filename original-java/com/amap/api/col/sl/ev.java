package com.amap.api.col.sl;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.tencent.open.SocialConstants;
import com.xiaomi.mipush.sdk.Constants;
import org.json.JSONObject;

/* compiled from: AMapLocationServer */
public final class ev extends AMapLocation {
    protected String d = "";
    boolean e = true;
    String f = String.valueOf(GeoLanguage.DEFAULT);
    private String g = null;
    private String h = "";
    private int i;
    private String j = "";
    private String k = "new";
    private JSONObject l = null;
    private String m = "";
    private String n = "";
    private long o = 0;
    private String p = null;

    public ev(String str) {
        super(str);
    }

    public final String a() {
        return this.g;
    }

    public final void a(String str) {
        this.g = str;
    }

    public final String b() {
        return this.h;
    }

    public final void b(String str) {
        this.h = str;
    }

    public final int c() {
        return this.i;
    }

    public final void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (getProvider().equals(GeocodeSearch.GPS)) {
                this.i = 0;
                return;
            } else if (str.equals("0")) {
                this.i = 0;
                return;
            } else if (str.equals("1")) {
                this.i = 1;
                return;
            }
        }
        this.i = -1;
    }

    public final String d() {
        return this.j;
    }

    public final void d(String str) {
        this.j = str;
    }

    public final String e() {
        return this.k;
    }

    public final void e(String str) {
        this.k = str;
    }

    public final JSONObject f() {
        return this.l;
    }

    public final void a(JSONObject jSONObject) {
        this.l = jSONObject;
    }

    public final String g() {
        return this.m;
    }

    public final ev h() {
        String str = this.m;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        if (split.length != 3) {
            return null;
        }
        ev evVar = new ev("");
        evVar.setProvider(getProvider());
        evVar.setLongitude(Double.parseDouble(split[0]));
        evVar.setLatitude(Double.parseDouble(split[1]));
        evVar.setAccuracy(Float.parseFloat(split[2]));
        evVar.setCityCode(getCityCode());
        evVar.setAdCode(getAdCode());
        evVar.setCountry(getCountry());
        evVar.setProvince(getProvince());
        evVar.setCity(getCity());
        evVar.setTime(getTime());
        evVar.k = this.k;
        evVar.c(String.valueOf(this.i));
        if (fy.a(evVar)) {
            return evVar;
        }
        return null;
    }

    public final boolean i() {
        return this.e;
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final String j() {
        return this.f;
    }

    public final void f(String str) {
        this.f = str;
    }

    public final long k() {
        return this.o;
    }

    public final void a(long j2) {
        this.o = j2;
    }

    public final JSONObject toJson(int i2) {
        try {
            JSONObject json = super.toJson(i2);
            switch (i2) {
                case 1:
                    json.put("retype", this.j);
                    json.put("cens", this.n);
                    json.put("coord", this.i);
                    json.put("mcell", this.m);
                    json.put(SocialConstants.PARAM_APP_DESC, this.d);
                    json.put("address", getAddress());
                    if (this.l != null && fy.a(json, "offpct")) {
                        json.put("offpct", this.l.getString("offpct"));
                        break;
                    }
                case 2:
                case 3:
                    break;
                default:
                    return json;
            }
            json.put("type", this.k);
            json.put("isReversegeo", this.e);
            json.put("geoLanguage", this.f);
            return json;
        } catch (Throwable th) {
            fq.a(th, "AmapLoc", "toStr");
            return null;
        }
    }

    public final void b(JSONObject jSONObject) {
        int i2 = 0;
        if (jSONObject != null) {
            try {
                fq.a((AMapLocation) this, jSONObject);
                this.k = jSONObject.optString("type", this.k);
                this.j = jSONObject.optString("retype", this.j);
                String optString = jSONObject.optString("cens", this.n);
                if (!TextUtils.isEmpty(optString)) {
                    String[] split = optString.split("\\*");
                    int length = split.length;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        String str = split[i2];
                        if (!TextUtils.isEmpty(str)) {
                            String[] split2 = str.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            setLongitude(Double.parseDouble(split2[0]));
                            setLatitude(Double.parseDouble(split2[1]));
                            setAccuracy((float) Integer.parseInt(split2[2]));
                            break;
                        }
                        i2++;
                    }
                    this.n = optString;
                }
                this.d = jSONObject.optString(SocialConstants.PARAM_APP_DESC, this.d);
                c(jSONObject.optString("coord", String.valueOf(this.i)));
                this.m = jSONObject.optString("mcell", this.m);
                this.e = jSONObject.optBoolean("isReversegeo", this.e);
                this.f = jSONObject.optString("geoLanguage", this.f);
                if (fy.a(jSONObject, "poiid")) {
                    setBuildingId(jSONObject.optString("poiid"));
                }
                if (fy.a(jSONObject, "pid")) {
                    setBuildingId(jSONObject.optString("pid"));
                }
                if (fy.a(jSONObject, "floor")) {
                    setFloor(jSONObject.optString("floor"));
                }
                if (fy.a(jSONObject, "flr")) {
                    setFloor(jSONObject.optString("flr"));
                }
            } catch (Throwable th) {
                fq.a(th, "AmapLoc", "AmapLoc");
            }
        }
    }

    public final void g(String str) {
        this.d = str;
    }

    public final String l() {
        return this.p;
    }

    public final void h(String str) {
        this.p = str;
    }

    public final String toStr() {
        return toStr(1);
    }

    public final String toStr(int i2) {
        JSONObject jSONObject;
        try {
            jSONObject = toJson(i2);
            jSONObject.put("nb", this.p);
        } catch (Throwable th) {
            fq.a(th, "AMapLocation", "toStr part2");
            jSONObject = null;
        }
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.toString();
    }
}
