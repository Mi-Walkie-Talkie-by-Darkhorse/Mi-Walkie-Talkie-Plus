package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MessageListPanelEx.MessageLoader;
import java.util.concurrent.Callable;

final /* synthetic */ class MessageListPanelEx$MessageLoader$$Lambda$1 implements Callable {
    private final MessageLoader arg$1;
    private final long arg$2;

    MessageListPanelEx$MessageLoader$$Lambda$1(MessageLoader messageLoader, long j) {
        this.arg$1 = messageLoader;
        this.arg$2 = j;
    }

    public Object call() {
        return this.arg$1.lambda$loadFromLocal$1$MessageListPanelEx$MessageLoader(this.arg$2);
    }
}
