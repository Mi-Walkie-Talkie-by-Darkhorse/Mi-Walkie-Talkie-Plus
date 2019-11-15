package com.ifengyu.im.imservice.service;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.sp.ConfigurationSp;
import com.ifengyu.im.DB.sp.LoginSp;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.imservice.event.PriorityEvent;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMHeartBeatManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMNotificationManager;
import com.ifengyu.im.imservice.manager.IMReconnectManager;
import com.ifengyu.im.imservice.manager.IMSocketManager;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.services.IMSessionManager;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.im.imservice.services.NearbyService;
import com.ifengyu.im.utils.Logger;
import de.greenrobot.event.c;

public class IMService extends Service {
    private IMServiceBinder binder = new IMServiceBinder();
    private ConfigurationSp configSp;
    private IMContactManager contactMgr = IMContactManager.instance();
    private DBInterface dbInterface = DBInterface.instance();
    private IMGroupManager groupMgr = IMGroupManager.instance();
    private IMHeartBeatManager heartBeatManager = IMHeartBeatManager.instance();
    private Logger logger = Logger.getLogger(IMService.class);
    private IMLoginManager loginMgr = IMLoginManager.instance();
    private LoginSp loginSp = LoginSp.instance();
    private IMSessionManager mSessionManager;
    private MessageService messageSevr = MessageService.instance();
    private NearbyService nearbyService = NearbyService.instance();
    private IMNotificationManager notificationMgr = IMNotificationManager.instance();
    private IMReconnectManager reconnectMgr = IMReconnectManager.instance();
    private IMSessionManager sessionMgr = IMSessionManager.instance();
    private IMSocketManager socketMgr = IMSocketManager.instance();
    private IMUnreadMsgManager unReadMsgMgr = IMUnreadMsgManager.instance();

    public class IMServiceBinder extends Binder {
        public IMServiceBinder() {
        }

        public IMService getService() {
            return IMService.this;
        }
    }

    public IBinder onBind(Intent intent) {
        this.logger.i("IMService onBind", new Object[0]);
        return this.binder;
    }

    public void onCreate() {
        this.logger.i("IMService onCreate", new Object[0]);
        super.onCreate();
        c.a().a((Object) this, 10);
        startForeground((int) System.currentTimeMillis(), new Notification());
    }

    public void onDestroy() {
        this.logger.i("IMService onDestroy", new Object[0]);
        c.a().d(this);
        handleLoginout();
        this.dbInterface.close();
        IMNotificationManager.instance().cancelAllNotifications();
        super.onDestroy();
    }

    public void onEvent(PriorityEvent priorityEvent) {
        switch (priorityEvent.event) {
            case MSG_RECEIVED_MESSAGE:
                MessageEntity messageEntity = (MessageEntity) priorityEvent.object;
                this.logger.d("messageactivity#not this session msg -> id:%s", messageEntity.getFromId());
                this.unReadMsgMgr.add(messageEntity);
                return;
            default:
                return;
        }
    }

