package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final /* synthetic */ class c implements OnClickListener {
    private final BaseScanActivity a;

    c(BaseScanActivity baseScanActivity) {
        this.a = baseScanActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b(dialogInterface, i);
    }
}
