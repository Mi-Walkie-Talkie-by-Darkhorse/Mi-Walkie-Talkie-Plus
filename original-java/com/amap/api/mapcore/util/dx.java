package com.amap.api.mapcore.util;

import java.util.Locale;
import java.util.Random;

/* compiled from: RandomUtil */
public class dx {
    private static String a = "0123456789";

    /* compiled from: RandomUtil */
    static class a {
        private String a;
        private int b;
        private int c;

        public a(String str, int i) {
            this.b = 1103515245;
            this.c = 12345;
            this.a = a(str, i, str.length());
        }

        public a() {
            this(11);
        }

        public a(int i) {
            this("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i);
        }

        public char a(int i, boolean z) {
            int length = this.a.length();
            if (z) {
                i = length - i;
            }
            return this.a.charAt(i);
        }

        public int a(char c2, boolean z) {
            int length = this.a.length();
            int indexOf = this.a.indexOf(c2);
            return z ? length - indexOf : indexOf;
        }

        public int a(int i) {
            return (int) (((((long) i) * ((long) this.b)) + ((long) this.c)) & 2147483647L);
        }

        public String a(String str, int i, int i2) {
            StringBuffer stringBuffer = new StringBuffer(str);
            int length = str.length();
            for (int i3 = 0; i3 < i2; i3++) {
                int a2 = a(i);
                int i4 = a2 % length;
                i = a(a2);
                int i5 = i % length;
                char charAt = stringBuffer.charAt(i4);
                stringBuffer.setCharAt(i4, stringBuffer.charAt(i5));
                stringBuffer.setCharAt(i5, charAt);
            }
            return stringBuffer.toString();
        }

        public String a(boolean z, int i, String str) {
            StringBuilder sb = new StringBuilder();
            int length = this.a.length();
            int length2 = str.length();
            for (int i2 = 0; i2 < length2; i2++) {
                int a2 = a(str.charAt(i2), z);
                if (a2 < 0) {
                    break;
                }
                sb.append(a(((a2 + i) + i2) % length, z));
            }
            if (sb.length() == length2) {
                return sb.toString();
            }
            return null;
        }

        public String a(int i, String str) {
            return a(false, i, str);
        }
    }

    public static String a() {
        Random random = new Random();
        String format = String.format(Locale.US, "%05d", new Object[]{Integer.valueOf(random.nextInt(10))});
        int nextInt = random.nextInt(10);
        int nextInt2 = random.nextInt(100);
        return new a(a, nextInt2).a(nextInt, format) + String.format(Locale.US, "%01d", new Object[]{Integer.valueOf(nextInt)}) + String.format(Locale.US, "%02d", new Object[]{Integer.valueOf(nextInt2)});
    }
}
