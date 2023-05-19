package com.xiaomi.accountsdk.diagnosis;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.tencent.connect.common.Constants;
import com.xiaomi.accountsdk.diagnosis.p267a.C5838a;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.xiaomi.accountsdk.diagnosis.e */
/* loaded from: classes2.dex */
public class C5852e {
    /* renamed from: a */
    public static C5838a m4207a() {
        String m4206b = m4206b();
        if (TextUtils.isEmpty(m4206b)) {
            return null;
        }
        try {
            return C5838a.m4232a(new JSONObject(m4206b.replaceFirst("&&&START&&&", "")));
        } catch (JSONException e) {
            Log.w("OnlinePreference", "error getting online config", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    private static String m4206b() {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL("https://account.xiaomi.com/pass/preference").openConnection();
        } catch (Throwable th2) {
            httpURLConnection = null;
            th = th2;
        }
        try {
            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200 && responseCode != 202) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine + "\n");
            }
            bufferedReader.close();
            String sb2 = sb.toString();
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return sb2;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }
}
