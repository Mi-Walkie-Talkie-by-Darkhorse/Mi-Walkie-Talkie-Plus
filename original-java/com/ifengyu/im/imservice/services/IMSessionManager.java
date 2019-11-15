package com.ifengyu.im.imservice.services;

import android.text.TextUtils;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.DB.sp.ConfigurationSp;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.im.imservice.entity.UnreadEntity;
import com.ifengyu.im.imservice.event.SessionEvent;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMManager;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.SessionEntity;
import com.ifengyu.im.utils.Logger;
import de.greenrobot.event.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class IMSessionManager extends IMManager {
    private IMGroupManager groupManager = IMGroupManager.instance();
    private Logger logger = Logger.getLogger(IMSessionManager.class);
    private DBInterface mDBInterface = DBInterface.instance();
    private IMLoginManager mIMLoginManager = IMLoginManager.instance();
    private boolean sessionListReady = false;
    private Map<String, SessionEntity> sessionMap = new ConcurrentHashMap();

    public static class Holder {
        public static final IMSessionManager INSTANCE = new IMSessionManager();
    }

    public static IMSessionManager instance() {
        return Holder.INSTANCE;
    }

    public void doOnStart() {
    }

    public void reset() {
        this.sessionListReady = false;
        this.sessionMap.clear();
    }

    public void triggerEvent(SessionEvent sessionEvent) {
        switch (sessionEvent) {
            case RECENT_SESSION_LIST_SUCCESS:
                this.sessionListReady = true;
                break;
        }
        c.a().e(sessionEvent);
    }

    public void onNormalLoginOk() {
        this.logger.d("recent#onLogin Successful", new Object[0]);
        onLocalLoginOk();
        onLocalNetOk();
    }

    public void onLocalLoginOk() {
        this.logger.i("session#loadFromDb", new Object[0]);
        for (SessionEntity sessionEntity : this.mDBInterface.loadAllSession()) {
            this.sessionMap.put(sessionEntity.getSessionKey(), sessionEntity);
        }
        triggerEvent(SessionEvent.RECENT_SESSION_LIST_SUCCESS);
    }

    public void onLocalNetOk() {
    }

    public void reqRemoveSession(RecentInfo recentInfo) {
        this.logger.i("session#reqRemoveSession", new Object[0]);
        removeSession(recentInfo.getSessionKey());
    }

    public void removeSession(String str) {
        int loginId = this.mIMLoginManager.getLoginId();
        if (this.sessionMap.containsKey(str)) {
            this.sessionMap.remove(str);
            IMUnreadMsgManager.instance().readUnreadSession(str);
            this.mDBInterface.deleteSession(str);
            ConfigurationSp.instance(this.ctx, loginId).setSessionTop(str, false);
            triggerEvent(SessionEvent.RECENT_SESSION_LIST_UPDATE);
        }
    }

    public List<SessionEntity> getRecentSessionList() {
        return new ArrayList(this.sessionMap.values());
    }

    private static void sort(List<RecentInfo> list) {
        Collections.sort(list, IMSessionManager$$Lambda$0.$instance);
    }

    static final /* synthetic */ int lambda$sort$0$IMSessionManager(RecentInfo recentInfo, RecentInfo recentInfo2) {
        boolean isTalk = recentInfo.isTalk();
        if (isTalk == recentInfo2.isTalk()) {
            boolean isTop = recentInfo.isTop();
            if (isTop == recentInfo2.isTop()) {
                return Long.valueOf(recentInfo2.getUpdateTime()).compareTo(Long.valueOf(recentInfo.getUpdateTime()));
            } else if (!isTop) {
                return 1;
            } else {
                return -1;
            }
        } else if (!isTalk) {
            return 1;
        } else {
            return -1;
        }
    }

    public List<RecentInfo> getRecentListInfo() {
        ArrayList arrayList = new ArrayList();
        int loginId = IMLoginManager.instance().getLoginId();
        List<SessionEntity> recentSessionList = getRecentSessionList();
        Map userMap = IMContactManager.instance().getUserMap();
        ConcurrentHashMap unreadMsgMap = IMUnreadMsgManager.instance().getUnreadMsgMap();
        Map groupMap = IMGroupManager.instance().getGroupMap();
        HashSet sessionTopList = ConfigurationSp.instance(this.ctx, loginId).getSessionTopList();
        String sessionTalk = ConfigurationSp.instance(this.ctx, loginId).getSessionTalk();
        for (SessionEntity sessionEntity : recentSessionList) {
            int sessionType = sessionEntity.getSessionType();
            int parseInt = Integer.parseInt(sessionEntity.getSessionId());
            String sessionKey = sessionEntity.getSessionKey();
            UnreadEntity unreadEntity = (UnreadEntity) unreadMsgMap.get(sessionKey);
            if (sessionType == 3) {
                RecentInfo recentInfo = new RecentInfo(sessionEntity, (GroupEntity) groupMap.get(Integer.valueOf(parseInt)), unreadEntity);
                if (sessionTopList != null && sessionTopList.contains(sessionKey)) {
                    recentInfo.setTop(true);
                }
                if (sessionTalk != null && sessionTalk.equals(sessionKey)) {
                    recentInfo.setTalk(true);
                }
                UserEntity userEntity = (UserEntity) userMap.get(Integer.valueOf(Integer.parseInt(sessionEntity.getTalkId())));
                if (userEntity != null) {
                    String latestMsgData = recentInfo.getLatestMsgData();
                    recentInfo.setLatestMsgData(!TextUtils.isEmpty(latestMsgData) ? userEntity.getMainName() + ": " + latestMsgData : "");
                }
                arrayList.add(recentInfo);
            } else if (sessionType == 1) {
                RecentInfo recentInfo2 = new RecentInfo(sessionEntity, (UserEntity) userMap.get(Integer.valueOf(parseInt)), unreadEntity);
                if (sessionTopList != null && sessionTopList.contains(sessionKey)) {
                    recentInfo2.setTop(true);
                }
                arrayList.add(recentInfo2);
            }
        }
        sort(arrayList);
        return arrayList;
    }

    public void updateSession(GroupEntity groupEntity) {
        this.logger.d("recent#updateSession GroupEntity:%s", groupEntity);
        SessionEntity sessionEntity = new SessionEntity();
        sessionEntity.setLatestMsgType(1);
        sessionEntity.setTime(groupEntity.getUpdated());
        sessionEntity.setTalkId(String.valueOf(groupEntity.getCreatorId()));
        sessionEntity.setLatestMsgId(0);
        sessionEntity.setSessionId(String.valueOf(groupEntity.getPeerId()));
        sessionEntity.setSessionType(3);
        sessionEntity.buildSessionKey();
        SessionEntity findSession = findSession(sessionEntity.getSessionKey());
        if (findSession == null) {
            findSession = sessionEntity;
        }
        this.sessionMap.put(sessionEntity.getSessionKey(), findSession);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(findSession);
        this.mDBInterface.batchInsertOrUpdateSession(arrayList);
        triggerEvent(SessionEvent.RECENT_SESSION_LIST_UPDATE);
    }

    public void updateSession(MessageEntity messageEntity) {
        if (messageEntity != null) {
            String peerId = messageEntity.getPeerId(messageEntity.isSend(String.valueOf(this.mIMLoginManager.getLoginId())));
            SessionEntity findSession = findSession(messageEntity.buildSessionKey());
            if (findSession == null) {
                this.logger.d("session#updateSession#not found msgSessionEntity", new Object[0]);
                findSession = new SessionEntity();
                findSession.setSessionId(peerId);
                findSession.setContent(messageEntity.getMessageDisplay());
                findSession.setTime(messageEntity.getTime());
                findSession.setTalkId(messageEntity.getFromId());
                findSession.setLatestMsgId(messageEntity.getMsgId());
                findSession.setLatestMsgType(messageEntity.getMsgType());
                findSession.setSessionType(messageEntity.getSessionType());
                findSession.setLatestMsgData(messageEntity.getMessageDisplay());
                findSession.buildSessionKey();
                if (findSession.getSessionType() == 3) {
                    int parseInt = Integer.parseInt(peerId);
                    if (this.groupManager.findGroup(parseInt) == null) {
                        this.groupManager.reqGroupDetailInfo(parseInt);
                    }
                }
            } else {
                this.logger.d("session#updateSession#msgSessionEntity already in Map", new Object[0]);
                findSession.setTime(messageEntity.getTime());
                findSession.setContent(messageEntity.getMessageDisplay());
                findSession.setTalkId(messageEntity.getFromId());
                findSession.setLatestMsgId(messageEntity.getMsgId());
                findSession.setLatestMsgType(messageEntity.getMsgType());
                findSession.setLatestMsgData(messageEntity.getMessageDisplay());
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(findSession);
            this.mDBInterface.batchInsertOrUpdateSession(arrayList);
            this.sessionMap.put(findSession.getSessionKey(), findSession);
            triggerEvent(SessionEvent.RECENT_SESSION_LIST_UPDATE);
        }
    }

    public SessionEntity findSession(String str) {
        if (this.sessionMap.size() <= 0 || TextUtils.isEmpty(str) || !this.sessionMap.containsKey(str)) {
            return null;
        }
        return (SessionEntity) this.sessionMap.get(str);
    }

    public boolean isSessionListReady() {
        return this.sessionListReady;
    }

    public void setSessionListReady(boolean z) {
        this.sessionListReady = z;
    }
}
