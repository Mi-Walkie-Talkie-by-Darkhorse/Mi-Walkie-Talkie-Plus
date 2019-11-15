package org.jboss.netty.util;

import java.util.ArrayList;
import java.util.StringTokenizer;

public final class NetUtil {
    public static byte[] createByteArrayFromIpAddressString(String str) {
        int i = 0;
        if (isValidIpV4Address(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            byte[] bArr = new byte[4];
            while (i < 4) {
                bArr[i] = (byte) Integer.parseInt(stringTokenizer.nextToken());
                i++;
            }
            return bArr;
        } else if (!isValidIpV6Address(str)) {
            return null;
        } else {
            if (str.charAt(0) == '[') {
                str = str.substring(1, str.length() - 1);
            }
            StringTokenizer stringTokenizer2 = new StringTokenizer(str, ":.", true);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = "";
            String str3 = "";
            int i2 = -1;
            while (stringTokenizer2.hasMoreTokens()) {
                String nextToken = stringTokenizer2.nextToken();
                if (":".equals(nextToken)) {
                    if (":".equals(str2)) {
                        i2 = arrayList.size();
                        String str4 = str2;
                        str2 = nextToken;
                        str3 = str4;
                    } else if (str2.length() > 0) {
                        arrayList.add(str2);
                        String str5 = str2;
                        str2 = nextToken;
                        str3 = str5;
                    }
                } else if (".".equals(nextToken)) {
                    arrayList2.add(str2);
                    String str6 = str2;
                    str2 = nextToken;
                    str3 = str6;
                }
                String str7 = str2;
                str2 = nextToken;
                str3 = str7;
            }
            if (":".equals(str3)) {
                if (":".equals(str2)) {
                    i2 = arrayList.size();
                } else {
                    arrayList.add(str2);
                }
            } else if (".".equals(str3)) {
                arrayList2.add(str2);
            }
            int i3 = 8;
            if (!arrayList2.isEmpty()) {
                i3 = 6;
            }
            if (i2 != -1) {
                int size = i3 - arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    arrayList.add(i2, "0");
                }
            }
            byte[] bArr2 = new byte[16];
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                convertToBytes((String) arrayList.get(i5), bArr2, i5 * 2);
            }
            while (i < arrayList2.size()) {
                bArr2[i + 12] = (byte) (Integer.parseInt((String) arrayList2.get(i)) & 255);
                i++;
            }
            return bArr2;
        }
    }

    private static void convertToBytes(String str, byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = 0;
        int length = str.length();
        bArr[i] = 0;
        bArr[i + 1] = 0;
        if (length > 3) {
            bArr[i] = (byte) ((getIntValue(str.charAt(0)) << 4) | bArr[i]);
            i4 = 1;
        }
        if (length > 2) {
            i2 = i4 + 1;
            bArr[i] = (byte) (getIntValue(str.charAt(i4)) | bArr[i]);
        } else {
            i2 = i4;
        }
        if (length > 1) {
            i3 = i2 + 1;
            int i5 = i + 1;
            bArr[i5] = (byte) ((getIntValue(str.charAt(i2)) << 4) | bArr[i5]);
        } else {
            i3 = i2;
        }
        int i6 = i + 1;
        bArr[i6] = (byte) ((getIntValue(str.charAt(i3)) & 15) | bArr[i6]);
    }

    static int getIntValue(char c) {
        switch (c) {
            case '0':
                return 0;
            case '1':
                return 1;
            case '2':
                return 2;
            case '3':
                return 3;
            case '4':
                return 4;
            case '5':
                return 5;
            case '6':
                return 6;
            case '7':
                return 7;
            case '8':
                return 8;
            case '9':
                return 9;
            default:
                switch (Character.toLowerCase(c)) {
                    case 'a':
                        return 10;
                    case 'b':
                        return 11;
                    case 'c':
                        return 12;
                    case 'd':
                        return 13;
                    case 'e':
                        return 14;
                    case 'f':
                        return 15;
                    default:
                        return 0;
                }
        }
    }

    public static boolean isValidIpV6Address(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (length < 2) {
            return false;
        }
        boolean z = false;
        char c = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < length) {
            char charAt = str.charAt(i5);
            switch (charAt) {
                case '%':
                    if (i4 == 0) {
                        return false;
                    }
                    i2++;
                    if (i5 + 1 >= length) {
                        return false;
                    }
                    try {
                        Integer.parseInt(str.substring(i5 + 1));
                        break;
                    } catch (NumberFormatException e) {
                        return false;
                    }
                case '.':
                    i3++;
                    if (i3 > 3) {
                        return false;
                    }
                    if (!isValidIp4Word(sb.toString())) {
                        return false;
                    }
                    if (i4 != 6 && !z) {
                        return false;
                    }
                    if (i4 != 7 || str.charAt(i) == ':' || str.charAt(i + 1) == ':') {
                        sb.delete(0, sb.length());
                        break;
                    } else {
                        return false;
                    }
                case ':':
                    if (i5 != i || (str.length() > i5 && str.charAt(i5 + 1) == ':')) {
                        i4++;
                        if (i4 <= 7) {
                            if (i3 <= 0) {
                                if (c == ':') {
                                    if (z) {
                                        return false;
                                    }
                                    z = true;
                                }
                                sb.delete(0, sb.length());
                                break;
                            } else {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                    break;
                case '[':
                    if (i5 == 0) {
                        if (str.charAt(length - 1) == ']') {
                            i = 1;
                            if (length >= 4) {
                                break;
                            } else {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                case ']':
                    if (i5 == length - 1) {
                        if (str.charAt(0) == '[') {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                default:
                    if (i2 == 0) {
                        if (sb != null && sb.length() > 3) {
                            return false;
                        }
                        if (!isValidHexChar(charAt)) {
                            return false;
                        }
                    }
                    sb.append(charAt);
                    break;
            }
            int i6 = i;
            int i7 = i2;
            int i8 = i3;
            int i9 = i4;
            i5++;
            c = charAt;
            z = z;
            i4 = i9;
            i3 = i8;
            i2 = i7;
            i = i6;
        }
        if (i3 > 0) {
            if (i3 != 3 || !isValidIp4Word(sb.toString()) || i4 >= 7) {
                return false;
            }
        } else if (i4 != 7 && !z) {
            return false;
        } else {
            if (i2 == 0 && sb.length() == 0 && str.charAt((length - 1) - i) == ':' && str.charAt((length - 2) - i) != ':') {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidIp4Word(String str) {
        if (str.length() < 1 || str.length() > 3) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return false;
            }
        }
        if (Integer.parseInt(str) <= 255) {
            return true;
        }
        return false;
    }

    static boolean isValidHexChar(char c) {
        return (c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f');
    }

    public static boolean isValidIpV4Address(String str) {
        int length = str.length();
        if (length > 15) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '.') {
                i++;
                if (i > 3) {
                    return false;
                }
                if (sb.length() == 0) {
                    return false;
                }
                if (Integer.parseInt(sb.toString()) > 255) {
                    return false;
                }
                sb.delete(0, sb.length());
            } else if (!Character.isDigit(charAt)) {
                return false;
            } else {
                if (sb.length() > 2) {
                    return false;
                }
                sb.append(charAt);
            }
        }
        if (sb.length() == 0 || Integer.parseInt(sb.toString()) > 255) {
            return false;
        }
        if (i != 3) {
            return false;
        }
        return true;
    }

    private NetUtil() {
    }
}
