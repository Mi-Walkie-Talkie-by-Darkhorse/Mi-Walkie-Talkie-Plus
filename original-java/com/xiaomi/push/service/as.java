package com.xiaomi.push.service;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.string.a;

public class as {
    private static int a = 8;
    private byte[] b = new byte[256];
    private int c = 0;
    private int d = 0;
    private int e = -666;

    public static int a(byte b2) {
        return b2 >= 0 ? b2 : b2 + StreamUtil.MNS_ENCODE_NONE;
    }

    public static String a(byte[] bArr, String str) {
        return String.valueOf(a.a(a(bArr, str.getBytes())));
    }

    private void a(int i, byte[] bArr, boolean z) {
        int length = bArr.length;
        for (int i2 = 0; i2 < 256; i2++) {
            this.b[i2] = (byte) i2;
        }
        this.d = 0;
        this.c = 0;
        while (this.c < i) {
            this.d = ((this.d + a(this.b[this.c])) + a(bArr[this.c % length])) % 256;
            a(this.b, this.c, this.d);
            this.c++;
        }
        if (i != 256) {
            this.e = ((this.d + a(this.b[i])) + a(bArr[i % length])) % 256;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("S_").append(i - 1).append(":");
            for (int i3 = 0; i3 <= i; i3++) {
                sb.append(Token.SEPARATOR).append(a(this.b[i3]));
            }
            sb.append("   j_").append(i - 1).append("=").append(this.d);
            sb.append("   j_").append(i).append("=").append(this.e);
            sb.append("   S_").append(i - 1).append("[j_").append(i - 1).append("]=").append(a(this.b[this.d]));
            sb.append("   S_").append(i - 1).append("[j_").append(i).append("]=").append(a(this.b[this.e]));
            if (this.b[1] != 0) {
                sb.append("   S[1]!=0");
            }
            b.a(sb.toString());
        }
    }

    private void a(byte[] bArr) {
        a(256, bArr, false);
    }

    private static void a(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b2;
    }

    public static byte[] a(String str, String str2) {
        byte[] a2 = a.a(str);
        byte[] bytes = str2.getBytes();
        byte[] bArr = new byte[(a2.length + 1 + bytes.length)];
        for (int i = 0; i < a2.length; i++) {
            bArr[i] = a2[i];
        }
        bArr[a2.length] = 95;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            bArr[a2.length + 1 + i2] = bytes[i2];
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr2.length];
        as asVar = new as();
        asVar.a(bArr);
        asVar.b();
        for (int i = 0; i < bArr2.length; i++) {
            bArr3[i] = (byte) (bArr2[i] ^ asVar.a());
        }
        return bArr3;
    }

    private void b() {
        this.d = 0;
        this.c = 0;
    }

    public static byte[] b(byte[] bArr, String str) {
        return a(bArr, a.a(str));
    }

    /* access modifiers changed from: 0000 */
    public byte a() {
        this.c = (this.c + 1) % 256;
        this.d = (this.d + a(this.b[this.c])) % 256;
        a(this.b, this.c, this.d);
        return this.b[(a(this.b[this.c]) + a(this.b[this.d])) % 256];
    }
}
