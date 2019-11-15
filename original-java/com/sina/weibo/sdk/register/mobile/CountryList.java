package com.sina.weibo.sdk.register.mobile;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.exception.WeiboException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CountryList implements Serializable {
    private static final long serialVersionUID = 1;
    public List<Country> a;

    public CountryList(String str) {
        a(str);
    }

    private void a(String str) {
        try {
            a(new JSONObject(str));
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public void a(JSONObject jSONObject) throws WeiboException {
        try {
            this.a = new ArrayList();
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(str);
                String string = optJSONObject.getString("code");
                JSONArray optJSONArray = optJSONObject.optJSONObject("rule").optJSONArray("mcc");
                String[] strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.getString(i);
                }
                Country country = new Country(str, string);
                country.a(strArr);
                this.a.add(country);
            }
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
            throw new WeiboException((Throwable) e);
        }
    }
}
