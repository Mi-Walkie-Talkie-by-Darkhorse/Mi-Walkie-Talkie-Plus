package com.ksyun.ks3.a;

import android.util.Base64;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: Md5Utils */
public class c {
    public static byte[] a(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[16384];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, bArr.length);
                if (read == -1) {
                    break;
                }
                instance.update(bArr, 0, read);
            }
            byte[] digest = instance.digest();
            try {
                bufferedInputStream.close();
            } catch (Exception e) {
                Log.e("ks3", "Unable to close input stream of hash candidate: " + e);
            }
            return digest;
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Exception e3) {
                Log.e("ks3", "Unable to close input stream of hash candidate: " + e3);
            }
            throw th;
        }
    }

    public static byte[] a(File file) throws FileNotFoundException, IOException {
        return a((InputStream) new FileInputStream(file));
    }

    public static String b(File file) throws FileNotFoundException, IOException {
        return Base64.encodeToString(a(file), 0).trim();
    }
}
