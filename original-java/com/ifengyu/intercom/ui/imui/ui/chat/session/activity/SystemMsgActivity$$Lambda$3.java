package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import io.reactivex.b.f;
import java.util.List;

final /* synthetic */ class SystemMsgActivity$$Lambda$3 implements f {
    private final SystemMsgAdapter arg$1;

    private SystemMsgActivity$$Lambda$3(SystemMsgAdapter systemMsgAdapter) {
        this.arg$1 = systemMsgAdapter;
    }

    static f get$Lambda(SystemMsgAdapter systemMsgAdapter) {
        return new SystemMsgActivity$$Lambda$3(systemMsgAdapter);
    }

    public void accept(Object obj) {
        this.arg$1.setNewData((List) obj);
    }
}
