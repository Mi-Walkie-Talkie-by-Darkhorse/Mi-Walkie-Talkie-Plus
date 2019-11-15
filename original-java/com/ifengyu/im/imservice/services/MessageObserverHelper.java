package com.ifengyu.im.imservice.services;

import com.ifengyu.im.imservice.model.MessageEntity;
import java.util.ArrayList;
import java.util.List;

public class MessageObserverHelper {
    private static MessageObserverHelper sInstance;
    private final List<MessageObserver> mObservers = new ArrayList();

    public interface MessageObserver {
        void onInitSuccess();

        void onMessageDownloaded(MessageEntity messageEntity);

        void onMessageStatusChange(MessageEntity messageEntity);

        void onReceiveMessage(MessageEntity messageEntity);

        void onReceiveOldGroupMessage(List<MessageEntity> list);
    }

    private MessageObserverHelper() {
    }

    public static MessageObserverHelper getInstance() {
        if (sInstance == null) {
            sInstance = new MessageObserverHelper();
        }
        return sInstance;
    }

    public synchronized void registerObserver(MessageObserver messageObserver) {
        if (!this.mObservers.contains(messageObserver)) {
            this.mObservers.add(messageObserver);
        }
    }

    public synchronized void unregisterObserver(MessageObserver messageObserver) {
        if (this.mObservers.contains(messageObserver)) {
            this.mObservers.remove(messageObserver);
        }
    }

    public void notifyReceiveMessage(MessageEntity messageEntity) {
        for (MessageObserver onReceiveMessage : this.mObservers) {
            onReceiveMessage.onReceiveMessage(messageEntity);
        }
    }

    public void notifyReceiveOldGroupMessage(List<MessageEntity> list) {
        for (MessageObserver onReceiveOldGroupMessage : this.mObservers) {
            onReceiveOldGroupMessage.onReceiveOldGroupMessage(list);
        }
    }

    public void notifyInitSuccess() {
        for (MessageObserver onInitSuccess : this.mObservers) {
            onInitSuccess.onInitSuccess();
        }
    }

    public void notifyMessageStatusChange(MessageEntity messageEntity) {
        for (MessageObserver onMessageStatusChange : this.mObservers) {
            onMessageStatusChange.onMessageStatusChange(messageEntity);
        }
    }

    public void notifyMessageDownloaded(MessageEntity messageEntity) {
        for (MessageObserver onMessageDownloaded : this.mObservers) {
            onMessageDownloaded.onMessageDownloaded(messageEntity);
        }
    }
}
