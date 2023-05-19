package p048b.p052b.p053a.p054b.p055c;

/* renamed from: b.b.a.b.c.c */
/* loaded from: classes.dex */
public class C1105c {

    /* renamed from: a */
    private static final char[] f5268a = "0123456789ABCDEF".toCharArray();

    /* renamed from: a */
    public static String m21184a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            char[] cArr = f5268a;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static byte[] m21183b(String str) {
        return m21182c(str.toCharArray());
    }

    /* renamed from: c */
    private static byte[] m21182c(char[] cArr) {
        if ((cArr.length & 1) == 0) {
            byte[] bArr = new byte[cArr.length >> 1];
            int i = 0;
            int i2 = 0;
            while (i < cArr.length) {
                int digit = Character.digit(cArr[i], 16);
                if (digit == -1) {
                    throw new IllegalArgumentException("Illegal hexadecimal character at index " + i);
                }
                int i3 = i + 1;
                int digit2 = Character.digit(cArr[i3], 16);
                if (digit2 == -1) {
                    throw new IllegalArgumentException("Illegal hexadecimal character at index " + i3);
                }
                i = i3 + 1;
                bArr[i2] = (byte) (((digit << 4) | digit2) & 255);
                i2++;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }
}
