package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import com.ifengyu.im.imservice.model.MessageEntity;
import java.util.Comparator;

final /* synthetic */ class MessageListPanelEx$$Lambda$1 implements Comparator {
    static final Comparator $instance = new MessageListPanelEx$$Lambda$1();

    private MessageListPanelEx$$Lambda$1() {
    }

    public int compare(Object obj, Object obj2) {
        return MessageListPanelEx.lambda$static$1$MessageListPanelEx((MessageEntity) obj, (MessageEntity) obj2);
    }
}
