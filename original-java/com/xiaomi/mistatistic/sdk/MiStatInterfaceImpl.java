package com.xiaomi.mistatistic.sdk;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class MiStatInterfaceImpl extends MiStatInterface {
    private static MiStatInterfaceImpl mInstance = null;

    public static synchronized MiStatInterfaceImpl getInstance() {
        MiStatInterfaceImpl miStatInterfaceImpl;
        synchronized (MiStatInterfaceImpl.class) {
            if (mInstance == null) {
                mInstance = new MiStatInterfaceImpl();
            }
            miStatInterfaceImpl = mInstance;
        }
        return miStatInterfaceImpl;
    }

    public void addJavascriptInterface(WebView webView, String str) {
        webView.addJavascriptInterface(this, str);
    }

    @JavascriptInterface
    public void trackCountEvent(String str, String str2) {
        recordCountEvent(str, str2, null);
    }

    @JavascriptInterface
    public void trackCountEvent(String str, String str2, String str3) {
        Map map = null;
        if (!TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                HashMap hashMap = new HashMap();
                try {
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str4 = (String) keys.next();
                        hashMap.put(str4, jSONObject.optString(str4));
                    }
                    map = hashMap;
                } catch (JSONException e) {
                    JSONException jSONException = e;
                    map = hashMap;
                    e = jSONException;
                    ThrowableExtension.printStackTrace(e);
                    recordCountEvent(str, str2, map);
                }
            } catch (JSONException e2) {
                e = e2;
                ThrowableExtension.printStackTrace(e);
                recordCountEvent(str, str2, map);
            }
        }
        recordCountEvent(str, str2, map);
    }

    @JavascriptInterface
    public void trackCalculateEvent(String str, String str2, long j) {
        recordCalculateEvent(str, str2, j, null);
    }

    @JavascriptInterface
    public void trackNumericPropertyEvent(String str, String str2, long j) {
        recordNumericPropertyEvent(str, str2, j);
    }

    @JavascriptInterface
    public void trackStringPropertyEvent(String str, String str2, String str3) {
        recordStringPropertyEvent(str, str2, str3);
    }
}
