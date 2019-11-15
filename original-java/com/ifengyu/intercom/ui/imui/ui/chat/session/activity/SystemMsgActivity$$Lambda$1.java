package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.protobuf.helper.MessageParseEngine;
import io.reactivex.b.g;

final /* synthetic */ class SystemMsgActivity$$Lambda$1 implements g {
    static final g $instance = new SystemMsgActivity$$Lambda$1();

    private SystemMsgActivity$$Lambda$1() {
    }

    public Object apply(Object obj) {
        return MessageParseEngine.parseGroupNotifyMsg((MessageEntity) obj);
    }
}
