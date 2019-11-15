package com.nostra13.universalimageloader.cache.disc.naming;

import com.nostra13.universalimageloader.utils.L;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5FileNameGenerator implements FileNameGenerator {
    private static final String HASH_ALGORITHM = "MD5";
    private static final int RADIX = 36;

    public String generate(String str) {
        return new BigInteger(getMD5(str.getBytes())).abs().toString(36);
    }

    private byte[] getMD5(byte[] bArr) {
        boolean z = false;
        try {
            MessageDigest instance = MessageDigest.getInstance(HASH_ALGORITHM);
            instance.update(bArr);
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            L.e(e);
            return z;
        }
    }
}
