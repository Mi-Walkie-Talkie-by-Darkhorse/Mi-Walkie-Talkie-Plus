package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import android.content.Context;
import com.ifengyu.im.imservice.model.MessageEntity;

public interface ModuleProxy {
    void onAvatarClick(Context context, MessageEntity messageEntity);

    void onInputPanelExpand();

    void shouldCollapseInputPanel();
}
