package com.mi.mimsgsdk.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
    private static String byte2Hex(byte b) {
        int i = (b & Byte.MAX_VALUE) + (b < 0 ? (byte) 128 : 0);
        return (i < 16 ? "0" : "") + Integer.toHexString(i).toLowerCase();
    }

    public static String MD5_32(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            StringBuffer stringBuffer = new StringBuffer();
            instance.update(str.getBytes(), 0, str.getBytes().length);
            byte[] digest = instance.digest();
            for (byte byte2Hex : digest) {
                stringBuffer.append(byte2Hex(byte2Hex));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String MD5_16(String str) {
        return MD5_32(str).subSequence(8, 24).toString();
    }
}
