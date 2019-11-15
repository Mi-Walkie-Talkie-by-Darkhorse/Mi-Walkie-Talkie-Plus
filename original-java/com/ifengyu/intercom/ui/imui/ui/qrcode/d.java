package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final /* synthetic */ class d implements OnClickListener {
    private final BaseScanActivity a;

    d(BaseScanActivity baseScanActivity) {
        this.a = baseScanActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(dialogInterface, i);
    }
}
