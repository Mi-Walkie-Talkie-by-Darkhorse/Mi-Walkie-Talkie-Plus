package com.xiaomi.account.auth;

import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.account.utils.Base64Coder;
import com.xiaomi.mipush.sdk.Constants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.Scanner;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class AuthorizeHelper {
    private static final String HMAC_SHA1 = "HmacSHA1";
    private static final String UTF8 = "UTF-8";
    private static Random random = new Random();

    /* JADX INFO: Access modifiers changed from: protected */
    public static HashMap<String, String> buildMacRequestHead(String str, String str2, String str3) throws UnsupportedEncodingException {
        String format = String.format("MAC access_token=\"%s\", nonce=\"%s\",mac=\"%s\"", URLEncoder.encode(str, UTF8), URLEncoder.encode(str2, UTF8), URLEncoder.encode(str3, UTF8));
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("Authorization", format);
        return hashMap;
    }

    protected static String encodeSign(byte[] bArr) {
        return new String(Base64Coder.encode(bArr));
    }

    protected static byte[] encryptHMACSha1(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, HMAC_SHA1);
        Mac instance = Mac.getInstance(HMAC_SHA1);
        instance.init(secretKeySpec);
        instance.update(bArr);
        return instance.doFinal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String generateNonce() {
        long nextLong = random.nextLong();
        int currentTimeMillis = (int) (System.currentTimeMillis() / OpenStreetMapTileProviderConstants.ONE_MINUTE);
        return nextLong + Constants.COLON_SEPARATOR + currentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String generateUrl(String str, List<NameValuePair> list) {
        if (list == null || list.size() <= 0) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (NameValuePair nameValuePair : list) {
            buildUpon.appendQueryParameter(nameValuePair.getName(), nameValuePair.getValue());
        }
        return buildUpon.build().toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getMacAccessTokenSignatureString(String str, String str2, String str3, String str4, String str5, String str6, String str7) throws InvalidKeyException, NoSuchAlgorithmException, UnsupportedEncodingException {
        if (HMAC_SHA1.equalsIgnoreCase(str7)) {
            StringBuilder sb = new StringBuilder("");
            sb.append(str + "\n");
            sb.append(str2.toUpperCase() + "\n");
            sb.append(str3 + "\n");
            sb.append(str4 + "\n");
            if (!TextUtils.isEmpty(str5)) {
                StringBuffer stringBuffer = new StringBuffer();
                ArrayList arrayList = new ArrayList();
                URLEncodedUtils.parse(arrayList, new Scanner(str5), UTF8);
                Collections.sort(arrayList, new Comparator<NameValuePair>() { // from class: com.xiaomi.account.auth.AuthorizeHelper.1
                    public int compare(NameValuePair nameValuePair, NameValuePair nameValuePair2) {
                        return nameValuePair.getName().compareTo(nameValuePair2.getName());
                    }
                });
                stringBuffer.append(URLEncodedUtils.format(arrayList, UTF8));
                sb.append(stringBuffer.toString() + "\n");
            }
            return encodeSign(encryptHMACSha1(sb.toString().getBytes(UTF8), str6.getBytes(UTF8)));
        }
        throw new NoSuchAlgorithmException("error mac algorithm : " + str7);
    }
}
