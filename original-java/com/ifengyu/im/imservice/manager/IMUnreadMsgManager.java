package com.ifengyu.im.imservice.manager;

import android.app.NotificationManager;
import android.text.TextUtils;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.imservice.entity.UnreadEntity;
import com.ifengyu.im.imservice.event.UnreadEvent;
import com.ifengyu.im.imservice.event.UnreadEvent.Event;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo;
import com.ifengyu.im.protobuf.IMMessage.IMMsgDataReadAck;
import com.ifengyu.im.protobuf.IMMessage.IMMsgDataReadNotify;
import com.ifengyu.im.protobuf.IMMessage.IMUnreadMsgCntReq;
import com.ifengyu.im.protobuf.IMMessage.IMUnreadMsgCntRsp;
import com.ifengyu.im.protobuf.helper.EntityChangeEngine;
import com.ifengyu.im.protobuf.helper.Java2ProtoBuf;
import com.ifengyu.im.protobuf.helper.ProtoBuf2JavaBean;
import com.ifengyu.im.utils.Logger;
import de.greenrobot.event.c;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class IMUnreadMsgManager extends IMManager {
    private static IMUnreadMsgManager inst = new IMUnreadMsgManager();
    private IMSocketManager imSocketManager = IMSocketManager.instance();
    private Logger logger = Logger.getLogger(IMUnreadMsgManager.class);
    private IMLoginManager loginManager = IMLoginManager.instance();
    private int totalUnreadCount = 0;
    private boolean unreadListReady = false;
    private ConcurrentHashMap<String, UnreadEntity> unreadMsgMap = new ConcurrentHashMap<>();

    public static IMUnreadMsgManager instance() {
        return inst;
    }

    public void doOnStart() {
    }

    public void onNormalLoginOk() {
        this.unreadMsgMap.clear();
    }

    public void onLocalNetOk() {
        this.unreadMsgMap.clear();
    }

    public void reset() {
        this.unreadListReady = false;
        this.unreadMsgMap.clear();
    }

    public synchronized void triggerEvent(UnreadEvent unreadEvent) {
        switch (unreadEvent.event) {
            case UNREAD_MSG_LIST_OK:
                this.unreadListReady = true;
                break;
        }
        c.a().e(unreadEvent);
    }

    private void reqUnreadMsgContactList() {
        this.logger.i("unread#1reqUnreadMsgContactList", new Object[0]);
        this.imSocketManager.sendRequest(IMUnreadMsgCntReq.newBuilder().setUserId(IMLoginManager.instance().getLoginId()).build(), 3, MessageCmdID.CID_MSG_UNREAD_CNT_REQUEST_VALUE);
    }

    public void onRepUnreadMsgContactList(IMUnreadMsgCntRsp iMUnreadMsgCntRsp) {
        this.logger.i("unread#2onRepUnreadMsgContactList", new Object[0]);
        this.totalUnreadCount = iMUnreadMsgCntRsp.getTotalCnt();
        List<UnreadInfo> unreadinfoListList = iMUnreadMsgCntRsp.getUnreadinfoListList();
        this.logger.i("unread#unreadMsgCnt:%d, unreadMsgInfoCnt:%d", Integer.valueOf(unreadinfoListList.size()), Integer.valueOf(this.totalUnreadCount));
        for (UnreadInfo unreadEntity : unreadinfoListList) {
            UnreadEntity unreadEntity2 = ProtoBuf2JavaBean.getUnreadEntity(unreadEntity);
            addIsForbidden(unreadEntity2);
            this.unreadMsgMap.put(unreadEntity2.getSessionKey(), unreadEntity2);
        }
        triggerEvent(new UnreadEvent(Event.UNREAD_MSG_LIST_OK));
    }

    private void addIsForbidden(UnreadEntity unreadEntity) {
        if (unreadEntity.getSessionType() == 2) {
            GroupEntity findGroup = IMGroupManager.instance().findGroup(unreadEntity.getPeerId());
            if (findGroup != null && findGroup.getStatus() == 1) {
                unreadEntity.setForbidden(true);
            }
        }
    }

    public void setForbidden(String str, boolean z) {
        UnreadEntity unreadEntity = (UnreadEntity) this.unreadMsgMap.get(str);
        if (unreadEntity != null) {
            unreadEntity.setForbidden(z);
        }
    }

    public void add(MessageEntity messageEntity) {
        UnreadEntity unreadEntity;
        boolean z = false;
        if (messageEntity == null) {
            this.logger.d("unread#unreadMgr#add msg is null!", new Object[0]);
            return;
        }
        this.logger.d("unread#unreadMgr#add unread msg:%s", messageEntity);
        int loginId = IMLoginManager.instance().getLoginId();
        String buildSessionKey = messageEntity.buildSessionKey();
        boolean isSend = messageEntity.isSend(String.valueOf(loginId));
        if (isSend) {
            IMNotificationManager.instance().cancelSessionNotifications(buildSessionKey);
            return;
        }
        if (this.unreadMsgMap.containsKey(buildSessionKey)) {
            unreadEntity = (UnreadEntity) this.unreadMsgMap.get(buildSessionKey);
            if (((long) unreadEntity.getLaststMsgId()) != messageEntity.getMsgId()) {
                unreadEntity.setUnReadCnt(unreadEntity.getUnReadCnt() + 1);
            } else {
                return;
            }
        } else {
            unreadEntity = new UnreadEntity();
            unreadEntity.setUnReadCnt(1);
            unreadEntity.setPeerId(Integer.parseInt(messageEntity.getPeerId(isSend)));
            unreadEntity.setSessionType(messageEntity.getSessionType());
            unreadEntity.buildSessionKey();
            z = true;
        }
        unreadEntity.setLatestMsgData(messageEntity.getMessageDisplay());
        unreadEntity.setLaststMsgId((int) messageEntity.getMsgId());
        addIsForbidden(unreadEntity);
        this.unreadMsgMap.put(unreadEntity.getSessionKey(), unreadEntity);
        if (!unreadEntity.isForbidden() || z) {
            UnreadEvent unreadEvent = new UnreadEvent();
            unreadEvent.event = Event.UNREAD_MSG_RECEIVED;
            unreadEvent.entity = unreadEntity;
            triggerEvent(unreadEvent);
        }
    }

    public void ackReadMsg(MessageEntity messageEntity) {
        this.logger.d("chat#ackReadMsg -> msg:%s", messageEntity);
        this.imSocketManager.sendRequest(IMMsgDataReadAck.newBuilder().setMsgId((int) messageEntity.getMsgId()).setSessionId(Integer.parseInt(messageEntity.getPeerId(false))).setSessionType(Java2ProtoBuf.getProtoSessionType(messageEntity.getSessionType())).setUserId(this.loginManager.getLoginId()).build(), 3, MessageCmdID.CID_MSG_READ_ACK_VALUE);
    }

    public void ackReadMsg(UnreadEntity unreadEntity) {
        this.logger.d("chat#ackReadMsg -> msg:%s", unreadEntity);
        this.imSocketManager.sendRequest(IMMsgDataReadAck.newBuilder().setMsgId(unreadEntity.getLaststMsgId()).setSessionId(unreadEntity.getPeerId()).setSessionType(Java2ProtoBuf.getProtoSessionType(unreadEntity.getSessionType())).setUserId(this.loginManager.getLoginId()).build(), 3, MessageCmdID.CID_MSG_READ_ACK_VALUE);
    }

    public void onNotifyRead(IMMsgDataReadNotify iMMsgDataReadNotify) {
        this.logger.d("chat#onNotifyRead", new Object[0]);
        int userId = iMMsgDataReadNotify.getUserId();
        int loginId = IMLoginManager.instance().getLoginId();
        if (userId != loginId) {
            this.logger.i("onNotifyRead# trigerId:%s,loginId:%s not Equal", Integer.valueOf(userId), Integer.valueOf(loginId));
            return;
        }
        int msgId = iMMsgDataReadNotify.getMsgId();
        String sessionKey = EntityChangeEngine.getSessionKey(iMMsgDataReadNotify.getSessionId(), ProtoBuf2JavaBean.getJavaSessionType(iMMsgDataReadNotify.getSessionType()));
        NotificationManager notificationManager = (NotificationManager) this.ctx.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(IMNotificationManager.instance().getSessionNotificationId(sessionKey));
            UnreadEntity findUnread = findUnread(sessionKey);
            if (findUnread != null && findUnread.getLaststMsgId() <= msgId) {
                this.logger.d("chat#onNotifyRead# unreadSession onLoginOut", new Object[0]);
                readUnreadSession(sessionKey);
            }
        }
    }

    public void readUnreadSession(String str) {
        this.logger.d("unread#readUnreadSession# sessionKey:%s", str);
        if (this.unreadMsgMap.containsKey(str)) {
            UnreadEntity unreadEntity = (UnreadEntity) this.unreadMsgMap.remove(str);
            triggerEvent(new UnreadEvent(Event.SESSION_READED_UNREAD_MSG));
        }
    }

    public UnreadEntity findUnread(String str) {
        this.logger.d("unread#findUnread# buddyId:%s", str);
        if (TextUtils.isEmpty(str) || this.unreadMsgMap.size() <= 0) {
            this.logger.i("unread#findUnread# no unread info", new Object[0]);
            return null;
        } else if (this.unreadMsgMap.containsKey(str)) {
            return (UnreadEntity) this.unreadMsgMap.get(str);
        } else {
            return null;
        }
    }

    public ConcurrentHashMap<String, UnreadEntity> getUnreadMsgMap() {
        return this.unreadMsgMap;
    }

    public int getTotalUnreadCount() {
        int i = 0;
        Iterator it = this.unreadMsgMap.values().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            UnreadEntity unreadEntity = (UnreadEntity) it.next();
            if (!unreadEntity.isForbidden()) {
                i = unreadEntity.getUnReadCnt() + i2;
            } else {
                i = i2;
            }
        }
    }

    public boolean isUnreadListReady() {
        return this.unreadListReady;
    }
}
