package com.shenma.speechrecognition;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class u {
    public static String a(String str) {
        byte[] bArr;
        try {
            bArr = MessageDigest.getInstance("MD5").digest(str.getBytes("ISO-8859-1"));
        } catch (NoSuchAlgorithmException e) {
            aa.a(e, "Fail to get md5.", new Object[0]);
            bArr = null;
        } catch (UnsupportedEncodingException e2) {
            aa.a(e2, "Fail to get md5.", new Object[0]);
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            if ((b & 255) < 16) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(b & 255));
        }
        return sb.toString();
    }
}
