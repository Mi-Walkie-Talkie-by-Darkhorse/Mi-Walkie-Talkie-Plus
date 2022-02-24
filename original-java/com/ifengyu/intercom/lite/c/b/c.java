package com.ifengyu.intercom.lite.c.b;

import android.content.Context;

/* compiled from: EditChannelDialogBuilder.java */
/* loaded from: classes2.dex */
public class c extends b {
    private static final int[] C = {1, 2, 3, 4, 5, 6, 7, 8, 9, -1, 0, -1};
    private static final int[] D = {0, 1, 2, 3, 5, 6, 7, 8};
    private static final int[] E = {0, 2, 5, 7, 0, 2, 5, 7};
    private static final int[] F = {0, 5, 0, 5, 0, 5, 0, 5};

    public c(Context context) {
        super(context);
    }

    private boolean b(float f) {
        return f >= 409.75f && f <= 409.9875f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r1 == com.ifengyu.intercom.lite.c.b.c.F[r4]) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00be, code lost:
        if (r1 == com.ifengyu.intercom.lite.c.b.c.E[r4]) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cb, code lost:
        if (r1 == 7) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0108, code lost:
        if (r1 != 9) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012a, code lost:
        if (r2 <= 409.9f) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0132, code lost:
        if (r2 <= 440.0f) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0149, code lost:
        if (r2 > 440) goto L_0x0156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0150, code lost:
        if (r1 != 4) goto L_0x0156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0153, code lost:
        if (r1 == 4) goto L_0x0157;
     */
    @Override // com.ifengyu.intercom.lite.c.b.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean a(int r18, int[] r19, int r20) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.lite.c.b.c.a(int, int[], int):boolean");
    }

    @Override // com.ifengyu.intercom.lite.c.b.b
    protected void b(int i, int[] iArr, int i2) {
        if (i == 5) {
            e();
        }
    }

    @Override // com.ifengyu.intercom.lite.c.b.b
    protected void c(int i, int[] iArr, int i2) {
        if (i == 5) {
            e(F[a(E, iArr[5])]);
        }
    }

    private int a(int[] iArr, int i) {
        if (i == iArr[0]) {
            return 0;
        }
        if (i == iArr[1]) {
            return 1;
        }
        if (i == iArr[2]) {
            return 2;
        }
        if (i == iArr[3]) {
            return 3;
        }
        if (i == iArr[4]) {
            return 4;
        }
        if (i == iArr[5]) {
            return 5;
        }
        if (i == iArr[6]) {
            return 6;
        }
        return i == iArr[7] ? 7 : -1;
    }
}
