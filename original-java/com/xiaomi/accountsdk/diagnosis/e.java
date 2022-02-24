package com.xiaomi.accountsdk.diagnosis;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.tencent.connect.common.Constants;
import com.xiaomi.accountsdk.diagnosis.a.a;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {
    public static a a() {
        String b2 = b();
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        try {
            return a.a(new JSONObject(b2.replaceFirst("&&&START&&&", "")));
        } catch (JSONException e) {
            Log.w("OnlinePreference", "error getting online config", e);
            return null;
        }
    }

    @Nullable
    private static String b() {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL("https://account.xiaomi.com/pass/preference").openConnection();
            try {
                httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200 || responseCode == 202) {
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
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }
}
