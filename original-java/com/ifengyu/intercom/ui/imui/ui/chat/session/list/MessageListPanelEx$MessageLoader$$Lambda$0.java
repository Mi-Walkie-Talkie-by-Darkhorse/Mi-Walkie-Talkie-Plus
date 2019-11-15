package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MessageListPanelEx.MessageLoader;
import io.reactivex.b.g;

final /* synthetic */ class MessageListPanelEx$MessageLoader$$Lambda$0 implements g {
    static final g $instance = new MessageListPanelEx$MessageLoader$$Lambda$0();

    private MessageListPanelEx$MessageLoader$$Lambda$0() {
    }

    public Object apply(Object obj) {
        return MessageLoader.lambda$loadFromLocal$0$MessageListPanelEx$MessageLoader((MessageEntity) obj);
    }
}
