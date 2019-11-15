package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.DB.entity.UserEntity;

final /* synthetic */ class MessageFragment$$Lambda$1 implements OnClickListener {
    private final boolean arg$1;
    private final UserEntity arg$2;

    MessageFragment$$Lambda$1(boolean z, UserEntity userEntity) {
        this.arg$1 = z;
        this.arg$2 = userEntity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        MessageFragment.lambda$showUserInfoDialog$1$MessageFragment(this.arg$1, this.arg$2, dialogInterface, i);
    }
}
