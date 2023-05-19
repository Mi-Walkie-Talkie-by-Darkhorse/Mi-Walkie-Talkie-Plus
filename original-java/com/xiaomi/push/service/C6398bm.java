package com.xiaomi.push.service;

import com.huawei.hms.framework.common.ContainerUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6020bl;

/* renamed from: com.xiaomi.push.service.bm */
/* loaded from: classes2.dex */
public class C6398bm {

    /* renamed from: a */
    private static int f23108a = 8;

    /* renamed from: d */
    private int f23112d = -666;

    /* renamed from: a */
    private byte[] f23109a = new byte[256];

    /* renamed from: c */
    private int f23111c = 0;

    /* renamed from: b */
    private int f23110b = 0;

    /* renamed from: a */
    public static int m1463a(byte b) {
        return b >= 0 ? b : b + 256;
    }

    /* renamed from: a */
    private void m1464a() {
        this.f23111c = 0;
        this.f23110b = 0;
    }

    /* renamed from: a */
    private void m1462a(int i, byte[] bArr, boolean z) {
        int length = bArr.length;
        for (int i2 = 0; i2 < 256; i2++) {
            this.f23109a[i2] = (byte) i2;
        }
        this.f23111c = 0;
        this.f23110b = 0;
        while (true) {
            int i3 = this.f23110b;
            if (i3 >= i) {
                break;
            }
            int m1463a = ((this.f23111c + m1463a(this.f23109a[i3])) + m1463a(bArr[this.f23110b % length])) % 256;
            this.f23111c = m1463a;
            m1459a(this.f23109a, this.f23110b, m1463a);
            this.f23110b++;
        }
        if (i != 256) {
            this.f23112d = ((this.f23111c + m1463a(this.f23109a[i])) + m1463a(bArr[i % length])) % 256;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("S_");
            int i4 = i - 1;
            sb.append(i4);
            sb.append(Constants.COLON_SEPARATOR);
            for (int i5 = 0; i5 <= i; i5++) {
                sb.append(" ");
                sb.append(m1463a(this.f23109a[i5]));
            }
            sb.append("   j_");
            sb.append(i4);
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(this.f23111c);
            sb.append("   j_");
            sb.append(i);
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(this.f23112d);
            sb.append("   S_");
            sb.append(i4);
            sb.append("[j_");
            sb.append(i4);
            sb.append("]=");
            sb.append(m1463a(this.f23109a[this.f23111c]));
            sb.append("   S_");
            sb.append(i4);
            sb.append("[j_");
            sb.append(i);
            sb.append("]=");
            sb.append(m1463a(this.f23109a[this.f23112d]));
            if (this.f23109a[1] != 0) {
                sb.append("   S[1]!=0");
            }
            AbstractC5876b.m4147a(sb.toString());
        }
    }

    /* renamed from: a */
    private void m1460a(byte[] bArr) {
        m1462a(256, bArr, false);
    }

    /* renamed from: a */
    private static void m1459a(byte[] bArr, int i, int i2) {
        byte b = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b;
    }

    /* renamed from: a */
    public static byte[] m1461a(String str, String str2) {
        byte[] m3632a = C6020bl.m3632a(str);
        byte[] bytes = str2.getBytes();
        byte[] bArr = new byte[m3632a.length + 1 + bytes.length];
        for (int i = 0; i < m3632a.length; i++) {
            bArr[i] = m3632a[i];
        }
        bArr[m3632a.length] = 95;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            bArr[m3632a.length + 1 + i2] = bytes[i2];
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m1458a(byte[] bArr, String str) {
        return m1457a(bArr, C6020bl.m3632a(str));
    }

    /* renamed from: a */
    public static byte[] m1457a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr2.length];
        C6398bm c6398bm = new C6398bm();
        c6398bm.m1460a(bArr);
        c6398bm.m1464a();
        for (int i = 0; i < bArr2.length; i++) {
            bArr3[i] = (byte) (bArr2[i] ^ c6398bm.m1465a());
        }
        return bArr3;
    }

    /* renamed from: a */
    public static byte[] m1456a(byte[] bArr, byte[] bArr2, boolean z, int i, int i2) {
        byte[] bArr3;
        int i3;
        if (i < 0 || i > bArr2.length || i + i2 > bArr2.length) {
            throw new IllegalArgumentException("start = " + i + " len = " + i2);
        }
        if (z) {
            bArr3 = bArr2;
            i3 = i;
        } else {
            bArr3 = new byte[i2];
            i3 = 0;
        }
        C6398bm c6398bm = new C6398bm();
        c6398bm.m1460a(bArr);
        c6398bm.m1464a();
        for (int i4 = 0; i4 < i2; i4++) {
            bArr3[i3 + i4] = (byte) (bArr2[i + i4] ^ c6398bm.m1465a());
        }
        return bArr3;
    }

    /* renamed from: a */
    byte m1465a() {
        int i = (this.f23110b + 1) % 256;
        this.f23110b = i;
        int m1463a = (this.f23111c + m1463a(this.f23109a[i])) % 256;
        this.f23111c = m1463a;
        m1459a(this.f23109a, this.f23110b, m1463a);
        byte[] bArr = this.f23109a;
        return bArr[(m1463a(bArr[this.f23110b]) + m1463a(this.f23109a[this.f23111c])) % 256];
    }
}
