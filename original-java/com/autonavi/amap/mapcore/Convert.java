package com.autonavi.amap.mapcore;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;

public class Convert {
    public static int getInt(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) + ((bArr[i + 2] & 255) << Tnaf.POW_2_WIDTH) + ((bArr[i + 1] & 255) << 8) + ((bArr[i + 0] & 255) << 0);
    }

    public static short getShort(byte[] bArr, int i) {
        return (short) (((bArr[i + 1] & 255) << 8) + ((bArr[i + 0] & 255) << 0));
    }

    public static int getUShort(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) + ((bArr[i + 0] & 255) << 0);
    }

    public static boolean getBit(byte b, int i) {
        if ((((b << (32 - i)) >>> (32 - i)) >>> (i - 1)) > 0) {
            return true;
        }
        return false;
    }

    public static byte[] copyString(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public static byte[] covertBytes(byte b) {
        return new byte[]{b};
    }

    public static byte[] convertInt(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    public static int getNum(byte b, int i, int i2) {
        return ((b << ((32 - i2) - 1)) >>> ((32 - i2) - 1)) >>> i;
    }

    public static int getNum(short s, int i, int i2) {
        return ((s << (32 - i2)) >>> (32 - i2)) >>> (i - 1);
    }

    public static byte[] convertShort(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)};
    }

    public static void writeInt(byte[] bArr, int i, int i2) {
        System.arraycopy(convertInt(i2), 0, bArr, i, 4);
    }

    public static void writeShort(byte[] bArr, int i, short s) {
        System.arraycopy(convertShort(s), 0, bArr, i, 2);
    }

    public static void moveArray(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        byte[] bArr3 = new byte[i3];
        System.arraycopy(bArr, i, bArr3, 0, i3);
        System.arraycopy(bArr3, 0, bArr2, i2, i3);
    }

    public static String getString(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static byte[] getSubBytes(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public static byte[] get1BString(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = str.getBytes("UTF-8");
            byteArrayOutputStream.write(new byte[]{(byte) bytes.length});
            byteArrayOutputStream.write(bytes);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return new byte[1];
        }
    }

    public static byte[] get2BString(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = str.getBytes("UTF-8");
            byteArrayOutputStream.write(convertShort(bytes.length));
            byteArrayOutputStream.write(bytes);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return new byte[1];
        }
    }

    public static double convertDouble(byte[] bArr, int i) {
        long j = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            j += ((long) (bArr[i2 + i] & 255)) << (i2 * 8);
        }
        return Double.longBitsToDouble(j);
    }

    public static byte[] getDouble(double d) {
        byte[] bArr = new byte[8];
        String hexString = Long.toHexString(Double.doubleToLongBits(d));
        for (int i = 0; i < 8; i++) {
            bArr[7 - i] = (byte) Integer.parseInt(hexString.substring(i * 2, (i * 2) + 2), 16);
        }
        return bArr;
    }

    public static void convert1bString(byte[] bArr, int i, ConvertString convertString) {
        try {
            convertString.byteLength = bArr[i];
            convertString.value = new String(bArr, i + 1, convertString.byteLength, "UTF-8");
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            convertString.byteLength = 0;
            convertString.value = "";
        }
    }

    public static void convert2bString(byte[] bArr, int i, ConvertString convertString) {
        try {
            convertString.byteLength = getShort(bArr, i);
            convertString.value = new String(bArr, i + 2, convertString.byteLength, "UTF-8");
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            convertString.byteLength = 0;
            convertString.value = "";
        }
    }

    public static final String bytesToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }
}
