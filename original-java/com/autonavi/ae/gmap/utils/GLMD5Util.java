package com.autonavi.ae.gmap.utils;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.security.MessageDigest;

public class GLMD5Util {
    public static String getStringMD5(String str) {
        return getCharArrayMD5(str.toCharArray());
    }

    public static String getCharArrayMD5(char[] cArr) {
        byte[] bArr = new byte[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return getByteArrayMD5(bArr);
    }

    public static String getByteArrayMD5(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                byte b2 = b & 255;
                if (b2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(b2));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
