package com.mi.milinkforgame.sdk.base.os.dns;

import java.text.DecimalFormat;

public class ByteBase {
    private static final DecimalFormat byteFormat = new DecimalFormat();

    public static String byteString(byte[] bArr, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2] & 255;
            if (b <= 32 || b >= Byte.MAX_VALUE) {
                stringBuffer.append('\\');
                stringBuffer.append(byteFormat.format((long) b));
            } else if (b == 34 || b == 40 || b == 41 || b == 46 || b == 59 || b == 92 || b == 64 || b == 36) {
                stringBuffer.append('\\');
                stringBuffer.append((char) b);
            } else {
                stringBuffer.append((char) b);
            }
        }
        return stringBuffer.toString();
    }
}
