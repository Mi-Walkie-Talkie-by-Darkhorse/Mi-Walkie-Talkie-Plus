package org.bouncycastle.util;

import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;

public final class Strings {
    private static String LINE_SEPARATOR;

    private static class StringListImpl extends ArrayList<String> implements StringList {
        private StringListImpl() {
        }

        public void add(int i, String str) {
            super.add(i, str);
        }

        public boolean add(String str) {
            return super.add(str);
        }

        public /* bridge */ /* synthetic */ String get(int i) {
            return (String) super.get(i);
        }

        public String set(int i, String str) {
            return (String) super.set(i, str);
        }

        public String[] toStringArray() {
            String[] strArr = new String[size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 == strArr.length) {
                    return strArr;
                }
                strArr[i2] = (String) get(i2);
                i = i2 + 1;
            }
        }

        public String[] toStringArray(int i, int i2) {
            String[] strArr = new String[(i2 - i)];
            int i3 = i;
            while (i3 != size() && i3 != i2) {
                strArr[i3 - i] = (String) get(i3);
                i3++;
            }
            return strArr;
        }
    }

    static {
        try {
            LINE_SEPARATOR = (String) AccessController.doPrivileged(new PrivilegedAction<String>() {
                public String run() {
                    return System.getProperty("line.separator");
                }
            });
        } catch (Exception e) {
            try {
                LINE_SEPARATOR = String.format("%n", new Object[0]);
            } catch (Exception e2) {
                LINE_SEPARATOR = "\n";
            }
        }
    }

    public static char[] asCharArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i != cArr.length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    public static String fromByteArray(byte[] bArr) {
        return new String(asCharArray(bArr));
    }

    public static String fromUTF8ByteArray(byte[] bArr) {
        char c;
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < bArr.length) {
            i3++;
            if ((bArr[i4] & 240) == 240) {
                i3++;
                i4 += 4;
            } else {
                i4 = (bArr[i4] & 224) == 224 ? i4 + 3 : (bArr[i4] & 192) == 192 ? i4 + 2 : i4 + 1;
            }
        }
        char[] cArr = new char[i3];
        int i5 = 0;
        while (i5 < bArr.length) {
            if ((bArr[i5] & 240) == 240) {
                int i6 = (((((bArr[i5] & 3) << 18) | ((bArr[i5 + 1] & 63) << 12)) | ((bArr[i5 + 2] & 63) << 6)) | (bArr[i5 + 3] & 63)) - StreamUtil.MNS_ENCODE_NONE;
                char c2 = (char) (55296 | (i6 >> 10));
                c = (char) ((i6 & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW) | 56320);
                i = i2 + 1;
                cArr[i2] = c2;
                i5 += 4;
            } else if ((bArr[i5] & 224) == 224) {
                c = (char) (((bArr[i5] & 15) << 12) | ((bArr[i5 + 1] & 63) << 6) | (bArr[i5 + 2] & 63));
                i5 += 3;
                i = i2;
            } else if ((bArr[i5] & 208) == 208) {
                c = (char) (((bArr[i5] & 31) << 6) | (bArr[i5 + 1] & 63));
                i5 += 2;
                i = i2;
            } else if ((bArr[i5] & 192) == 192) {
                c = (char) (((bArr[i5] & 31) << 6) | (bArr[i5 + 1] & 63));
                i5 += 2;
                i = i2;
            } else {
                c = (char) (bArr[i5] & 255);
                i5++;
                i = i2;
            }
            i2 = i + 1;
            cArr[i] = c;
        }
        return new String(cArr);
    }

    public static String lineSeparator() {
        return LINE_SEPARATOR;
    }

    public static StringList newList() {
        return new StringListImpl();
    }

    public static String[] split(String str, char c) {
        Vector vector = new Vector();
        boolean z = true;
        String str2 = str;
        while (z) {
            int indexOf = str2.indexOf(c);
            if (indexOf > 0) {
                vector.addElement(str2.substring(0, indexOf));
                str2 = str2.substring(indexOf + 1);
            } else {
                vector.addElement(str2);
                z = false;
            }
        }
        String[] strArr = new String[vector.size()];
        for (int i = 0; i != strArr.length; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    public static int toByteArray(String str, byte[] bArr, int i) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i + i2] = (byte) str.charAt(i2);
        }
        return length;
    }

    public static byte[] toByteArray(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static byte[] toByteArray(char[] cArr) {
        byte[] bArr = new byte[cArr.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('A' <= c && 'Z' >= c) {
                z = true;
                charArray[i] = (char) ((c - 'A') + 97);
            }
        }
        return z ? new String(charArray) : str;
    }

    public static void toUTF8ByteArray(char[] cArr, OutputStream outputStream) throws IOException {
        int i = 0;
        while (i < cArr.length) {
            char c = cArr[i];
            if (c < 128) {
                outputStream.write(c);
            } else if (c < 2048) {
                outputStream.write((c >> 6) | 192);
                outputStream.write((c & '?') | 128);
            } else if (c < 55296 || c > 57343) {
                outputStream.write((c >> 12) | 224);
                outputStream.write(((c >> 6) & 63) | 128);
                outputStream.write((c & '?') | 128);
            } else if (i + 1 >= cArr.length) {
                throw new IllegalStateException("invalid UTF-16 codepoint");
            } else {
                i++;
                char c2 = cArr[i];
                if (c > 56319) {
                    throw new IllegalStateException("invalid UTF-16 codepoint");
                }
                int i2 = (((c & 1023) << 10) | (c2 & 1023)) + 0;
                outputStream.write((i2 >> 18) | 240);
                outputStream.write(((i2 >> 12) & 63) | 128);
                outputStream.write(((i2 >> 6) & 63) | 128);
                outputStream.write((i2 & 63) | 128);
            }
            i++;
        }
    }

    public static byte[] toUTF8ByteArray(String str) {
        return toUTF8ByteArray(str.toCharArray());
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            toUTF8ByteArray(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String toUpperCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('a' <= c && 'z' >= c) {
                z = true;
                charArray[i] = (char) ((c - 'a') + 65);
            }
        }
        return z ? new String(charArray) : str;
    }
}
