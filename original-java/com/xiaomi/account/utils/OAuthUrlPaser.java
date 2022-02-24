package com.xiaomi.account.utils;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

/* loaded from: classes2.dex */
public class OAuthUrlPaser {
    public static final String SKIP_THIRD_SNS_BIND_CODE = "/pass/sns/bind";
    public static final String SKIP_THIRD_SNS_CODE = "/pass/sns/login/load";

    public static Bundle parse(String str) {
        if (!str.contains(SKIP_THIRD_SNS_CODE) && !str.contains(SKIP_THIRD_SNS_BIND_CODE)) {
            String str2 = new String(str);
            int indexOf = str2.indexOf(63);
            if (indexOf > 0) {
                String substring = str2.substring(indexOf + 1);
                if (substring.startsWith("code=") || substring.contains("&code=")) {
                    return parseUrl(str2);
                }
                if (substring.startsWith("error=") || substring.contains("&error=")) {
                    return parseUrl(str2);
                }
            } else {
                int indexOf2 = str2.indexOf(35);
                if (indexOf2 > 0) {
                    String substring2 = str2.substring(indexOf2 + 1);
                    if (substring2.startsWith("access_token=") || substring2.contains("&access_token=")) {
                        return parseUrl(str2.replace("#", "?"));
                    }
                    if (substring2.startsWith("error=") || substring2.contains("&error=")) {
                        return parseUrl(str2.replace("#", "?"));
                    }
                }
            }
        }
        return null;
    }

    private static Bundle parseUrl(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            try {
                for (NameValuePair nameValuePair : URLEncodedUtils.parse(new URI(str), "UTF-8")) {
                    if (!TextUtils.isEmpty(nameValuePair.getName()) && !TextUtils.isEmpty(nameValuePair.getValue())) {
                        bundle.putString(nameValuePair.getName(), nameValuePair.getValue());
                    }
                }
            } catch (URISyntaxException e) {
                Log.e("openauth", e.getMessage());
            }
        }
        return bundle;
    }
}
