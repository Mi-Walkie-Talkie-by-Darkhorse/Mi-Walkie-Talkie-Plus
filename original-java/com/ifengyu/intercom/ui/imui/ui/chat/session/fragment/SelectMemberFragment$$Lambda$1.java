package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.DB.entity.UserEntity;

final /* synthetic */ class SelectMemberFragment$$Lambda$1 implements OnClickListener {
    private final SelectMemberFragment arg$1;
    private final UserEntity arg$2;

    SelectMemberFragment$$Lambda$1(SelectMemberFragment selectMemberFragment, UserEntity userEntity) {
        this.arg$1 = selectMemberFragment;
        this.arg$2 = userEntity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.arg$1.lambda$showMakesureDialog$1$SelectMemberFragment(this.arg$2, dialogInterface, i);
    }
}
