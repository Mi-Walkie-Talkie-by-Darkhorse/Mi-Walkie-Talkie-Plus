package com.mi.milinkforgame.sdk.base.data;

import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;

public class Convert {
    public static final char[] NUMBERIC_CHAR = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final long makeLong(int i, int i2) {
        return (((long) i) << 32) | (((long) i2) & 4294967295L);
    }

    public static final int low(long j) {
        return (int) j;
    }

    public static final int high(long j) {
        return (int) (j >>> 32);
    }

    public static final int strToInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static final byte strToByte(String str, byte b) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException e) {
            return b;
        }
    }

    public static String bytesToHexStr(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(NUMBERIC_CHAR[((b + StreamUtil.MNS_ENCODE_NONE) % 256) / 16]).append(NUMBERIC_CHAR[((b + StreamUtil.MNS_ENCODE_NONE) % 256) % 16]);
        }
        return sb.toString();
    }

    public static String bytesToHexStr(byte[] bArr, int i) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return "";
        }
        if (bArr.length <= i) {
            i = bArr.length;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            sb.append(NUMBERIC_CHAR[((b + StreamUtil.MNS_ENCODE_NONE) % 256) / 16]).append(NUMBERIC_CHAR[((b + StreamUtil.MNS_ENCODE_NONE) % 256) % 16]).append(' ');
        }
        return sb.toString();
    }

    public static byte[] hexStrToBytes(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        int length = str.length();
        int i = (length + 1) / 2;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            char charAt = str.charAt(i2 * 2);
            char c = '0';
            if ((i2 * 2) + 1 < length) {
                c = str.charAt((i2 * 2) + 1);
            }
            int hexCharToInt = hexCharToInt(charAt);
            int hexCharToInt2 = hexCharToInt(c);
            if (hexCharToInt < 0 || hexCharToInt2 < 0) {
                return null;
            }
            bArr[i2] = (byte) (hexCharToInt2 + (hexCharToInt * 16));
        }
        return bArr;
    }

    public static int hexCharToInt(char c) {
        if (c <= '9' && c >= '0') {
            return c - '0';
        }
        if (c <= 'F' && c >= 'A') {
            return (c - 'A') + 10;
        }
        if (c > 'f' || c < 'a') {
            return -1;
        }
        return (c - 'a') + 10;
    }

    public static String IPv4ToStr(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            if (i != 0) {
                sb.append('.');
            }
            sb.append((bArr[i] + StreamUtil.MNS_ENCODE_NONE) % 256);
        }
        return sb.toString();
    }

    public static byte[] strToIPv4(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        if (split == null) {
            return null;
        }
        byte[] bArr = new byte[split.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) Integer.parseInt(split[i]);
        }
        return bArr;
    }

    public static String intToIPv4(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i & 255).append(".");
        stringBuffer.append((i >> 8) & 255).append(".");
        stringBuffer.append((i >> 16) & 255).append(".");
        stringBuffer.append((i >> 24) & 255);
        return stringBuffer.toString();
    }

    public static String intToIPv4_Reverse(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((i >> 24) & 255).append(".");
        stringBuffer.append((i >> 16) & 255).append(".");
        stringBuffer.append((i >> 8) & 255).append(".");
        stringBuffer.append(i & 255);
        return stringBuffer.toString();
    }

    public static byte[] longToBytes(long j) {
        byte[] bArr = new byte[8];
        bArr[7] = (byte) ((int) (j & 255));
        bArr[6] = (byte) ((int) ((j >> 8) & 255));
        bArr[5] = (byte) ((int) ((j >> 16) & 255));
        bArr[4] = (byte) ((int) ((j >> 24) & 255));
        bArr[3] = (byte) ((int) ((j >> 32) & 255));
        bArr[2] = (byte) ((int) ((j >> 40) & 255));
        bArr[1] = (byte) ((int) ((j >> 48) & 255));
        bArr[0] = (byte) ((int) ((j >> 56) & 255));
        return bArr;
    }

    public static void longToBytes(long j, byte[] bArr, int i) {
        bArr[i + 7] = (byte) ((int) (j & 255));
        bArr[i + 6] = (byte) ((int) ((j >> 8) & 255));
        bArr[i + 5] = (byte) ((int) ((j >> 16) & 255));
        bArr[i + 4] = (byte) ((int) ((j >> 24) & 255));
        bArr[i + 3] = (byte) ((int) ((j >> 32) & 255));
        bArr[i + 2] = (byte) ((int) ((j >> 40) & 255));
        bArr[i + 1] = (byte) ((int) ((j >> 48) & 255));
        bArr[i + 0] = (byte) ((int) ((j >> 56) & 255));
    }

    public static long bytesToLong(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 56) | ((((long) bArr[1]) & 255) << 48) | ((((long) bArr[2]) & 255) << 40) | ((((long) bArr[3]) & 255) << 32) | ((((long) bArr[4]) & 255) << 24) | ((((long) bArr[5]) & 255) << 16) | ((((long) bArr[6]) & 255) << 8) | ((((long) bArr[7]) & 255) << 0);
    }

    public static long bytesToLong(byte[] bArr, int i) {
        return ((((long) bArr[i + 0]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8) | ((((long) bArr[i + 7]) & 255) << 0);
    }

    public static byte[] intToBytes(int i) {
        byte[] bArr = new byte[4];
        bArr[3] = (byte) (i & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[0] = (byte) ((i >> 24) & 255);
        return bArr;
    }

    public static void intToBytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i & 255);
        bArr[i2 + 2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) ((i >> 16) & 255);
        bArr[i2] = (byte) ((i >> 24) & 255);
    }

    public static int bytesToInt(byte[] bArr) {
        return (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[0] & 255) << 24);
    }

    public static int bytesToInt(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i + 2] & 255) << 8) | ((bArr[i + 1] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i] & 255) << 24);
    }

    public static byte[] uintToBytes(long j) {
        byte[] bArr = new byte[4];
        bArr[3] = (byte) ((int) (j & 255));
        bArr[2] = (byte) ((int) ((j >> 8) & 255));
        bArr[1] = (byte) ((int) ((j >> 16) & 255));
        bArr[0] = (byte) ((int) ((j >> 24) & 255));
        return bArr;
    }

    public static void uintToBytes(long j, byte[] bArr, int i) {
        bArr[i + 3] = (byte) ((int) j);
        bArr[i + 2] = (byte) ((int) ((j >> 8) & 255));
        bArr[i + 1] = (byte) ((int) ((j >> 16) & 255));
        bArr[i] = (byte) ((int) ((j >> 24) & 255));
    }

    public static long bytesToUint(byte[] bArr) {
        return ((long) (bArr[3] & 255)) | (((long) (bArr[2] & 255)) << 8) | (((long) (bArr[1] & 255)) << 16) | (((long) (bArr[0] & 255)) << 24);
    }

    public static long bytesToUint(byte[] bArr, int i) {
        return ((long) (bArr[i + 3] & 255)) | (((long) (bArr[i + 2] & 255)) << 8) | (((long) (bArr[i + 1] & 255)) << 16) | (((long) (bArr[i] & 255)) << 24);
    }

    public static byte[] shortToBytes(short s) {
        byte[] bArr = new byte[2];
        bArr[1] = (byte) (s & 255);
        bArr[0] = (byte) ((s >> 8) & 255);
        return bArr;
    }

    public static void shortToBytes(short s, byte[] bArr, int i) {
        bArr[i + 1] = (byte) (s & 255);
        bArr[i] = (byte) ((s >> 8) & 255);
    }

    public static short bytesToShort(byte[] bArr) {
        return (short) ((bArr[1] & 255) | ((bArr[0] & 255) << 8));
    }

    public static short bytesToShort(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public static byte[] ushortToBytes(int i) {
        byte[] bArr = new byte[2];
        bArr[1] = (byte) (i & 255);
        bArr[0] = (byte) ((i >> 8) & 255);
        return bArr;
    }

    public static void ushortToBytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 1] = (byte) (i & 255);
        bArr[i2] = (byte) ((i >> 8) & 255);
    }

    public static int bytesToUshort(byte[] bArr) {
        return (bArr[1] & 255) | ((bArr[0] & 255) << 8);
    }

    public static int bytesToUshort(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public static byte[] ubyteToBytes(int i) {
        return new byte[]{(byte) (i & 255)};
    }

    public static void ubyteToBytes(int i, byte[] bArr, int i2) {
        bArr[0] = (byte) (i & 255);
    }

    public static int bytesToUbyte(byte[] bArr) {
        return bArr[0] & 255;
    }

    public static int bytesToUbyte(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public static String bytesToASCIIString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        return bytesToASCIIString(bArr, bArr.length);
    }

    public static String bytesToASCIIString(byte[] bArr, int i) {
        if (bArr == null) {
            return "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append((char) ((bArr[i2] + StreamUtil.MNS_ENCODE_NONE) % 256));
            }
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public static String bytesToStr(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr);
    }

    public static byte[] readByte(ByteArrayInputStream byteArrayInputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        byteArrayInputStream.read(bArr, 0, bArr.length);
        return bArr;
    }

    public static void readBytes(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, int i2) throws IOException {
        byteArrayInputStream.read(bArr, i, i2);
    }

    public static boolean compare(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] encryptTea(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        if (bArr == null || bArr2 == null) {
            return bArr3;
        }
        try {
            byte[] bArr4 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            return new Tea().encrypt(bArr4, bArr2);
        } catch (Exception e) {
            CustomLogcat.w("Base.Convert", "TEA加密失败");
            return bArr3;
        }
    }

    public static byte[] decryptTea(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        if (bArr == null || bArr2 == null) {
            return bArr3;
        }
        try {
            byte[] bArr4 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            return new Tea().decrypt(bArr4, bArr2);
        } catch (Exception e) {
            CustomLogcat.w("Base.Convert", "TEA解密失败");
            return bArr3;
        }
    }
}
