package com.xiaomi.channel.commonutils.string;

import android.net.Uri;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public class b {
    public static String a(String str) {
        try {
            return String.valueOf(a.a(MessageDigest.getInstance("SHA1").digest(str.getBytes("UTF-8"))));
        } catch (NoSuchAlgorithmException e) {
            com.xiaomi.channel.commonutils.logger.b.a("CloudCoder.hash4SHA1 ", (Throwable) e);
        } catch (UnsupportedEncodingException e2) {
            com.xiaomi.channel.commonutils.logger.b.a("CloudCoder.hash4SHA1 ", (Throwable) e2);
        } catch (Exception e3) {
            com.xiaomi.channel.commonutils.logger.b.a("CloudCoder.hash4SHA1 ", (Throwable) e3);
        }
        throw new IllegalStateException("failed to SHA1");
    }

    public static String a(String str, String str2, Map<String, String> map, String str3) {
        boolean z = true;
        if (TextUtils.isEmpty(str3)) {
            throw new InvalidParameterException("security is not nullable");
        }
        ArrayList<String> arrayList = new ArrayList<>();
        if (str != null) {
            arrayList.add(str.toUpperCase());
        }
        if (str2 != null) {
            arrayList.add(Uri.parse(str2).getEncodedPath());
        }
        if (map != null && !map.isEmpty()) {
            for (Entry entry : new TreeMap(map).entrySet()) {
                arrayList.add(String.format("%s=%s", new Object[]{entry.getKey(), entry.getValue()}));
            }
        }
        arrayList.add(str3);
        StringBuilder sb = new StringBuilder();
        for (String str4 : arrayList) {
            if (!z) {
                sb.append('&');
            }
            sb.append(str4);
            z = false;
        }
        return a(sb.toString());
    }
}
