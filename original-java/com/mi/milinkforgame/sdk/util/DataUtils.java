package com.mi.milinkforgame.sdk.util;

import android.os.Parcel;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DataUtils {
    public static byte[] strToMd5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            return str.getBytes();
        }
    }

    public static void writeParcelBytes(Parcel parcel, byte[] bArr) {
        if (bArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(bArr.length);
        parcel.writeByteArray(bArr);
    }

    public static byte[] readParcelBytes(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt <= -1) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    public static void zeroMemory(byte[] bArr) {
        if (bArr != null) {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = 0;
            }
        }
    }

    public static boolean closeDataObject(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            if (obj instanceof InputStream) {
                ((InputStream) obj).close();
            } else if (obj instanceof OutputStream) {
                ((OutputStream) obj).close();
            } else if (obj instanceof Reader) {
                ((Reader) obj).close();
            } else if (obj instanceof Writer) {
                ((Writer) obj).close();
            } else if (!(obj instanceof RandomAccessFile)) {
                return false;
            } else {
                ((RandomAccessFile) obj).close();
            }
            return true;
        } catch (IOException e) {
            return false;
        }
    }
}
