package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MessageListPanelEx.MessageLoader;
import io.reactivex.b.f;
import java.util.List;

final /* synthetic */ class MessageListPanelEx$MessageLoader$$Lambda$3 implements f {
    private final MessageLoader arg$1;

    MessageListPanelEx$MessageLoader$$Lambda$3(MessageLoader messageLoader) {
        this.arg$1 = messageLoader;
    }

    public void accept(Object obj) {
        this.arg$1.onMessageLoaded((List) obj);
    }
}
