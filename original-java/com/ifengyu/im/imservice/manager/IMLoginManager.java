package com.ifengyu.im.imservice.manager;

import android.text.TextUtils;
import android.util.Log;
import com.google.protobuf.CodedInputStream;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.DB.sp.LoginSp;
import com.ifengyu.im.DB.sp.LoginSp.SpLoginIdentity;
import com.ifengyu.im.account.UserCache;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.im.config.AppConstant;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.protobuf.IMBaseDefine.ClientType;
import com.ifengyu.im.protobuf.IMBaseDefine.ResultType;
import com.ifengyu.im.protobuf.IMBaseDefine.UserStatType;
import com.ifengyu.im.protobuf.IMBuddy.IMPCLoginStatusNotify;
import com.ifengyu.im.protobuf.IMLogin.IMKickPCClientReq;
import com.ifengyu.im.protobuf.IMLogin.IMKickUser;
import com.ifengyu.im.protobuf.IMLogin.IMLoginReq;
import com.ifengyu.im.protobuf.IMLogin.IMLoginRes;
import com.ifengyu.im.protobuf.IMLogin.IMLogoutReq;
import com.ifengyu.im.protobuf.IMLogin.IMLogoutRsp;
import com.ifengyu.im.protobuf.helper.ProtoBuf2JavaBean;
import com.ifengyu.im.utils.Logger;
import com.ifengyu.library.util.d;
import com.ifengyu.library.widget.a;
import de.greenrobot.event.c;
import java.io.IOException;

public class IMLoginManager extends IMManager {
    private static IMLoginManager inst = new IMLoginManager();
    private String b2Token;
    private boolean everLogined = false;
    private boolean identityChanged = false;
    IMSocketManager imSocketManager = IMSocketManager.instance();
    private boolean isKickout = false;
    private boolean isLocalLogin = false;
    private boolean isPcOnline = false;
    /* access modifiers changed from: private */
    public Logger logger = Logger.getLogger(IMLoginManager.class);
    private int loginId;
    private UserEntity loginInfo;
    private String loginPwd;
    private LoginEvent loginStatus = LoginEvent.NONE;
    private String publicId;
    private String publicKey;

