package com.ifengyu.intercom.p205m.p207b;

import android.content.Context;

/* renamed from: com.ifengyu.intercom.m.b.d */
/* loaded from: classes2.dex */
public class EditChannelDialogBuilder extends ChannelDialogBuilder {

    /* renamed from: D */
    private static final int[] f14352D = {1, 2, 3, 4, 5, 6, 7, 8, 9, -1, 0, -1};

    /* renamed from: E */
    private static final int[] f14353E = {0, 1, 2, 3, 5, 6, 7, 8};

    /* renamed from: F */
    private static final int[] f14354F = {0, 2, 5, 7, 0, 2, 5, 7};

    /* renamed from: G */
    private static final int[] f14355G = {0, 5, 0, 5, 0, 5, 0, 5};

    public EditChannelDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: R */
    private int m11437R(int[] iArr, int i) {
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

    /* renamed from: S */
    private boolean m11436S(float f) {
        return f >= 409.75f && f <= 409.9875f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r1 == com.ifengyu.intercom.p205m.p207b.EditChannelDialogBuilder.f14355G[r4]) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00be, code lost:
        if (r1 == com.ifengyu.intercom.p205m.p207b.EditChannelDialogBuilder.f14354F[r4]) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cb, code lost:
        if (r1 == 7) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0108, code lost:
        if (r1 != 9) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x012a, code lost:
        if (r2 <= 409.9f) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0132, code lost:
        if (r2 <= 440.0f) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0149, code lost:
        if (r2 > 440) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0150, code lost:
        if (r1 != 4) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0153, code lost:
        if (r1 == 4) goto L13;
     */
    @Override // com.ifengyu.intercom.p205m.p207b.ChannelDialogBuilder
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean mo11440L(int i, int[] iArr, int i2) {
        boolean z;
        int i3 = f14352D[i2];
        boolean z2 = true;
        switch (i) {
            case 0:
                break;
            case 1:
                if (i3 != 0) {
                    if (i3 != 3) {
                    }
                }
                return z2;
            case 2:
                int i4 = (iArr[0] * 100) + (iArr[1] * 10) + i3;
                if (i4 != 409) {
                    if (i4 >= 430) {
                        break;
                    }
                    z2 = false;
                }
                return z2;
            case 3:
                float f = (iArr[0] * 100) + (iArr[1] * 10) + iArr[2] + (i3 * 0.1f);
                if (f >= 409.7f) {
                    break;
                }
                if (f >= 430.0f) {
                    break;
                }
                z2 = false;
                return z2;
            case 4:
                float f2 = (iArr[0] * 100) + (iArr[1] * 10) + iArr[2] + (iArr[3] * 0.1f) + (i3 * 0.01f);
                z = (f2 >= 409.75f && f2 <= 409.98f) || (f2 >= 430.0f && f2 <= 440.0f);
                if (m11436S(f2)) {
                    if (z) {
                        if (i3 != 4) {
                            break;
                        }
                    }
                    z2 = false;
                    return z2;
                }
                return z;
            case 5:
                float f3 = (iArr[0] * 100) + (iArr[1] * 10) + iArr[2] + (iArr[3] * 0.1f) + (iArr[4] * 0.01f) + (i3 * 0.001f);
                z = (f3 >= 409.75f && f3 <= 409.987f) || (f3 >= 430.0f && f3 <= 440.0f);
                if (m11436S(f3)) {
                    int m11437R = m11437R(f14353E, iArr[4]);
                    if (m11437R != -1) {
                        if (z) {
                            break;
                        }
                        z2 = false;
                    }
                    return z;
                }
                if (z) {
                    if (i3 != 0) {
                        if (i3 != 2) {
                            if (i3 != 5) {
                                break;
                            }
                        }
                    }
                }
                z2 = false;
                return z2;
            case 6:
                float f4 = (iArr[0] * 100) + (iArr[1] * 10) + iArr[2] + (iArr[3] * 0.1f) + (iArr[4] * 0.01f) + (iArr[5] * 0.001f) + (i3 * 1.0E-4f);
                z = (f4 >= 409.75f && f4 <= 409.9875f) || (f4 >= 430.0f && f4 <= 440.0f);
                int m11437R2 = m11437R(f14354F, iArr[5]);
                if (m11437R2 != -1) {
                    if (z) {
                        break;
                    }
                    z2 = false;
                    return z2;
                }
                return z;
            default:
                return false;
        }
    }

    @Override // com.ifengyu.intercom.p205m.p207b.ChannelDialogBuilder
    /* renamed from: M */
    protected void mo11439M(int i, int[] iArr, int i2) {
        if (i == 5) {
            m11449H();
        }
    }

    @Override // com.ifengyu.intercom.p205m.p207b.ChannelDialogBuilder
    /* renamed from: N */
    protected void mo11438N(int i, int[] iArr, int i2) {
        if (i == 5) {
            m11444P(f14355G[m11437R(f14354F, iArr[5])]);
        }
    }
}
