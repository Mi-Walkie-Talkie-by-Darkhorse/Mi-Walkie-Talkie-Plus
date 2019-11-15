package com.sina.weibo.sdk.b;

import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.c;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CmdInfo */
class f {
    private static final String a = e.class.getName();
    private List<a> b;
    private List<c> c;
    private int d;

    public f(String str) throws WeiboException {
        a(str);
    }

    private void a(String str) throws WeiboException {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2) || jSONObject.has("error_code")) {
                    c.d(a, "load cmd api has error !!!");
                    throw new WeiboException("load cmd api has error !!!");
                }
                JSONObject optJSONObject = jSONObject.optJSONObject(Key.CMD);
                if (optJSONObject != null) {
                    this.d = optJSONObject.optInt("frequency");
                    JSONArray optJSONArray = optJSONObject.optJSONArray("app_install");
                    if (optJSONArray != null) {
                        this.b = new ArrayList();
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            this.b.add(new a(optJSONArray.getJSONObject(i)));
                        }
                    }
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("app_invoke");
                    if (optJSONArray2 != null) {
                        this.c = new ArrayList();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            this.c.add(new c(optJSONArray2.getJSONObject(i2)));
                        }
                    }
                }
            } catch (JSONException e) {
                c.a(a, "parse NotificationInfo error: " + e.getMessage());
            }
        }
    }

    public List<a> a() {
        return this.b;
    }

    public List<c> b() {
        return this.c;
    }

    public int c() {
        return this.d;
    }
}
