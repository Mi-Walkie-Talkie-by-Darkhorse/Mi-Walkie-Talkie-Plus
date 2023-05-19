package com.ifengyu.intercom.p216ui.widget.frequency;

import com.ifengyu.intercom.p216ui.widget.frequency.ChannelKeyboard;

/* renamed from: com.ifengyu.intercom.ui.widget.frequency.d */
/* loaded from: classes2.dex */
public class Mi3KeyInterceptor implements ChannelKeyboard.InterfaceC4940c {
    @Override // com.ifengyu.intercom.p216ui.widget.frequency.ChannelKeyboard.InterfaceC4940c
    /* renamed from: a */
    public void mo8878a(int i, int[] iArr, int i2) {
    }

    @Override // com.ifengyu.intercom.p216ui.widget.frequency.ChannelKeyboard.InterfaceC4940c
    /* renamed from: b */
    public boolean mo8877b(int i, int[] iArr, int i2) {
        if (i2 >= 10) {
            return i2 == 10 || i2 != 11 || i > 2;
        }
        switch (i) {
            case 0:
                return i2 == 4;
            case 1:
                int i3 = (iArr[0] * 10) + i2;
                return i3 >= 43 && i3 <= 44;
            case 2:
                int i4 = (iArr[0] * 100) + (iArr[1] * 10) + i2;
                return i4 >= 430 && i4 <= 440;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return ((iArr[0] * 100) + (iArr[1] * 10)) + iArr[2] != 440 || i2 == 0;
            default:
                return true;
        }
    }
}
