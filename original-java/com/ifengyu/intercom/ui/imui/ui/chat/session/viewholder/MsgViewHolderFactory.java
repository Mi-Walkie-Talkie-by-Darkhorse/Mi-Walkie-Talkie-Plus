package com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder;

import com.ifengyu.im.imservice.model.AudioAttachment;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.MsgAttachment;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MsgViewHolderFactory {
    public static final int BODY_TYPE_AUDIO = 2;
    public static final int BODY_TYPE_CUSTOM = 0;
    public static final int BODY_TYPE_TEXT = 1;
    public static final int BODY_TYPE_VIDEO = 3;
    private static Class<? extends MsgViewHolderBase> tipMsgViewHolder;
    private static HashMap<Class<? extends MsgAttachment>, Class<? extends MsgViewHolderBase>> viewHolders = new HashMap<>();

    static {
        register(AudioAttachment.class, MsgViewHolderAudio.class);
    }

    public static void register(Class<? extends MsgAttachment> cls, Class<? extends MsgViewHolderBase> cls2) {
        viewHolders.put(cls, cls2);
    }

    public static void registerTipMsgViewHolder(Class<? extends MsgViewHolderBase> cls) {
        tipMsgViewHolder = cls;
    }

    public static Class<? extends MsgViewHolderBase> getViewHolderByType(MessageEntity messageEntity) {
        switch (messageEntity.getMsgType()) {
            case 0:
                return MsgViewHolderNotification.class;
            case 1:
                return MsgViewHolderText.class;
            case 2:
                return MsgViewHolderAudio.class;
            case 3:
                return MsgViewHolderVideo.class;
            default:
                return MsgViewHolderText.class;
        }
    }

    public static List<Class<? extends MsgViewHolderBase>> getAllViewHolders() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(viewHolders.values());
        if (tipMsgViewHolder != null) {
            arrayList.add(tipMsgViewHolder);
        }
        arrayList.add(MsgViewHolderText.class);
        arrayList.add(MsgVIewHolderCustom.class);
        arrayList.add(MsgViewHolderNotification.class);
        return arrayList;
    }
}
