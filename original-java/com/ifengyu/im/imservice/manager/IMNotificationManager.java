package com.ifengyu.im.imservice.manager;

import android.app.NotificationManager;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.sp.ConfigurationSp;
import com.ifengyu.im.DB.sp.ConfigurationSp.CfgDimension;
import com.ifengyu.im.config.SysConstant;
import com.ifengyu.im.imservice.entity.UnreadEntity;
import com.ifengyu.im.imservice.event.GroupEvent;
import com.ifengyu.im.imservice.event.GroupEvent.Event;
import com.ifengyu.im.imservice.event.UnreadEvent;
import com.ifengyu.im.utils.Logger;
import de.greenrobot.event.c;

public class IMNotificationManager extends IMManager {
    private static IMNotificationManager inst = new IMNotificationManager();
    private ConfigurationSp configurationSp;
    private Logger logger = Logger.getLogger(IMNotificationManager.class);

    public static IMNotificationManager instance() {
        return inst;
    }

    private IMNotificationManager() {
    }

    public void doOnStart() {
        cancelAllNotifications();
    }

    public void onLoginSuccess() {
        this.configurationSp = ConfigurationSp.instance(this.ctx, IMLoginManager.instance().getLoginId());
        if (!c.a().c(inst)) {
            c.a().a((Object) inst);
        }
    }

    public void reset() {
        c.a().d(this);
        cancelAllNotifications();
    }

    public void onEventMainThread(UnreadEvent unreadEvent) {
        switch (unreadEvent.event) {
            case UNREAD_MSG_RECEIVED:
                handleMsgRecv(unreadEvent.entity);
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(GroupEvent groupEvent) {
        GroupEntity groupEntity = groupEvent.getGroupEntity();
        if (groupEvent.getEvent() == Event.SHIELD_GROUP_OK && groupEntity != null) {
            cancelSessionNotifications(groupEntity.getSessionKey());
        }
    }

    private void handleMsgRecv(UnreadEntity unreadEntity) {
        this.logger.d("notification#recv unhandled message", new Object[0]);
        int peerId = unreadEntity.getPeerId();
        this.logger.d("notification#msg no one handled, peerId:%d, sessionType:%d", Integer.valueOf(peerId), Integer.valueOf(unreadEntity.getSessionType()));
        if (unreadEntity.isForbidden()) {
            this.logger.d("notification#GROUP_STATUS_SHIELD", new Object[0]);
        } else if (this.configurationSp.getCfg(SysConstant.SETTING_GLOBAL, CfgDimension.NOTIFICATION)) {
            this.logger.d("notification#shouldGloballyShowNotification is false, return", new Object[0]);
        } else if (this.configurationSp.getCfg(unreadEntity.getSessionKey(), CfgDimension.NOTIFICATION)) {
            this.logger.d("notification#shouldShowNotificationBySession is false, return", new Object[0]);
        } else {
            if (IMLoginManager.instance().getLoginId() != peerId) {
            }
        }
    }

    public void cancelAllNotifications() {
        this.logger.d("notification#cancelAllNotifications", new Object[0]);
        if (this.ctx != null) {
            NotificationManager notificationManager = (NotificationManager) this.ctx.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancelAll();
            }
        }
    }

    public void cancelSessionNotifications(String str) {
        this.logger.d("notification#cancelSessionNotifications", new Object[0]);
        NotificationManager notificationManager = (NotificationManager) this.ctx.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(getSessionNotificationId(str));
        }
    }

    private long hashBKDR(String str) {
        long j = 0;
        for (int i = 0; i < str.length(); i++) {
            j = (j * 131) + ((long) str.charAt(i));
        }
        return j;
    }

    public int getSessionNotificationId(String str) {
        this.logger.d("notification#getSessionNotificationId sessionTag:%s", str);
        int hashBKDR = (int) hashBKDR(str);
        this.logger.d("notification#hashedNotificationId:%d", Integer.valueOf(hashBKDR));
        return hashBKDR;
    }
}
