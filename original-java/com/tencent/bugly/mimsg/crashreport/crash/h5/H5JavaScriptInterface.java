package com.tencent.bugly.mimsg.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.CrashReport.WebViewInterface;
import com.tencent.bugly.mimsg.crashreport.inner.InnerApi;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: BUGLY */
public class H5JavaScriptInterface {
    private static HashSet<Integer> a = new HashSet<>();
    private String b = null;
    private Thread c = null;
    private String d = null;
    private Map<String, String> e = null;

    private H5JavaScriptInterface() {
    }

    public static H5JavaScriptInterface getInstance(WebViewInterface webViewInterface) {
        String str = null;
        if (webViewInterface == null || a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        a.add(Integer.valueOf(webViewInterface.hashCode()));
        h5JavaScriptInterface.c = Thread.currentThread();
        Thread thread = h5JavaScriptInterface.c;
        if (thread != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            for (int i = 2; i < thread.getStackTrace().length; i++) {
                StackTraceElement stackTraceElement = thread.getStackTrace()[i];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString()).append("\n");
                }
            }
            str = sb.toString();
        }
        h5JavaScriptInterface.d = str;
        HashMap hashMap = new HashMap();
        hashMap.put("[WebView] ContentDescription", webViewInterface.getContentDescription());
        h5JavaScriptInterface.e = hashMap;
        return h5JavaScriptInterface;
    }

    private static a a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            a aVar = new a();
            aVar.a = jSONObject.getString("projectRoot");
            if (aVar.a == null) {
                return null;
            }
            aVar.b = jSONObject.getString("context");
            if (aVar.b == null) {
                return null;
            }
            aVar.c = jSONObject.getString("url");
            if (aVar.c == null) {
                return null;
            }
            aVar.d = jSONObject.getString("userAgent");
            if (aVar.d == null) {
                return null;
            }
            aVar.e = jSONObject.getString("language");
            if (aVar.e == null) {
                return null;
            }
            aVar.f = jSONObject.getString(HttpPostBodyUtil.NAME);
            if (aVar.f == null || aVar.f.equals("null")) {
                return null;
            }
            String string = jSONObject.getString("stacktrace");
            if (string == null) {
                return null;
            }
            int indexOf = string.indexOf("\n");
            if (indexOf < 0) {
                x.d("H5 crash stack's format is wrong!", new Object[0]);
                return null;
            }
            aVar.h = string.substring(indexOf + 1);
            aVar.g = string.substring(0, indexOf);
            int indexOf2 = aVar.g.indexOf(":");
            if (indexOf2 > 0) {
                aVar.g = aVar.g.substring(indexOf2 + 1);
            }
            aVar.i = jSONObject.getString(HttpPostBodyUtil.FILE);
            if (aVar.f == null) {
                return null;
            }
            aVar.j = jSONObject.getLong("lineNumber");
            if (aVar.j < 0) {
                return null;
            }
            aVar.k = jSONObject.getLong("columnNumber");
            if (aVar.k < 0) {
                return null;
            }
            x.a("H5 crash information is following: ", new Object[0]);
            x.a("[projectRoot]: " + aVar.a, new Object[0]);
            x.a("[context]: " + aVar.b, new Object[0]);
            x.a("[url]: " + aVar.c, new Object[0]);
            x.a("[userAgent]: " + aVar.d, new Object[0]);
            x.a("[language]: " + aVar.e, new Object[0]);
            x.a("[name]: " + aVar.f, new Object[0]);
            x.a("[message]: " + aVar.g, new Object[0]);
            x.a("[stacktrace]: \n" + aVar.h, new Object[0]);
            x.a("[file]: " + aVar.i, new Object[0]);
            x.a("[lineNumber]: " + aVar.j, new Object[0]);
            x.a("[columnNumber]: " + aVar.k, new Object[0]);
            return aVar;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    @JavascriptInterface
    public void printLog(String str) {
        x.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            x.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String b2 = z.b(str.getBytes());
        if (this.b == null || !this.b.equals(b2)) {
            this.b = b2;
            x.d("Handling JS exception ...", new Object[0]);
            a a2 = a(str);
            if (a2 == null) {
                x.d("Failed to parse payload.", new Object[0]);
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (a2.a != null) {
                linkedHashMap2.put("[JS] projectRoot", a2.a);
            }
            if (a2.b != null) {
                linkedHashMap2.put("[JS] context", a2.b);
            }
            if (a2.c != null) {
                linkedHashMap2.put("[JS] url", a2.c);
            }
            if (a2.d != null) {
                linkedHashMap2.put("[JS] userAgent", a2.d);
            }
            if (a2.i != null) {
                linkedHashMap2.put("[JS] file", a2.i);
            }
            if (a2.j != 0) {
                linkedHashMap2.put("[JS] lineNumber", Long.toString(a2.j));
            }
            linkedHashMap.putAll(linkedHashMap2);
            linkedHashMap.putAll(this.e);
            linkedHashMap.put("Java Stack", this.d);
            Thread thread = this.c;
            if (a2 != null) {
                InnerApi.postH5CrashAsync(thread, a2.f, a2.g, a2.h, linkedHashMap);
                return;
            }
            return;
        }
        x.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
    }
}
