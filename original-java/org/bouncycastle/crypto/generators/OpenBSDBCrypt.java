package org.bouncycastle.crypto.generators;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

public class OpenBSDBCrypt {
    private static final byte[] decodingTable = new byte[128];
    private static final byte[] encodingTable = {46, 47, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57};
    private static final String version = "2a";

    static {
        for (int i = 0; i < decodingTable.length; i++) {
            decodingTable[i] = -1;
        }
        for (int i2 = 0; i2 < encodingTable.length; i2++) {
            decodingTable[encodingTable[i2]] = (byte) i2;
        }
    }

    public static boolean checkPassword(String str, char[] cArr) {
        if (str.length() != 60) {
            throw new DataLengthException("Bcrypt String length: " + str.length() + ", 60 required.");
        } else if (str.charAt(0) != '$' || str.charAt(3) != '$' || str.charAt(6) != '$') {
            throw new IllegalArgumentException("Invalid Bcrypt String format.");
        } else if (!str.substring(1, 3).equals(version)) {
            throw new IllegalArgumentException("Wrong Bcrypt version, 2a expected.");
        } else {
            try {
                int parseInt = Integer.parseInt(str.substring(4, 6));
                if (parseInt < 4 || parseInt > 31) {
                    throw new IllegalArgumentException("Invalid cost factor: " + parseInt + ", 4 < cost < 31 expected.");
                } else if (cArr != null) {
                    return str.equals(generate(cArr, decodeSaltString(str.substring(str.lastIndexOf(36) + 1, str.length() - 31)), parseInt));
                } else {
                    throw new IllegalArgumentException("Missing password.");
                }
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Invalid cost factor:" + str.substring(4, 6));
            }
        }
    }

    private static String createBcryptString(byte[] bArr, byte[] bArr2, int i) {
        StringBuffer stringBuffer = new StringBuffer(60);
        stringBuffer.append('$');
        stringBuffer.append(version);
        stringBuffer.append('$');
        stringBuffer.append(i < 10 ? "0" + i : Integer.toString(i));
        stringBuffer.append('$');
        stringBuffer.append(encodeData(bArr2));
        stringBuffer.append(encodeData(BCrypt.generate(bArr, bArr2, i)));
        return stringBuffer.toString();
    }

    private static byte[] decodeSaltString(String str) {
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16);
        if (charArray.length != 22) {
            throw new DataLengthException("Invalid base64 salt length: " + charArray.length + " , 22 required.");
        }
        for (char c : charArray) {
            if (c > 'z' || c < '.' || (c > '9' && c < 'A')) {
                throw new IllegalArgumentException("Salt string contains invalid character: " + c);
            }
        }
        char[] cArr = new char[24];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        int length = cArr.length;
        for (int i = 0; i < length; i += 4) {
            byte b = decodingTable[cArr[i]];
            byte b2 = decodingTable[cArr[i + 1]];
            byte b3 = decodingTable[cArr[i + 2]];
            byte b4 = decodingTable[cArr[i + 3]];
            byteArrayOutputStream.write((b << 2) | (b2 >> 4));
            byteArrayOutputStream.write((b2 << 4) | (b3 >> 2));
            byteArrayOutputStream.write((b3 << 6) | b4);
        }
        byte[] bArr = new byte[16];
        System.arraycopy(byteArrayOutputStream.toByteArray(), 0, bArr, 0, bArr.length);
        return bArr;
    }

    private static String encodeData(byte[] bArr) {
        boolean z;
        if (bArr.length == 24 || bArr.length == 16) {
            if (bArr.length == 16) {
                byte[] bArr2 = new byte[18];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                bArr = bArr2;
                z = true;
            } else {
                bArr[bArr.length - 1] = 0;
                z = false;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int length = bArr.length;
            for (int i = 0; i < length; i += 3) {
                byte b = bArr[i] & 255;
                byte b2 = bArr[i + 1] & 255;
                byte b3 = bArr[i + 2] & 255;
                byteArrayOutputStream.write(encodingTable[(b >>> 2) & 63]);
                byteArrayOutputStream.write(encodingTable[((b << 4) | (b2 >>> 4)) & 63]);
                byteArrayOutputStream.write(encodingTable[((b2 << 2) | (b3 >>> 6)) & 63]);
                byteArrayOutputStream.write(encodingTable[b3 & 63]);
            }
            String fromByteArray = Strings.fromByteArray(byteArrayOutputStream.toByteArray());
            return z ? fromByteArray.substring(0, 22) : fromByteArray.substring(0, fromByteArray.length() - 1);
        }
        throw new DataLengthException("Invalid length: " + bArr.length + ", 24 for key or 16 for salt expected");
    }

    public static String generate(char[] cArr, byte[] bArr, int i) {
        int i2 = 72;
        if (cArr == null) {
            throw new IllegalArgumentException("Password required.");
        } else if (bArr == null) {
            throw new IllegalArgumentException("Salt required.");
        } else if (bArr.length != 16) {
            throw new DataLengthException("16 byte salt required: " + bArr.length);
        } else if (i < 4 || i > 31) {
            throw new IllegalArgumentException("Invalid cost factor.");
        } else {
            byte[] uTF8ByteArray = Strings.toUTF8ByteArray(cArr);
            if (uTF8ByteArray.length < 72) {
                i2 = uTF8ByteArray.length + 1;
            }
            byte[] bArr2 = new byte[i2];
            if (bArr2.length > uTF8ByteArray.length) {
                System.arraycopy(uTF8ByteArray, 0, bArr2, 0, uTF8ByteArray.length);
            } else {
                System.arraycopy(uTF8ByteArray, 0, bArr2, 0, bArr2.length);
            }
            Arrays.fill(uTF8ByteArray, 0);
            String createBcryptString = createBcryptString(bArr2, bArr, i);
            Arrays.fill(bArr2, 0);
            return createBcryptString;
        }
    }
}