    public void onEvent(LoginEvent loginEvent) {
        switch (loginEvent) {
            case LOGIN_OK:
                onNormalLoginOk();
                return;
            case LOCAL_LOGIN_SUCCESS:
                onLocalLoginOk();
                return;
            case LOCAL_LOGIN_MSG_SERVICE:
                onLocalNetOk();
                return;
            case LOGIN_OUT:
                handleLoginout();
                return;
            default:
                return;
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        this.logger.i("IMService onStartCommand", new Object[0]);
        Context applicationContext = getApplicationContext();
        this.loginSp.init(applicationContext);
        this.socketMgr.onStartIMManager(applicationContext);
        this.loginMgr.onStartIMManager(applicationContext);
        this.contactMgr.onStartIMManager(applicationContext);
        this.messageSevr.onStartIMManager(applicationContext);
        this.groupMgr.onStartIMManager(applicationContext);
        this.sessionMgr.onStartIMManager(applicationContext);
        this.unReadMsgMgr.onStartIMManager(applicationContext);
        this.notificationMgr.onStartIMManager(applicationContext);
        this.reconnectMgr.onStartIMManager(applicationContext);
        this.heartBeatManager.onStartIMManager(applicationContext);
        this.nearbyService.onStartIMManager(applicationContext);
        return 1;
    }

    private void onNormalLoginOk() {
        this.logger.d("imservice#onLogin Successful", new Object[0]);
        Context applicationContext = getApplicationContext();
        int loginId = this.loginMgr.getLoginId();
        this.configSp = ConfigurationSp.instance(applicationContext, loginId);
        this.dbInterface.initDbHelp(applicationContext, loginId);
        this.contactMgr.onNormalLoginOk();
        this.sessionMgr.onNormalLoginOk();
        this.groupMgr.onNormalLoginOk();
        this.unReadMsgMgr.onNormalLoginOk();
        this.reconnectMgr.onNormalLoginOk();
        this.messageSevr.onLoginSuccess();
        this.notificationMgr.onLoginSuccess();
        this.heartBeatManager.onloginNetSuccess();
        this.nearbyService.onLoginSuccess();
    }

    private void onLocalLoginOk() {
        Context applicationContext = getApplicationContext();
        int loginId = this.loginMgr.getLoginId();
        this.configSp = ConfigurationSp.instance(applicationContext, loginId);
        this.dbInterface.initDbHelp(applicationContext, loginId);
        this.contactMgr.onLocalLoginOk();
        this.groupMgr.onLocalLoginOk();
        this.sessionMgr.onLocalLoginOk();
        this.reconnectMgr.onLocalLoginOk();
        this.notificationMgr.onLoginSuccess();
        this.messageSevr.onLoginSuccess();
        this.nearbyService.onLoginSuccess();
    }

    private void onLocalNetOk() {
        Context applicationContext = getApplicationContext();
        int loginId = this.loginMgr.getLoginId();
        this.configSp = ConfigurationSp.instance(applicationContext, loginId);
        this.dbInterface.initDbHelp(applicationContext, loginId);
        this.contactMgr.onLocalNetOk();
        this.groupMgr.onLocalNetOk();
        this.sessionMgr.onLocalNetOk();
        this.unReadMsgMgr.onLocalNetOk();
        this.reconnectMgr.onLocalNetOk();
        this.heartBeatManager.onloginNetSuccess();
    }

    private void handleLoginout() {
        this.logger.d("imservice#handleLoginout", new Object[0]);
        this.socketMgr.reset();
        this.loginMgr.reset();
        this.contactMgr.reset();
        this.messageSevr.reset();
        this.groupMgr.reset();
        this.sessionMgr.reset();
        this.unReadMsgMgr.reset();
        this.notificationMgr.reset();
        this.reconnectMgr.reset();
        this.heartBeatManager.reset();
        this.nearbyService.reset();
        this.configSp = null;
        c.a().b();
    }

    public void onTaskRemoved(Intent intent) {
        this.logger.d("imservice#onTaskRemoved", new Object[0]);
        stopSelf();
    }

    public IMLoginManager getLoginManager() {
        return this.loginMgr;
    }

    public IMContactManager getContactManager() {
        return this.contactMgr;
    }

    public IMGroupManager getGroupManager() {
        return this.groupMgr;
    }

    public IMSessionManager getSessionManager() {
        return this.sessionMgr;
    }

    public IMReconnectManager getReconnectManager() {
        return this.reconnectMgr;
    }

    public IMUnreadMsgManager getUnReadMsgManager() {
        return this.unReadMsgMgr;
    }

    public IMNotificationManager getNotificationManager() {
        return this.notificationMgr;
    }

    public DBInterface getDbInterface() {
        return this.dbInterface;
    }

    public ConfigurationSp getConfigSp() {
        return this.configSp;
    }

    public LoginSp getLoginSp() {
        return this.loginSp;
    }
}
