package com.ifengyu.intercom.b;

import android.os.ParcelUuid;
import android.support.annotation.Nullable;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: MyScanRecord */
public final class x {
    private final int a;
    @Nullable
    private final List<ParcelUuid> b;
    private final SparseArray<byte[]> c;
    private final int d;
    private final Map<ParcelUuid, byte[]> e;
    private final int f;
    private final String g;
    private final byte[] h;

    /* compiled from: MyScanRecord */
    public static final class a {
        public static final ParcelUuid a = ParcelUuid.fromString("0000110B-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid b = ParcelUuid.fromString("0000110A-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid c = ParcelUuid.fromString("0000110D-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid d = ParcelUuid.fromString("00001108-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid e = ParcelUuid.fromString("00001112-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid f = ParcelUuid.fromString("0000111E-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid g = ParcelUuid.fromString("0000111F-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid h = ParcelUuid.fromString("0000110E-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid i = ParcelUuid.fromString("0000110C-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid j = ParcelUuid.fromString("00001105-0000-1000-8000-00805f9b34fb");
        public static final ParcelUuid k = ParcelUuid.fromString("00001124-0000-1000-8000-00805f9b34fb");
        public static final ParcelUuid l = ParcelUuid.fromString("00001812-0000-1000-8000-00805f9b34fb");
        public static final ParcelUuid m = ParcelUuid.fromString("00001115-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid n = ParcelUuid.fromString("00001116-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid o = ParcelUuid.fromString("0000000f-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid p = ParcelUuid.fromString("0000112f-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid q = ParcelUuid.fromString("00001134-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid r = ParcelUuid.fromString("00001133-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid s = ParcelUuid.fromString("00001132-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid t = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
        public static final ParcelUuid[] u = {a, b, c, d, f, h, i, j, m, n, q, r, s};

        public static ParcelUuid a(byte[] bArr) {
            long j2;
            if (bArr == null) {
                throw new IllegalArgumentException("uuidBytes cannot be null");
            }
            int length = bArr.length;
            if (length != 2 && length != 4 && length != 16) {
                throw new IllegalArgumentException("uuidBytes length invalid - " + length);
            } else if (length == 16) {
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(order.getLong(8), order.getLong(0)));
            } else {
                if (length == 2) {
                    j2 = ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8));
                } else {
                    j2 = ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8)) + ((long) ((bArr[2] & 255) << Tnaf.POW_2_WIDTH)) + ((long) ((bArr[3] & 255) << 24));
                }
                return new ParcelUuid(new UUID(t.getUuid().getMostSignificantBits() + (j2 << 32), t.getUuid().getLeastSignificantBits()));
            }
        }
    }

    public List<ParcelUuid> a() {
        return this.b;
    }

    @Nullable
    public String b() {
        return this.g;
    }

    public int c() {
        return this.d;
    }

    private x(List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, int i, int i2, String str, int i3, byte[] bArr) {
        this.b = list;
        this.c = sparseArray;
        this.e = map;
        this.g = str;
        this.d = i3;
        this.a = i;
        this.f = i2;
        this.h = bArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002a A[Catch:{ Exception -> 0x0032 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.ifengyu.intercom.b.x a(byte[] r12) {
        /*
            if (r12 != 0) goto L_0x0004
            r0 = 0
        L_0x0003:
            return r0
        L_0x0004:
            r0 = 0
            r4 = -1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r6 = 0
            r7 = 1
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            android.util.SparseArray r2 = new android.util.SparseArray
            r2.<init>()
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
        L_0x0019:
            int r8 = r12.length     // Catch:{ Exception -> 0x0032 }
            if (r0 >= r8) goto L_0x0024
            int r8 = r0 + 1
            byte r0 = r12[r0]     // Catch:{ Exception -> 0x0032 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 != 0) goto L_0x0045
        L_0x0024:
            boolean r0 = r1.isEmpty()     // Catch:{ Exception -> 0x0032 }
            if (r0 == 0) goto L_0x002b
            r1 = 0
        L_0x002b:
            com.ifengyu.intercom.b.x r0 = new com.ifengyu.intercom.b.x     // Catch:{ Exception -> 0x0032 }
            r8 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0003
        L_0x0032:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            com.ifengyu.intercom.b.x r0 = new com.ifengyu.intercom.b.x
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = -1
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 0
            r7 = 1
            r8 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x0003
        L_0x0045:
            int r0 = r0 + -1
            int r9 = r8 + 1
            byte r8 = r12[r8]     // Catch:{ Exception -> 0x0032 }
            r8 = r8 & 255(0xff, float:3.57E-43)
            switch(r8) {
                case 1: goto L_0x0052;
                case 2: goto L_0x0057;
                case 3: goto L_0x0057;
                case 4: goto L_0x005c;
                case 5: goto L_0x005c;
                case 6: goto L_0x0061;
                case 7: goto L_0x0061;
                case 8: goto L_0x0067;
                case 9: goto L_0x0067;
                case 10: goto L_0x0071;
                case 22: goto L_0x0074;
                case 255: goto L_0x0089;
                default: goto L_0x0050;
            }     // Catch:{ Exception -> 0x0032 }
        L_0x0050:
            int r0 = r0 + r9
            goto L_0x0019
        L_0x0052:
            byte r4 = r12[r9]     // Catch:{ Exception -> 0x0032 }
            r4 = r4 & 255(0xff, float:3.57E-43)
            goto L_0x0050
        L_0x0057:
            r8 = 2
            a(r12, r9, r0, r8, r1)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x005c:
            r8 = 4
            a(r12, r9, r0, r8, r1)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x0061:
            r8 = 16
            a(r12, r9, r0, r8, r1)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x0067:
            java.lang.String r6 = new java.lang.String     // Catch:{ Exception -> 0x0032 }
            byte[] r8 = a(r12, r9, r0)     // Catch:{ Exception -> 0x0032 }
            r6.<init>(r8)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x0071:
            byte r5 = r12[r9]     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x0074:
            r8 = 2
            byte[] r10 = a(r12, r9, r8)     // Catch:{ Exception -> 0x0032 }
            android.os.ParcelUuid r10 = com.ifengyu.intercom.b.x.a.a(r10)     // Catch:{ Exception -> 0x0032 }
            int r11 = r9 + r8
            int r8 = r0 - r8
            byte[] r8 = a(r12, r11, r8)     // Catch:{ Exception -> 0x0032 }
            r3.put(r10, r8)     // Catch:{ Exception -> 0x0032 }
            goto L_0x0050
        L_0x0089:
            byte[] r8 = a(r12, r9, r0)     // Catch:{ Exception -> 0x0032 }
            java.lang.String r8 = com.ifengyu.intercom.node.transport.b.a(r8)     // Catch:{ Exception -> 0x0032 }
            java.lang.String r8 = r8.trim()     // Catch:{ Exception -> 0x0032 }
            java.lang.String r10 = "04 00"
            boolean r10 = r8.equals(r10)     // Catch:{ Exception -> 0x0032 }
            if (r10 == 0) goto L_0x009f
            r7 = 4
            goto L_0x0050
        L_0x009f:
            java.lang.String r10 = "05 00"
            boolean r10 = r8.equals(r10)     // Catch:{ Exception -> 0x0032 }
            if (r10 == 0) goto L_0x00a9
            r7 = 5
            goto L_0x0050
        L_0x00a9:
            java.lang.String r10 = "06 00"
            boolean r8 = r8.equals(r10)     // Catch:{ Exception -> 0x0032 }
            if (r8 == 0) goto L_0x0050
            r7 = 6
            goto L_0x0050
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.x.a(byte[]):com.ifengyu.intercom.b.x");
    }

    private static int a(byte[] bArr, int i, int i2, int i3, List<ParcelUuid> list) {
        while (i2 > 0) {
            list.add(a.a(a(bArr, i, i3)));
            i2 -= i3;
            i += i3;
        }
        return i;
    }

    private static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }
}
