package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.DB.entity.GroupEntity;

final /* synthetic */ class GroupJoinActivity$$Lambda$1 implements OnClickListener {
    private final GroupJoinActivity arg$1;
    private final GroupEntity arg$2;

    GroupJoinActivity$$Lambda$1(GroupJoinActivity groupJoinActivity, GroupEntity groupEntity) {
        this.arg$1 = groupJoinActivity;
        this.arg$2 = groupEntity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.arg$1.lambda$showApplyJoinGroupDialog$1$GroupJoinActivity(this.arg$2, dialogInterface, i);
    }
}
