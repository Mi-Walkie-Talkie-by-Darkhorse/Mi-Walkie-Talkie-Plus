package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.DB.entity.GroupEntity;

final /* synthetic */ class e implements OnClickListener {
    private final BaseScanActivity a;
    private final GroupEntity b;

    e(BaseScanActivity baseScanActivity, GroupEntity groupEntity) {
        this.a = baseScanActivity;
        this.b = groupEntity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(this.b, dialogInterface, i);
    }
}
