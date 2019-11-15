package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder.MsgViewHolderBase;
import com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder.MsgViewHolderFactory;
import com.ifengyu.library.widget.recyclerview.adapter.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MsgAdapter extends a<MessageEntity, com.ifengyu.library.widget.recyclerview.d.a> {
    private static final long DISPLAY_MSG_TIME_WITH_INTERVAL = 300000;
    private ViewHolderEventListener eventListener;
    private Map<Class<? extends MsgViewHolderBase>, Integer> holder2ViewType = new HashMap();
    private MessageEntity lastShowTimeItem;
    private Container mContainer;
    private String messageId;
    private Map<String, Float> progresses = new HashMap();
    private Set<String> timedItems = new HashSet();

    public interface ViewHolderEventListener {
        void onAvatarClick(Context context, MessageEntity messageEntity);

        void onFailedBtnClick(MessageEntity messageEntity);

        void onFooterClick(MessageEntity messageEntity);

        boolean onViewHolderLongClick(View view, View view2, MessageEntity messageEntity);
    }

    public MsgAdapter(RecyclerView recyclerView, List<MessageEntity> list, Container container) {
        super(recyclerView, list);
        int i = 0;
        for (Class cls : MsgViewHolderFactory.getAllViewHolders()) {
            i++;
            addItemType(i, R.layout.im_message_item, cls);
            this.holder2ViewType.put(cls, Integer.valueOf(i));
        }
        this.mContainer = container;
    }

    /* access modifiers changed from: protected */
    public int getViewType(MessageEntity messageEntity) {
        return ((Integer) this.holder2ViewType.get(MsgViewHolderFactory.getViewHolderByType(messageEntity))).intValue();
    }

    /* access modifiers changed from: protected */
    public String getItemKey(MessageEntity messageEntity) {
        return String.valueOf(messageEntity.getMsgId());
    }

    public void setEventListener(ViewHolderEventListener viewHolderEventListener) {
        this.eventListener = viewHolderEventListener;
    }

    public ViewHolderEventListener getEventListener() {
        return this.eventListener;
    }

    public void deleteItem(MessageEntity messageEntity, boolean z) {
        int i;
        if (messageEntity != null) {
            int i2 = 0;
            Iterator it = getData().iterator();
            while (true) {
                i = i2;
                if (it.hasNext() && !((MessageEntity) it.next()).isTheSame(messageEntity)) {
                    i2 = i + 1;
                }
            }
            if (i < getDataSize()) {
                remove(i);
                if (z) {
                    relocateShowTimeItemAfterDelete(messageEntity, i);
                }
                notifyDataSetChanged();
            }
        }
    }

    private void setShowTime(MessageEntity messageEntity, boolean z) {
        if (z) {
            this.timedItems.add(String.valueOf(messageEntity.getMsgId()));
        } else {
            this.timedItems.remove(String.valueOf(messageEntity.getMsgId()));
        }
    }

    private void relocateShowTimeItemAfterDelete(MessageEntity messageEntity, int i) {
        MessageEntity messageEntity2;
        if (needShowTime(messageEntity)) {
            setShowTime(messageEntity, false);
            if (getDataSize() > 0) {
                if (i == getDataSize()) {
                    messageEntity2 = (MessageEntity) getItem(i - 1);
                } else {
                    messageEntity2 = (MessageEntity) getItem(i);
                }
                if (hideTimeAlways(messageEntity2)) {
                    setShowTime(messageEntity2, false);
                    if (this.lastShowTimeItem != null && this.lastShowTimeItem != null && this.lastShowTimeItem.isTheSame(messageEntity)) {
                        this.lastShowTimeItem = null;
                        for (int dataSize = getDataSize() - 1; dataSize >= 0; dataSize--) {
                            MessageEntity messageEntity3 = (MessageEntity) getItem(dataSize);
                            if (needShowTime(messageEntity3)) {
                                this.lastShowTimeItem = messageEntity3;
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                setShowTime(messageEntity2, true);
                if (this.lastShowTimeItem == null || (this.lastShowTimeItem != null && this.lastShowTimeItem.isTheSame(messageEntity))) {
                    this.lastShowTimeItem = messageEntity2;
                    return;
                }
                return;
            }
            this.lastShowTimeItem = null;
        }
    }

    private boolean hideTimeAlways(MessageEntity messageEntity) {
        if (messageEntity.getSessionType() == 2) {
            return true;
        }
        switch (messageEntity.getMsgType()) {
            case 7:
                return true;
            default:
                return false;
        }
    }

    public boolean needShowTime(MessageEntity messageEntity) {
        return this.timedItems.contains(String.valueOf(messageEntity.getMsgId()));
    }

    public void updateShowTimeItem(List<MessageEntity> list, boolean z, boolean z2) {
        MessageEntity messageEntity;
        MessageEntity messageEntity2 = z ? null : this.lastShowTimeItem;
        Iterator it = list.iterator();
        while (true) {
            messageEntity = messageEntity2;
            if (!it.hasNext()) {
                break;
            }
            messageEntity2 = (MessageEntity) it.next();
            if (!setShowTimeFlag(messageEntity2, messageEntity)) {
                messageEntity2 = messageEntity;
            }
        }
        if (z2) {
            this.lastShowTimeItem = messageEntity;
        }
    }

    private boolean setShowTimeFlag(MessageEntity messageEntity, MessageEntity messageEntity2) {
        if (hideTimeAlways(messageEntity)) {
            setShowTime(messageEntity, false);
            return false;
        } else if (messageEntity2 == null) {
            setShowTime(messageEntity, true);
            return true;
        } else {
            long time = messageEntity2.getTime();
            long time2 = messageEntity.getTime();
            if (time2 - time == 0) {
                setShowTime(messageEntity, true);
                this.lastShowTimeItem = messageEntity;
                return true;
            } else if (time2 - time < DISPLAY_MSG_TIME_WITH_INTERVAL) {
                setShowTime(messageEntity, false);
                return false;
            } else {
                setShowTime(messageEntity, true);
                return true;
            }
        }
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public Container getContainer() {
        return this.mContainer;
    }
}