    /* renamed from: com.ifengyu.im.imservice.manager.IMLoginManager$3 reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$UserStatType = new int[UserStatType.values().length];

        static {
            try {
                $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$UserStatType[UserStatType.USER_STATUS_ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$UserStatType[UserStatType.USER_STATUS_OFFLINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$ResultType = new int[ResultType.values().length];
            try {
                $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$ResultType[ResultType.REFUSE_REASON_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$ResultType[ResultType.REFUSE_REASON_DB_VALIDATE_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static IMLoginManager instance() {
        return inst;
    }

    public IMLoginManager() {
        this.logger.d("login#creating IMLoginManager", new Object[0]);
    }

    public void doOnStart() {
    }

    public void reset() {
        this.loginPwd = null;
        this.loginId = -1;
        this.loginInfo = null;
        this.identityChanged = false;
        this.isKickout = false;
        this.isPcOnline = false;
        this.everLogined = false;
        this.loginStatus = LoginEvent.NONE;
        this.isLocalLogin = false;
    }

    public void triggerEvent(LoginEvent loginEvent) {
        this.loginStatus = loginEvent;
        c.a().g(loginEvent);
    }

    public void logOut() {
        this.logger.d("login#logOut", new Object[0]);
        this.logger.d("login#stop reconnecting", new Object[0]);
        this.everLogined = false;
        this.isLocalLogin = false;
        reqLoginOut();
    }

    private void reqLoginOut() {
        try {
            this.imSocketManager.sendRequest(IMLogoutReq.newBuilder().build(), 1, 261);
            LoginSp.instance().setLoginInfo(null, this.loginId, null, null, null);
            this.logger.d("login#send logout finish message", new Object[0]);
            triggerEvent(LoginEvent.LOGIN_OUT);
        } catch (Exception e) {
            this.logger.e("#reqLoginOut#sendRequest error,cause by" + e.toString(), new Object[0]);
            LoginSp.instance().setLoginInfo(null, this.loginId, null, null, null);
            this.logger.d("login#send logout finish message", new Object[0]);
            triggerEvent(LoginEvent.LOGIN_OUT);
        } catch (Throwable th) {
            Throwable th2 = th;
            LoginSp.instance().setLoginInfo(null, this.loginId, null, null, null);
            this.logger.d("login#send logout finish message", new Object[0]);
            triggerEvent(LoginEvent.LOGIN_OUT);
            throw th2;
        }
    }

    public void onRepLoginOut(IMLogoutRsp iMLogoutRsp) {
        iMLogoutRsp.getResultCode();
        this.logger.d("login#send logout finish message", new Object[0]);
    }

    public void relogin() {
        if (!TextUtils.isEmpty(this.loginPwd)) {
            this.logger.d("reconnect#login#relogin", new Object[0]);
            this.imSocketManager.reqMsgServerAddrs();
            return;
        }
        this.logger.d("reconnect#login#userName or loginPwd is null!!", new Object[0]);
        this.everLogined = false;
        triggerEvent(LoginEvent.LOGIN_AUTH_FAILED);
    }

    public void login(SpLoginIdentity spLoginIdentity) {
        if (spLoginIdentity == null) {
            triggerEvent(LoginEvent.LOGIN_AUTH_FAILED);
            return;
        }
        this.identityChanged = false;
        this.loginPwd = spLoginIdentity.getPwd();
        this.publicKey = spLoginIdentity.getPublicKey();
        this.publicId = spLoginIdentity.getPublicId();
        this.b2Token = spLoginIdentity.getB2Token();
        int loginId2 = spLoginIdentity.getLoginId();
        DBInterface.instance().initDbHelp(this.ctx, loginId2);
        UserEntity byLoginId = DBInterface.instance().getByLoginId(loginId2);
        if (byLoginId != null) {
            this.loginInfo = byLoginId;
            this.loginId = byLoginId.getPeerId();
            this.isLocalLogin = true;
            this.everLogined = true;
            triggerEvent(LoginEvent.LOCAL_LOGIN_SUCCESS);
        }
        this.imSocketManager.reqMsgServerAddrs();
    }

    public void login(String str, String str2) {
        this.logger.i("login#login -> userName:%s", str2);
        this.loginPwd = str2;
        this.identityChanged = true;
        this.imSocketManager.reqMsgServerAddrs();
    }

    public void reqLoginMsgServer() {
        this.logger.i("login#reqLoginMsgServer", new Object[0]);
        triggerEvent(LoginEvent.LOGINING);
        String str = this.loginPwd;
        UserInfo userInfo = UserCache.instance().getUserInfo();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        String a = d.a(userInfo.key + currentTimeMillis);
        this.logger.d("key = %s,time = %d,sign = %s", userInfo.key, Integer.valueOf(currentTimeMillis), a);
        this.imSocketManager.sendRequest(IMLoginReq.newBuilder().setFyappid(2).setAppid(AppConstant.APP_ID).setApikey(a).setUserId(Integer.parseInt(userInfo.userId)).setTime(currentTimeMillis).setClientType(ClientType.CLIENT_TYPE_ANDROID).setClientVersion(a.a(this.ctx)).build(), 1, 259, new Packetlistener() {
            public void onSuccess(Object obj) {
                Log.e(IMLoginManager.class.getSimpleName(), "ImLoginReq onSuccess:" + obj.toString());
                try {
                    IMLoginRes parseFrom = IMLoginRes.parseFrom((CodedInputStream) obj);
                    StringBuilder sb = new StringBuilder();
                    sb.append("user_handle:").append(parseFrom.getUserHandle()).append("\nserver_time:").append(parseFrom.getServerTime()).append("\nresult_code:").append(parseFrom.getResultCode()).append("\nresult_string:").append(parseFrom.getResultString()).append("\nuser_id:").append(parseFrom.getUserId()).append("\nuser_name:").append(parseFrom.getUserName()).append("\nb2:").append(parseFrom.getB2()).append("\npublicId:").append(parseFrom.getPublicid()).append("\npublicKey:").append(parseFrom.getPublickey()).append("\nresultCode:").append(parseFrom.getResultCode());
                    IMLoginManager.this.logger.d("login#onSuccess:%s", sb.toString());
                    IMLoginManager.this.onRepMsgServerLogin(parseFrom);
                } catch (IOException e) {
                    IMLoginManager.this.triggerEvent(LoginEvent.LOGIN_INNER_FAILED);
                    IMLoginManager.this.logger.e("login failed,cause by %s", e.getCause());
                }
            }

            public void onFaild() {
                IMLoginManager.this.triggerEvent(LoginEvent.LOGIN_INNER_FAILED);
            }

            public void onTimeout() {
                IMLoginManager.this.triggerEvent(LoginEvent.LOGIN_INNER_FAILED);
            }
        });
    }

    public void onRepMsgServerLogin(IMLoginRes iMLoginRes) {
        this.logger.i("login#onRepMsgServerLogin", new Object[0]);
        if (iMLoginRes == null) {
            this.logger.e("login#decode LoginResponse failed", new Object[0]);
            triggerEvent(LoginEvent.LOGIN_AUTH_FAILED);
            return;
        }
        ResultType resultCode = iMLoginRes.getResultCode();
        switch (resultCode) {
            case REFUSE_REASON_NONE:
                this.publicId = iMLoginRes.getPublicid();
                this.publicKey = iMLoginRes.getPublickey();
                this.b2Token = iMLoginRes.getB2();
                this.loginId = iMLoginRes.getUserId();
                this.loginInfo = ProtoBuf2JavaBean.getUserEntity(UserCache.instance().getUserInfo());
                onLoginOk();
                return;
            case REFUSE_REASON_DB_VALIDATE_FAILED:
                this.logger.e("login#login msg server failed, result:%s", resultCode);
                triggerEvent(LoginEvent.LOGIN_AUTH_FAILED);
                return;
            default:
                this.logger.e("login#login msg server inner failed, result:%s", resultCode);
                triggerEvent(LoginEvent.LOGIN_INNER_FAILED);
                return;
        }
    }

    public void onLoginOk() {
        this.logger.i("login#onLoginOk", new Object[0]);
        this.everLogined = true;
        this.isKickout = false;
        if (this.isLocalLogin) {
            triggerEvent(LoginEvent.LOCAL_LOGIN_MSG_SERVICE);
        } else {
            this.isLocalLogin = true;
            triggerEvent(LoginEvent.LOGIN_OK);
        }
        if (this.identityChanged) {
            LoginSp.instance().setLoginInfo(this.loginPwd, this.loginId, this.publicId, this.publicKey, this.b2Token);
            this.identityChanged = false;
        }
    }

    private void reqDeviceToken() {
    }

    public void onKickout(IMKickUser iMKickUser) {
        this.logger.i("login#onKickout", new Object[0]);
        iMKickUser.getUserId();
        iMKickUser.getKickReason();
        this.isKickout = true;
        this.imSocketManager.onMsgServerDisconn();
        triggerEvent(LoginEvent.KICK_OUT);
    }

    public void onLoginStatusNotify(IMPCLoginStatusNotify iMPCLoginStatusNotify) {
        iMPCLoginStatusNotify.getUserId();
        this.logger.i("login#onLoginStatusNotify userId ≠ loginId", new Object[0]);
    }

    public void reqKickPCClient() {
        this.imSocketManager.sendRequest(IMKickPCClientReq.newBuilder().setUserId(this.loginId).build(), 1, 266, new Packetlistener() {
            public void onSuccess(Object obj) {
                IMLoginManager.this.triggerEvent(LoginEvent.KICK_PC_SUCCESS);
            }

            public void onFaild() {
                IMLoginManager.this.triggerEvent(LoginEvent.KICK_PC_FAILED);
            }

            public void onTimeout() {
                IMLoginManager.this.triggerEvent(LoginEvent.KICK_PC_FAILED);
            }
        });
    }

    public int getLoginId() {
        return this.loginId;
    }

    public void setLoginId(int i) {
        this.logger.d("login#setLoginId -> loginId:%d", Integer.valueOf(i));
        this.loginId = i;
    }

    public boolean isEverLogined() {
        return this.everLogined;
    }

    public void setEverLogined(boolean z) {
        this.everLogined = z;
    }

    public UserEntity getLoginInfo() {
        return this.loginInfo;
    }

    public void setLoginInfo(UserEntity userEntity) {
        this.loginInfo = userEntity;
    }

    public LoginEvent getLoginStatus() {
        return this.loginStatus;
    }

    public boolean isKickout() {
        return this.isKickout;
    }

    public void setKickout(boolean z) {
        this.isKickout = z;
    }

    public boolean isPcOnline() {
        return this.isPcOnline;
    }

    public void setPcOnline(boolean z) {
        this.isPcOnline = z;
    }

    public String getPublicId() {
        return this.publicId;
    }

    public void setPublicId(String str) {
        this.publicId = str;
    }

    public String getPublicKey() {
        return this.publicKey;
    }

    public void setPublicKey(String str) {
        this.publicKey = str;
    }

    public String getB2Token() {
        return this.b2Token;
    }

    public void setB2Token(String str) {
        this.b2Token = str;
    }
}
