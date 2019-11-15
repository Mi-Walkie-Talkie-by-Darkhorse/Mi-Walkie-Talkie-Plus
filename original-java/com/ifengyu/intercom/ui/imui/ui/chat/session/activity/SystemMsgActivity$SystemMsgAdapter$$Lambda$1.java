package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.view.View;
import android.view.View.OnClickListener;
import com.ifengyu.im.imservice.model.MessageEntity;

final /* synthetic */ class SystemMsgActivity$SystemMsgAdapter$$Lambda$1 implements OnClickListener {
    private final SystemMsgAdapter arg$1;
    private final MessageEntity arg$2;

    SystemMsgActivity$SystemMsgAdapter$$Lambda$1(SystemMsgAdapter systemMsgAdapter, MessageEntity messageEntity) {
        this.arg$1 = systemMsgAdapter;
        this.arg$2 = messageEntity;
    }

    public void onClick(View view) {
        this.arg$1.lambda$bindData$1$SystemMsgActivity$SystemMsgAdapter(this.arg$2, view);
    }
}
