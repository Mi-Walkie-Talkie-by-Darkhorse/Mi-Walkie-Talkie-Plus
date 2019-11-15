package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class BufferUtil {
    private static String TAG = "BufferUtil";

    public static boolean isHttpHead(byte[] bArr) {
        String upperCase = new String(bArr).substring(0, 4).toUpperCase();
        if (bArr != null && upperCase.charAt(0) == 'H' && upperCase.charAt(1) == 'T' && upperCase.charAt(2) == 'T' && upperCase.charAt(3) == 'P') {
            return true;
        }
        return false;
    }

    public static boolean isMNSHead(byte[] bArr) {
        if (bArr == null || bArr.length < StreamUtil.MNS.length) {
            return false;
        }
        if (bArr[0] == StreamUtil.MNS[0] && bArr[1] == StreamUtil.MNS[1] && bArr[2] == StreamUtil.MNS[2] && bArr[3] == StreamUtil.MNS[3]) {
            return true;
        }
        return false;
    }

    public static boolean isEqualByte(byte b, byte b2) {
        return b == b2 || (Character.isLetter((char) b) && Character.isLetter((char) b) && Math.abs(b - b2) == 32);
    }

    public static void copy(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            int i5 = i + 1;
            bArr[i] = bArr2[i2 + i4];
            i4++;
            i = i5;
        }
    }

    public static int findFormByte(byte[] bArr, byte[] bArr2) {
        MiLinkLog.d(TAG, "findFormByte recvData");
        for (int length = bArr2.length - 1; length < bArr.length; length++) {
            int length2 = bArr2.length;
            boolean z = true;
            for (int i = 0; i < length2; i++) {
                if (!isEqualByte(bArr[(length - length2) + i + 1], bArr2[i])) {
                    z = false;
                }
            }
            if (z) {
                return length + 1;
            }
        }
        return -1;
    }

    public static int findFromByteKMP(byte[] bArr, byte[] bArr2) {
        int indexKMP = getIndexKMP(bArr, bArr2);
        if (indexKMP != -1) {
            return indexKMP + bArr2.length;
        }
        return indexKMP;
    }

    public static int getIndexKMP(byte[] bArr, byte[] bArr2) {
        int i = 0;
        int length = bArr.length;
        int length2 = bArr2.length;
        if (length < length2) {
            return -1;
        }
        int[] kMPNext = getKMPNext(bArr2);
        if (kMPNext == null) {
            return -1;
        }
        int i2 = 0;
        while (i2 < length && i < length2) {
            if (isEqualByte(bArr[i2], bArr2[i])) {
                i2++;
                i++;
            } else if (i == 0) {
                i2++;
            } else {
                i = kMPNext[i - 1] + 1;
            }
        }
        if (i == length2) {
            return i2 - i;
        }
        return -1;
    }

    private static int[] getKMPNext(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return null;
        }
        int[] iArr = new int[length];
        iArr[0] = -1;
        int i = 1;
        while (i < length) {
            int i2 = iArr[i - 1];
            while (i2 >= 0 && !isEqualByte(bArr[i], bArr[i2 + 1])) {
                i2 = iArr[i2];
            }
            if (isEqualByte(bArr[i], bArr[i2 + 1])) {
                iArr[i] = i2 + 1;
            } else {
                iArr[i] = -1;
            }
            i++;
        }
        return iArr;
    }

    public static int findContentLengthFromByte(byte[] bArr) {
        byte[] bArr2 = new byte["Content-Length:".length()];
        copy(bArr2, 0, "Content-Length:".getBytes(), 0, "Content-Length:".length());
        return findFormByte(bArr, bArr2);
    }

    public static int findMNSHeaderFromByte(byte[] bArr) {
        return findFormByte(bArr, new byte[]{StreamUtil.MNS[0], StreamUtil.MNS[1], StreamUtil.MNS[2], StreamUtil.MNS[3]});
    }

    public static int findHttpHeaderEndFromByte(byte[] bArr) {
        return findFormByte(bArr, new byte[]{HttpConstants.CR, 10, HttpConstants.CR, 10});
    }
}
