package com.ksyun.ks3.auth;

/* compiled from: ValidateUtil */
public class e {
    public static String a(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        if (str.length() < 3 || str.length() > 63) {
            return null;
        }
        char c = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= 'A' && charAt <= 'Z') {
                return null;
            }
            if (charAt == ' ' || charAt == 9 || charAt == 13 || charAt == 10) {
                return null;
            }
            if (charAt == '.') {
                if (c == '.') {
                    return null;
                }
                if (c == '-') {
                    return null;
                }
            } else if (charAt == '-') {
                if (c == '.') {
                    return null;
                }
            } else if (charAt < '0' || ((charAt > '9' && charAt < 'a') || charAt > 'z')) {
                return null;
            }
            i++;
            c = charAt;
        }
        if (c == '.' || c == '-') {
            return null;
        }
        return str;
    }
}
