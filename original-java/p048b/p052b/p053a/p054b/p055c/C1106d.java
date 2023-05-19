package p048b.p052b.p053a.p054b.p055c;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.b.a.b.c.d */
/* loaded from: classes.dex */
public class C1106d implements InterfaceC1104b {

    /* renamed from: a */
    private final JSONObject f5269a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1106d(InputStream inputStream) {
        this.f5269a = m21181b(inputStream);
    }

    /* renamed from: b */
    private JSONObject m21181b(InputStream inputStream) {
        String str;
        if (inputStream != null) {
            try {
                return new JSONObject(C1110h.m21171a(inputStream, "UTF-8"));
            } catch (IOException unused) {
                str = "IOException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            } catch (JSONException unused2) {
                str = "JSONException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            }
        }
        return new JSONObject();
    }

    @Override // p048b.p052b.p053a.p054b.p055c.InterfaceC1104b
    /* renamed from: a */
    public String mo21173a(String str, String str2) {
        if (str.endsWith("/")) {
            return str2;
        }
        String[] split = str.split("/");
        try {
            JSONObject jSONObject = this.f5269a;
            for (int i = 1; i < split.length; i++) {
                if (i == split.length - 1) {
                    str = jSONObject.get(split[i]).toString();
                    return str;
                }
                jSONObject = jSONObject.getJSONObject(split[i]);
            }
        } catch (JSONException unused) {
            Log.w("InputStreamReader", "JSONException when reading 'path': " + str);
        }
        return str2;
    }
}
