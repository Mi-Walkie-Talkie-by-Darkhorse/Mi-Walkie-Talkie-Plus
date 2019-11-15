package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import com.autonavi.ae.gmap.style.StyleElement;
import com.autonavi.ae.gmap.style.StyleItem;
import com.autonavi.amap.mapcore.Convert;
import com.autonavi.amap.mapcore.FileUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StyleParser */
public class df {
    private Context a;
    private int b = 0;
    private char c = '#';

    public df(Context context) {
        this.a = context;
    }

    public dg a(String str, boolean z) {
        if (str == null || str.equals("")) {
            return null;
        }
        return b(str, z);
    }

    public dg a(byte[] bArr, boolean z) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return b(bArr, z);
    }

    public dg b(byte[] bArr, boolean z) {
        dg dgVar = new dg();
        try {
            if (!a(dgVar.a(), bArr)) {
                a(dgVar, bArr, z);
            }
            dgVar.b();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return dgVar;
    }

    public dg b(String str, boolean z) {
        try {
            return b(FileUtil.readFileContents(str), z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private void a(dg dgVar, byte[] bArr, boolean z) {
        dc a2 = a(bArr);
        if (a2 != null && a2.a() != null) {
            try {
                JSONObject jSONObject = new JSONObject(a2.a());
                if (jSONObject != null) {
                    JSONArray names = jSONObject.names();
                    for (int i = 0; i < names.length(); i++) {
                        String string = names.getString(i);
                        if (string == null || !string.trim().equals("sdkTextures")) {
                            if (string == null || !string.trim().equals("background")) {
                                JSONObject optJSONObject = jSONObject.optJSONObject(string);
                                if (optJSONObject != null) {
                                    a(string, dgVar.a(), optJSONObject, z);
                                }
                            } else {
                                this.b = a("#" + jSONObject.optString("background"));
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private void a(String str, Map<Integer, StyleItem> map, JSONObject jSONObject, boolean z) throws JSONException {
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("subType");
            if (optJSONObject == null) {
                a((String) null, str, map, jSONObject, z);
                return;
            }
            JSONArray names = optJSONObject.names();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < names.length()) {
                    String string = names.getString(i2);
                    a(str, string, map, optJSONObject.optJSONObject(string), z);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void a(String str, String str2, Map<Integer, StyleItem> map, JSONObject jSONObject, boolean z) throws JSONException {
        if (str != null && str.equals("roads") && str2.equals("subway")) {
            str2 = "subwayline";
        }
        int a2 = dh.a(str2);
        if (!jSONObject.optBoolean("visible", true)) {
            a(map, a2, dd.a("visible")).textureId = -1;
            return;
        }
        if (!jSONObject.optBoolean("showIcon", true)) {
            a(map, a2, dd.a("textFillColor")).textureId = -1;
        }
        if (!jSONObject.optBoolean("showLabel", true)) {
            a(map, a2, dd.a("textFillColor")).opacity = 0.0f;
            a(map, a2, dd.a("textStrokeColor")).opacity = 0.0f;
        }
        a(map, jSONObject, "color", "opacity", a2);
        a(map, jSONObject, "fillColor", "fillOpacity", a2);
        a(map, jSONObject, "strokeColor", "strokeOpacity", a2);
        a(map, jSONObject, "textFillColor", "textFillOpacity", a2);
        a(map, jSONObject, "textStrokeColor", "textStrokeOpacity", a2);
        a(map, jSONObject, "backgroundColor", "backgroundOpacity", a2);
        if (z) {
            a(map, jSONObject, "textureName", a2);
        }
    }

    private void a(Map<Integer, StyleItem> map, JSONObject jSONObject, String str, String str2, int i) {
        try {
            String optString = jSONObject.optString(str, null);
            float f = 1.0f;
            int i2 = 0;
            if (TextUtils.isEmpty(optString)) {
                f = (float) jSONObject.optDouble(str2, 1.0d);
            } else {
                i2 = a("#" + optString);
            }
            if (i2 != 0 || ((double) f) != 1.0d) {
                int a2 = dd.a(str);
                StyleElement a3 = a(map, i, a2);
                a3.value = i2;
                a3.opacity = f;
                if (i == 39) {
                    a(map, i, 2).opacity = 0.0f;
                } else if (i == 12 && a2 == 3) {
                    StyleElement a4 = a(map, i, 2);
                    a4.value = i2;
                    a4.opacity = f;
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(Map<Integer, StyleItem> map, JSONObject jSONObject, String str, int i) {
        try {
            int optInt = jSONObject.optInt(str, 0);
            if (optInt != 0) {
                a(map, i, dd.a(str)).textureId = optInt;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private dc a(byte[] bArr) {
        Throwable th;
        dc dcVar;
        try {
            dcVar = new dc();
            try {
                byte[] bytes = "l".getBytes("utf-8");
                int length = bArr.length;
                int length2 = bytes.length;
                for (int i = 0; i < length; i++) {
                    int i2 = i % length2;
                    bArr[i] = (byte) (bytes[i2] ^ bArr[i]);
                }
                dcVar.a(Convert.getString(bArr, 0, 4));
                dcVar.b(Convert.getString(bArr, 4, 32));
                dcVar.c(Convert.getString(bArr, 36, 10));
                dcVar.d(a(Convert.getSubBytes(bArr, 78, length - 78), Convert.getSubBytes(bArr, 46, 16), Convert.getSubBytes(bArr, 62, 16)));
            } catch (Throwable th2) {
                th = th2;
                ThrowableExtension.printStackTrace(th);
                return dcVar;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            dcVar = null;
            th = th4;
            ThrowableExtension.printStackTrace(th);
            return dcVar;
        }
        return dcVar;
    }

    private String a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/NoPadding");
            instance.init(2, secretKeySpec, ivParameterSpec);
            return new String(instance.doFinal(bArr), "utf-8");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private boolean a(Map<Integer, StyleItem> map, byte[] bArr) {
        try {
            JSONArray jSONArray = new JSONArray(new String(bArr, "UTF-8"));
            if (jSONArray == null) {
                return false;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                String optString = optJSONObject.optString("featureType");
                if (!TextUtils.isEmpty(optString)) {
                    if (optString.equals("background")) {
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("stylers");
                        if (optJSONObject2 != null) {
                            int a2 = a(optJSONObject2.optString("color"));
                            if (a2 != 0) {
                                this.b = a2;
                            }
                        }
                    } else {
                        int[] a3 = de.a(optString);
                        if (!(a3 == null || a3.length == 0)) {
                            String optString2 = optJSONObject.optString("elementType");
                            if (!TextUtils.isEmpty(optString2)) {
                                int a4 = dd.a(optString2);
                                if (a4 != -1) {
                                    a(map, optJSONObject, a3, a4);
                                }
                            }
                        }
                    }
                }
            }
            return true;
        } catch (JSONException e) {
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    private void a(Map<Integer, StyleItem> map, JSONObject jSONObject, int[] iArr, int i) throws JSONException {
        for (int a2 : iArr) {
            a(map, jSONObject, a2, i);
        }
    }

    private void a(Map<Integer, StyleItem> map, JSONObject jSONObject, int i, int i2) throws JSONException {
        StyleElement a2 = a(map, i, i2);
        JSONObject optJSONObject = jSONObject.optJSONObject("stylers");
        if (optJSONObject != null) {
            int a3 = a(optJSONObject.optString("color"));
            if (a3 != 0) {
                a2.value = a3;
                a2.textureId = optJSONObject.optInt("textureName", 0);
                if (i >= 30 && i <= 38) {
                    a(map, i, 4).opacity = 0.1f;
                } else if (i == 12 && i2 == 3) {
                    a(map, i, 2).value = a3;
                }
            }
        }
    }

    private StyleElement a(Map<Integer, StyleItem> map, int i, int i2) {
        StyleItem styleItem = (StyleItem) map.get(Integer.valueOf(i));
        if (styleItem == null) {
            styleItem = new StyleItem(i);
            map.put(Integer.valueOf(i), styleItem);
        }
        StyleElement styleElement = styleItem.get(i2);
        if (styleElement != null) {
            return styleElement;
        }
        StyleElement styleElement2 = new StyleElement();
        styleElement2.styleElementType = i2;
        styleItem.put(i2, styleElement2);
        return styleElement2;
    }

    private int a(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Color.parseColor(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return i;
        }
    }

    public int a() {
        return this.b;
    }
}
