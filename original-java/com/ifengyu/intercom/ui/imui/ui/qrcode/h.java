package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.graphics.Bitmap;
import io.reactivex.b.f;

final /* synthetic */ class h implements f {
    private final SelfQRCodeActivity a;

    h(SelfQRCodeActivity selfQRCodeActivity) {
        this.a = selfQRCodeActivity;
    }

    public void accept(Object obj) {
        this.a.a((Bitmap) obj);
    }
}
