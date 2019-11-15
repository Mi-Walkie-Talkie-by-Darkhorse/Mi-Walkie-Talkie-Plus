package com.mi.milinkforgame.sdk.util;

import android.os.Parcel;
import android.text.format.Time;
import android.util.Base64;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Iterator;

public abstract class CommonUtils {
    public static final String EMPTY = "";
    public static final String NOT_AVALIBLE = "N/A";

    public static boolean isTextEmpty(String str) {
        return str == null || str.length() < 1;
    }

    public static SimpleDateFormat createDataFormat(String str) {
        return new SimpleDateFormat(str);
    }

    public static String join(Collection<?> collection, String str) {
        if (collection == null) {
            return null;
        }
        Iterator it = collection.iterator();
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return next.toString();
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            sb.append(str);
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String getTimeStr(long j) {
        long j2 = j % 1000;
        Time time = new Time();
        time.set(j);
        StringBuilder sb = new StringBuilder();
        sb.append(time.format(TraceFormat.TRACE_TIME_FORMAT)).append('.');
        if (j2 < 10) {
            sb.append("00");
        } else if (j2 < 100) {
            sb.append('0');
        }
        sb.append(j2);
        return sb.toString();
    }

    public static byte[] strToMd5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            return str.getBytes();
        }
    }

    public static String miuiSHA1(String str) {
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(str.getBytes()), 8).substring(0, 16);
        } catch (Exception e) {
            return "";
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

    public static final boolean isLegalIp(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))");
    }

    public static final boolean isLegalPort(int i) {
        return i >= 0 && i < 65536;
    }
}
