package com.mi.milinkforgame.sdk.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milinkforgame.sdk.base.os.Device.Network.Wifi;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager;
import com.mi.milinkforgame.sdk.connection.ConnectionImpl;
import com.mi.milinkforgame.sdk.connection.ConnectionImpl.ConnectPrintLogCallback;
import com.mi.milinkforgame.sdk.connection.DomainManager;
import com.mi.milinkforgame.sdk.data.Const.MiLinkSdkState;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.data.Error;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.debug.TrafficMonitor;
import com.mi.milinkforgame.sdk.interaction.IEventCallback;
import com.mi.milinkforgame.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milinkforgame.sdk.service.MiLinkAlarm;
import com.mi.milinkforgame.sdk.service.MiLinkAlarm.MiLinkAlarmListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

public class SessionManager extends CustomHandlerThread implements MiLinkAlarmListener {
    private static final int AUTO_INTERNAL_OPEN_DELAY = 3000;
    private static final int CHECK_CONNECTION_IS_ALIVE_INTERVAL = 60000;
    private static final int CHECK_SESSION_INTERVAL = 2000;
    private static final int CHECK_WAKE_LOCK_TIMEOUT = 5;
    private static final int ERRNO_CONNECT_TIME_OUT = 110;
    private static final int ERRNO_NET_UNREACHABLE = 101;
    private static final int ERRNO_NO_ROUTE = 113;
    private static final int ERRNO_REFUSED = 111;
    private static final String ERRNO_TAG = ",errno=";
    private static final int FLAG_ABANDON_SESSION = 3;
    private static final int FLAG_MASTER_SESSION = 4;
    private static final int FLAG_TRTING_SESSION = 1;
    private static final int LOGIN_TRY_TIMES = 5;
    public static final int MILINK_OPEN_RET_CODE_ALL_TIME_OUT = 6;
    public static final int MILINK_OPEN_RET_CODE_FAIL = 1;
    public static final int MILINK_OPEN_RET_CODE_MULTI_UNAVAILABLE = 7;
    public static final int MILINK_OPEN_RET_CODE_NETWORK_CHANGE = 4;
    public static final int MILINK_OPEN_RET_CODE_NET_UNREACHABLE = 5;
    public static final int MILINK_OPEN_RET_CODE_NO_ROUTE = 2;
    public static final int MILINK_OPEN_RET_CODE_OK = 0;
    public static final int MILINK_OPEN_RET_CODE_REFUSED = 3;
    private static final int OPEN_SESSION_TRY_TIMES = 5;
    private static final int SESSION_RECONNECT_TIMES = 2;
    private static final String TAG = "SessionManager";
    private static final String TCP_FAIL_TAG = "TcpConn:connect_nonb connect fail ";
    private static int maxRecvSeqNo = 0;
    private static int maxSendSeqNo = 0;
    private static SessionManager sInstance;
    private boolean mAppInited = false;
    private ConnectPrintLogCallback mConnectPrintLogCallback = new ConnectPrintLogCallback() {
        public void printLogCallback(int i, String str) {
            if (str != null && str.contains(SessionManager.TCP_FAIL_TAG)) {
                try {
                    int indexOf = str.indexOf(SessionManager.TCP_FAIL_TAG);
                    int indexOf2 = str.indexOf(SessionManager.ERRNO_TAG);
                    String trim = str.substring(indexOf + SessionManager.TCP_FAIL_TAG.length(), indexOf2).trim();
                    int parseInt = Integer.parseInt(str.substring(indexOf2 + SessionManager.ERRNO_TAG.length()));
                    MiLinkLog.i(SessionManager.TAG, "printLogCallback, address=" + trim + ", errorCode=" + parseInt);
                    SessionManager.this.mSessionAddress2ErrorCodeMap.put(trim, Integer.valueOf(parseInt));
                } catch (Exception e) {
                    MiLinkLog.i(SessionManager.TAG, "printLogCallback Exception");
                }
            }
        }
    };
    private boolean mEnableConnectionManualMode = false;
    private IEventCallback mEventCallBack;
    private boolean mInitByAppLogin = false;
    /* access modifiers changed from: private */
    public Runnable mInternalAutoOpenRunnable = new Runnable() {
        public void run() {
            SessionManager.this.internalAutoOpen();
        }
    };
    /* access modifiers changed from: private */
    public Runnable mInternalManualOpenRunnable = new Runnable() {
        public void run() {
            SessionManager.this.internalManualOpen();
        }
    };
    /* access modifiers changed from: private */
    public Runnable mInternalNormalOpenRunnable = new Runnable() {
        public void run() {
            SessionManager.this.internalNormalOpen();
        }
    };
    /* access modifiers changed from: private */
    public boolean mIsLogoff = false;
    /* access modifiers changed from: private */
    public boolean mIsNeedBackGroudReset = false;
    private ISessionManagerListener mListener = null;
    private Object mLock = null;
    private Runnable mLoginRunnable = new Runnable() {
        public void run() {
            MiLinkLog.v(SessionManager.TAG, "milink login, force=true");
            MiLinkLog.v(SessionManager.TAG, "milink login, session manager state: " + SessionManager.this.mState);
            Session access$1500 = SessionManager.this.getSession();
            if (access$1500 == null || !access$1500.isAvailable()) {
                MiLinkLog.v(SessionManager.TAG, "login session is not available.");
                SessionManager.this.onLoginResult(false);
            } else if (SessionManager.this.mLoginTryTimes < 5) {
                SessionManager.this.mLoginTryTimes = SessionManager.this.mLoginTryTimes + 1;
                MiLinkLog.v(SessionManager.TAG, "milink login start, mLoginTryTimes=" + SessionManager.this.mLoginTryTimes);
                access$1500.bind();
            } else {
                MiLinkLog.v(SessionManager.TAG, "milink login has exceeded max times");
            }
        }
    };
    /* access modifiers changed from: private */
    public int mLoginTryTimes = 0;
    private Runnable mLogoffRunnable = new Runnable() {
        public void run() {
            MiLinkLog.v(SessionManager.TAG, "milink mLogoffRunnable run");
            SessionManager.this.close();
            SessionManager.this.mIsLogoff = true;
            SessionManager.this.resetAllTryTimes();
            SessionManager.this.mSendQueue.clear();
            MiAccountManager.getInstance().logoff();
        }
    };
    private Session mMasterSession;
    /* access modifiers changed from: private */
    public NetworkDetailInfo mNetworkDetailInfoOnOpen;
    private NetworkChangeReceiver mNetworkReveiver = null;
    private final HashSet<String> mOpenSessionAddressSet = new HashSet<>();
    private int mOpenSessionTryTimes = 0;
    private long mOpenStartTime = 0;
    /* access modifiers changed from: private */
    public final ConcurrentLinkedQueue<Request> mSendQueue = new ConcurrentLinkedQueue<>();
    private IServerManager mServerManager = null;
    /* access modifiers changed from: private */
    public final HashMap<String, Integer> mSessionAddress2ErrorCodeMap = new HashMap<>();
    private final List<Session> mSessionList = new ArrayList();
    private int mSessionReconnectTryTimes = 0;
    /* access modifiers changed from: private */
    public MiLinkSdkState mState = MiLinkSdkState.Disconnected;
    private WakeLock mWakeLock = null;

    private class NetworkChangeReceiver extends BroadcastReceiver {
        private static final long FORCE_OPEN_DELAY_TIME = 1000;
        private String apnName;
        private int currentType;
        private Runnable networkChangeRunnable;

        private NetworkChangeReceiver() {
            this.networkChangeRunnable = new Runnable() {
                public void run() {
                    SessionManager.this.forceOpen();
                }
            };
            this.currentType = -1;
            this.apnName = "";
        }

        private boolean isNetworkChanged(NetworkInfo networkInfo) {
            if (networkInfo != null) {
                if (this.currentType == networkInfo.getType()) {
                    if (this.currentType == 0) {
                        if (this.apnName != null && this.apnName.equals(networkInfo.getSubtypeName())) {
                            return false;
                        }
                    } else if (this.apnName != null && this.apnName.equals(Wifi.getBSSID())) {
                        return false;
                    }
                }
                return true;
            } else if (this.currentType != -1 || !TextUtils.isEmpty(this.apnName)) {
                return true;
            } else {
                return false;
            }
        }

        public void setCurrentNetworkInfo() {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) Global.getSystemService("connectivity")).getActiveNetworkInfo();
                MiLinkLog.i(SessionManager.TAG, "NetworkChangeReceiver, setCurrentNetworkInfo=" + activeNetworkInfo);
                setCurrentNetworkInfo(activeNetworkInfo);
            } catch (Exception e) {
                setCurrentNetworkInfo(null);
                MiLinkLog.e(SessionManager.TAG, "Get networkInfo fail", e);
            }
        }

        private void setCurrentNetworkInfo(NetworkInfo networkInfo) {
            if (networkInfo != null) {
                this.currentType = networkInfo.getType();
                if (this.currentType == 0) {
                    this.apnName = networkInfo.getSubtypeName();
                } else {
                    this.apnName = Wifi.getBSSID();
                }
            } else {
                this.currentType = -1;
                this.apnName = "";
            }
        }

        public void onReceive(Context context, Intent intent) {
            if (!MiAccountManager.getInstance().appHasLogined()) {
                MiLinkLog.v(SessionManager.TAG, "app not login, ignore network change broadcast");
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                try {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) Global.getSystemService("connectivity")).getActiveNetworkInfo();
                    MiLinkLog.i(SessionManager.TAG, "NetworkChangeReceiver, networkInfo=" + activeNetworkInfo);
                    if (Network.isAvailable() && Network.isWifi()) {
                        MiLinkLog.i(SessionManager.TAG, "WIFI info : " + Wifi.getWifiInfo());
                    }
                    boolean isNetworkChanged = isNetworkChanged(activeNetworkInfo);
                    MiLinkLog.i(SessionManager.TAG, "isNetworkChange : " + isNetworkChanged);
                    setCurrentNetworkInfo(activeNetworkInfo);
                    if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                        MiLinkLog.i(SessionManager.TAG, "network is disconnected()");
                        return;
                    }
                    InternalDataMonitor.getInstance().setUploadInterval(ConfigManager.getInstance().getUploadStasticInterval());
                    if (isNetworkChanged) {
                        MiLinkLog.i(SessionManager.TAG, "NetworkChangeReceiver, network change need forceOpen");
                        SessionConst.setNewApn(true);
                        SessionManager.this.mIsNeedBackGroudReset = false;
                        DomainManager.getInstance().startResolve();
                        SessionManager.this.mHandler.removeCallbacks(this.networkChangeRunnable);
                        SessionManager.this.mHandler.postDelayed(this.networkChangeRunnable, 1000);
                        return;
                    }
                    MiLinkLog.i(SessionManager.TAG, "NetworkChangeReceiver, network not change, mState=" + SessionManager.this.mState);
                    if (SessionManager.this.mState == MiLinkSdkState.Disconnected) {
                        SessionManager.this.mIsNeedBackGroudReset = false;
                        DomainManager.getInstance().startResolve();
                        SessionManager.this.mHandler.removeCallbacks(this.networkChangeRunnable);
                        SessionManager.this.mHandler.postDelayed(this.networkChangeRunnable, 1000);
                        return;
                    }
                    Session access$1500 = SessionManager.this.getSession();
                    if (access$1500 != null && access$1500.isAvailable()) {
                        access$1500.ping();
                    }
                } catch (Exception e) {
                    setCurrentNetworkInfo(null);
                    MiLinkLog.e(SessionManager.TAG, "Get networkInfo fail", e);
                }
            }
        }
    }

    public boolean isInitByAppLogin() {
        return this.mInitByAppLogin;
    }

    public void setInitByAppLogin(boolean z) {
        MiLinkLog.i(TAG, "setIsInitByAppLogin isInitByAppLogin=" + z);
        this.mInitByAppLogin = z;
    }

    public HashSet<String> getOpenSessionAddressSet() {
        return this.mOpenSessionAddressSet;
    }

    private boolean isMultiUnavailable() {
        if (this.mSessionAddress2ErrorCodeMap.isEmpty()) {
            return false;
        }
        Iterator it = this.mOpenSessionAddressSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) this.mSessionAddress2ErrorCodeMap.get((String) it.next());
            if (num == null || !(num.intValue() == 111 || num.intValue() == 101 || num.intValue() == 113 || num.intValue() == 110)) {
                return false;
            }
        }
        return true;
    }

    private boolean isAllSessionErrorCode(int i) {
        if (this.mSessionAddress2ErrorCodeMap.isEmpty()) {
            return false;
        }
        Iterator it = this.mOpenSessionAddressSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) this.mSessionAddress2ErrorCodeMap.get((String) it.next());
            if (num != null) {
                if (num.intValue() != i) {
                }
            }
            return false;
        }
        return true;
    }

    public void initApp() {
        this.mAppInited = true;
        this.mIsLogoff = false;
        resetAllTryTimes();
    }

    private SessionManager() {
        super(TAG);
        MiLinkLog.w(TAG, "SessionManager created, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
        ConnectionImpl.addConnectPrintLogCallback(this.mConnectPrintLogCallback);
        TrafficMonitor.getInstance().start();
        this.mServerManager = MiLinkServerManager.getInstance();
        setState(MiLinkSdkState.Disconnected);
        this.mLock = new Object();
        MiLinkAlarm.addListener(this);
        this.mNetworkReveiver = new NetworkChangeReceiver();
        this.mNetworkReveiver.setCurrentNetworkInfo();
        Global.registerReceiver(this.mNetworkReveiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        DomainManager.getInstance().startResolve();
    }

    public static synchronized SessionManager getInstance() {
        SessionManager sessionManager;
        synchronized (SessionManager.class) {
            if (sInstance == null) {
                sInstance = new SessionManager();
            }
            sessionManager = sInstance;
        }
        return sessionManager;
    }

    public void setSessionManagerListener(ISessionManagerListener iSessionManagerListener) {
        this.mListener = iSessionManagerListener;
    }

    public boolean forceOpen() {
        MiLinkLog.v(TAG, "forceOpen");
        if (!Network.isAvailable()) {
            MiLinkLog.i(TAG, "can not forceOpen session, network is not available.");
            return false;
        } else if (this.mHandler == null) {
            MiLinkLog.i(TAG, "can not forceOpen session, mHandler == null.");
            return false;
        } else {
            acquireWakeLock();
            this.mHandler.post(new Runnable() {
                public void run() {
                    SessionManager.this.setState(MiLinkSdkState.Disconnected);
                    SessionManager.this.mHandler.removeCallbacks(SessionManager.this.mInternalNormalOpenRunnable);
                    SessionManager.this.mHandler.removeCallbacks(SessionManager.this.mInternalManualOpenRunnable);
                    SessionManager.this.mHandler.removeCallbacks(SessionManager.this.mInternalAutoOpenRunnable);
                    SessionManager.this.mHandler.post(SessionManager.this.mInternalManualOpenRunnable);
                }
            });
            return true;
        }
    }

    public boolean autoOpen() {
        MiLinkLog.v(TAG, "autoOpen");
        this.mHandler.removeCallbacks(this.mInternalNormalOpenRunnable);
        this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
        return this.mHandler.post(this.mInternalAutoOpenRunnable);
    }

    public boolean manualOpen() {
        MiLinkLog.v(TAG, "manualOpen");
        this.mHandler.removeCallbacks(this.mInternalNormalOpenRunnable);
        this.mHandler.removeCallbacks(this.mInternalManualOpenRunnable);
        this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
        return this.mHandler.post(this.mInternalManualOpenRunnable);
    }

    public boolean normalOpen() {
        MiLinkLog.v(TAG, "normalOpen");
        this.mHandler.removeCallbacks(this.mInternalNormalOpenRunnable);
        this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
        return this.mHandler.post(this.mInternalNormalOpenRunnable);
    }

    /* access modifiers changed from: private */
    public void internalAutoOpen() {
        MiLinkLog.v(TAG, "internalAutoOpen mOpenSessionTryTimes=" + this.mOpenSessionTryTimes + ",mState=" + this.mState);
        if (this.mOpenSessionTryTimes < 5 && this.mState == MiLinkSdkState.Disconnected) {
            this.mOpenSessionTryTimes++;
            internalOpen();
        }
    }

    /* access modifiers changed from: private */
    public void internalManualOpen() {
        MiLinkLog.v(TAG, "internalManualOpen,mState=" + this.mState);
        resetAllTryTimes();
        this.mServerManager = MiLinkServerManager.getInstance();
        internalOpen();
    }

    /* access modifiers changed from: private */
    public void internalNormalOpen() {
        MiLinkLog.v(TAG, "internalNormalOpen,mState=" + this.mState);
        internalOpen();
    }

    private void internalOpen() {
        if (!Network.isAvailable()) {
            MiLinkLog.i(TAG, "can not open session, network is not available.");
        } else if (!MiAccountManager.getInstance().appHasLogined()) {
            MiLinkLog.i(TAG, "app not login internalOpen cancel");
        } else if (this.mHandler == null) {
            MiLinkLog.i(TAG, "can not open session, mHandler == null.");
        } else if (this.mIsLogoff) {
            MiLinkLog.i(TAG, "can not open session, app has logoff");
        } else {
            MiLinkLog.i(TAG, "open session, internalOpen with mState = " + this.mState);
            if (this.mState != MiLinkSdkState.Disconnected) {
                MiLinkLog.i(TAG, "mState is not No_Sesssion state,cancel paoma");
                return;
            }
            this.mSessionAddress2ErrorCodeMap.clear();
            this.mOpenSessionAddressSet.clear();
            this.mOpenStartTime = System.currentTimeMillis();
            this.mNetworkDetailInfoOnOpen = Network.getCurrentNetworkDetailInfo();
            startTimer();
            switch (this.mState) {
                case Disconnected:
                    ServerProfile[] reset = this.mServerManager.reset(this.mIsNeedBackGroudReset);
                    if (reset == null) {
                        MiLinkLog.e(TAG, "serverProfileList is null ,internalOpne cancel");
                        return;
                    }
                    for (int i = 0; i < reset.length; i++) {
                        if (reset[i] != null) {
                            Session session = new Session();
                            session.mFlagForSessionManager = 1;
                            this.mSessionList.add(session);
                            session.openSession(reset[i]);
                        }
                    }
                    setState(MiLinkSdkState.Connecting);
                    return;
                default:
                    MiLinkLog.e(TAG, "internalOpen wrong state = " + this.mState);
                    return;
            }
        }
    }

    private boolean updateSession(Session session, int i) {
        if (session == null) {
            return false;
        }
        MiLinkLog.v(TAG, "update session function.");
        session.mFlagForSessionManager = 4;
        this.mSessionList.remove(session);
        if (session.getServerProfile().getProtocol() == 1) {
            abandonAllSession();
        }
        if (this.mServerManager != null) {
            this.mServerManager.save(session.getServerProfile());
        }
        MiLinkLog.v(TAG, "updateSession in no session or tring session");
        if (!(this.mMasterSession == null || this.mMasterSession == session)) {
            this.mMasterSession.close();
        }
        this.mMasterSession = session;
        setState(MiLinkSdkState.Connected);
        MiLinkLog.v(TAG, "connected, start milink login");
        login();
        onOpenSessionResult(0, this.mOpenStartTime);
        OpenSessionSucessReturnInfo openSessionSucessReturnInfo = session.getOpenSessionSucessReturnInfo();
        if (openSessionSucessReturnInfo != null) {
            String clientIp = openSessionSucessReturnInfo.getClientIp();
            String clientIsp = openSessionSucessReturnInfo.getClientIsp();
            ArrayList backupServerList = openSessionSucessReturnInfo.getBackupServerList();
            ArrayList optmumServerList = openSessionSucessReturnInfo.getOptmumServerList();
            MiLinkLog.v(TAG, String.format("clientip:%s clientIsp;%s", new Object[]{clientIp, clientIsp}));
            if (!TextUtils.isEmpty(clientIp)) {
                Global.setClientIp(clientIp);
            }
            if (!TextUtils.isEmpty(clientIsp)) {
                Global.setClientIsp(clientIsp);
            }
            if (backupServerList != null) {
                MiLinkIpInfoManager.getInstance().setOptmumServerList(Global.getClientIsp(), optmumServerList);
            }
            if (optmumServerList != null) {
                MiLinkIpInfoManager.getInstance().setBackupServerList(backupServerList);
            }
        }
        return true;
    }

    private void startTimer() {
        this.mHandler.removeMessages(4);
        this.mHandler.sendEmptyMessageDelayed(4, 2000);
    }

    private void stopTimer() {
        this.mHandler.removeMessages(4);
    }

    public boolean close() {
        return this.mHandler.post(new Runnable() {
            public void run() {
                SessionManager.this.internalClose();
            }
        });
    }

    /* access modifiers changed from: private */
    public void internalClose() {
        MiLinkLog.w(TAG, "internalClose");
        setState(MiLinkSdkState.Disconnected);
        stopTimer();
    }

    /* access modifiers changed from: private */
    public Session getSession() {
        switch (this.mState) {
            case Connected:
            case Logining:
            case Logined:
                return this.mMasterSession;
            default:
                return null;
        }
    }

    /* access modifiers changed from: private */
    public void setState(MiLinkSdkState miLinkSdkState) {
        switch (miLinkSdkState) {
            case Disconnected:
                ArrayList<Session> arrayList = new ArrayList<>();
                for (Session session : this.mSessionList) {
                    session.mFlagForSessionManager = 3;
                    if (session.close()) {
                        arrayList.add(session);
                    }
                }
                for (Session remove : arrayList) {
                    this.mSessionList.remove(remove);
                }
                if (this.mMasterSession != null) {
                    this.mMasterSession.mFlagForSessionManager = 3;
                    this.mMasterSession.close();
                    this.mMasterSession = null;
                    break;
                }
                break;
        }
        MiLinkLog.i(TAG, "setState mState = " + this.mState + ",newState = " + miLinkSdkState);
        MiLinkSdkState miLinkSdkState2 = this.mState;
        this.mState = miLinkSdkState;
        if (this.mListener != null) {
            this.mListener.onSessionStateChanged(miLinkSdkState2, this.mState);
        }
    }

    public boolean onOpenSessionResult(int i, long j) {
        MiLinkLog.w(TAG, "onOpenSessionResult, errorCode = " + i);
        if (i != 0) {
            stopTimer();
            if (isMultiUnavailable()) {
                MiLinkLog.w(TAG, "statistic milink.open, code=7");
                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 7, j, System.currentTimeMillis(), 0, 0, 0);
            } else if (isAllSessionErrorCode(110)) {
                MiLinkLog.w(TAG, "statistic milink.open, code=6");
                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 6, j, System.currentTimeMillis(), 0, 0, 0);
            } else if (isAllSessionErrorCode(113)) {
                MiLinkLog.w(TAG, "statistic milink.open, code=2");
                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 2, j, System.currentTimeMillis(), 0, 0, 0);
            } else if (isAllSessionErrorCode(111)) {
                MiLinkLog.w(TAG, "statistic milink.open, code=3");
                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 3, j, System.currentTimeMillis(), 0, 0, 0);
            } else if (isAllSessionErrorCode(101)) {
                MiLinkLog.w(TAG, "statistic milink.open, code=5");
                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 5, j, System.currentTimeMillis(), 0, 0, 0);
            } else if (Network.isAvailable()) {
                final long j2 = j;
                new Thread(new Runnable() {
                    public void run() {
                        long currentTimeMillis = System.currentTimeMillis();
                        MiLinkLog.w(SessionManager.TAG, "check isInternetAvailable begin ,id=" + currentTimeMillis + ", mInfoOnOpen=" + SessionManager.this.mNetworkDetailInfoOnOpen);
                        if (SessionConst.isInternetAvailable()) {
                            NetworkDetailInfo currentNetworkDetailInfo = Network.getCurrentNetworkDetailInfo();
                            MiLinkLog.v(SessionManager.TAG, "NetworkDetailInfo current=" + currentNetworkDetailInfo + ",id=" + currentTimeMillis);
                            if (currentNetworkDetailInfo.equals(SessionManager.this.mNetworkDetailInfoOnOpen)) {
                                MiLinkLog.w(SessionManager.TAG, "statistic milink.open, code=1,id=" + currentTimeMillis);
                                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 1, j2, System.currentTimeMillis(), 0, 0, 0);
                            } else {
                                MiLinkLog.w(SessionManager.TAG, "statistic milink.open, code=4,id=" + currentTimeMillis);
                                InternalDataMonitor.getInstance().trace("", 0, MnsCmd.MNS_OPEN_CMD, 4, j2, System.currentTimeMillis(), 0, 0, 0);
                            }
                        }
                        MiLinkLog.w(SessionManager.TAG, "check isInternetAvailable end, id=" + currentTimeMillis);
                    }
                }, "MiLinkCheckInternetAvailable").start();
            } else {
                MiLinkLog.w(TAG, "check isInternetAvailable, but network is unavailable");
            }
            if (Network.isAvailable()) {
                this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
                this.mHandler.postAtTime(this.mInternalAutoOpenRunnable, 3000);
                MiLinkLog.v(TAG, "onOpenSessionResult reconnect times:" + this.mOpenSessionTryTimes);
            }
        } else if (this.mMasterSession != null) {
            MiLinkLog.w(TAG, String.format("mMasterSession = [Session No:%d] ", new Object[]{Integer.valueOf(this.mMasterSession.getSessionNO())}));
            InternalDataMonitor.getInstance().trace(this.mMasterSession.getServerProfile().getServerIP(), this.mMasterSession.getServerProfile().getServerPort(), MnsCmd.MNS_OPEN_CMD, 0, j, System.currentTimeMillis(), 0, 0, 0);
        }
        if (this.mListener == null) {
            return false;
        }
        return this.mListener.onOpenSessionResult(0, i);
    }

    public boolean onOpenSessionSuccess(Session session, int i) {
        if (this.mHandler == null) {
            return false;
        }
        Message obtainMessage = this.mHandler.obtainMessage(1, session);
        obtainMessage.arg1 = i;
        return this.mHandler.sendMessage(obtainMessage);
    }

    public boolean onOpenSessionFail(Session session, int i) {
        if (this.mHandler == null) {
            return false;
        }
        Message obtainMessage = this.mHandler.obtainMessage(21, session);
        obtainMessage.arg1 = i;
        return this.mHandler.sendMessage(obtainMessage);
    }

    public boolean onSessionError(Session session, int i) {
        if (this.mHandler == null) {
            return false;
        }
        Message obtainMessage = this.mHandler.obtainMessage(6, session);
        obtainMessage.arg1 = i;
        return this.mHandler.sendMessage(obtainMessage);
    }

    public boolean onServerLineBroken(Session session) {
        if (this.mHandler == null) {
            return false;
        }
        return this.mHandler.sendMessage(this.mHandler.obtainMessage(22, session));
    }

    public boolean sendData(PacketData packetData, int i, ResponseListener responseListener) {
        if (TextUtils.isEmpty(packetData.getCommand())) {
            MiLinkLog.v(TAG, "send data ,cmd can not be null");
            return false;
        }
        packetData.setSeqNo(Global.getSequence());
        MiLinkLog.v(TAG, "send data cmd=" + packetData.getCommand() + ", seq=" + packetData.getSeqNo());
        Request request = new Request(packetData, responseListener, false, false, 2);
        request.setTimeOut(i);
        return handleRequest(request);
    }

    private boolean handleRequest(final Request request) {
        if (request == null || this.mHandler == null) {
            return false;
        }
        return this.mHandler.post(new Runnable() {
            public void run() {
                Session access$1500 = SessionManager.this.getSession();
                MiLinkLog.v(SessionManager.TAG, "send data, session manager state: " + SessionManager.this.mState);
                if (access$1500 == null || !access$1500.isAvailable() || !MiAccountManager.getInstance().milinkHasLogined()) {
                    if (!MiAccountManager.getInstance().milinkHasLogined()) {
                        MiLinkLog.v(SessionManager.TAG, "send data, milink not login.");
                        SessionManager.this.login();
                    } else {
                        if (access$1500 == null) {
                            MiLinkLog.v(SessionManager.TAG, "send data, session is null.");
                        } else if (!access$1500.isAvailable()) {
                            MiLinkLog.v(SessionManager.TAG, "send data, session is not available. sessionNo=" + access$1500.getSessionNO());
                        }
                        SessionManager.this.autoOpen();
                    }
                    if (request.requestShouldCached()) {
                        MiLinkLog.v(SessionManager.TAG, "push request in cache, seq=" + request.getSeqNo());
                        SessionManager.this.mSendQueue.add(request);
                        return;
                    }
                    MiLinkLog.v(SessionManager.TAG, "abandon data because session is not available, seq=" + request.getSeqNo());
                    if (request.getData() != null) {
                        request.onDataSendFailed(Error.MNS_NOT_LOGIN, "abandon package,session is not available state=" + SessionManager.this.mState);
                        InternalDataMonitor.getInstance().trace("", 0, request.getData().getCommand(), 4, request.getCreatedTime(), System.currentTimeMillis(), request.getSize(), 0, request.getSeqNo());
                        return;
                    }
                    return;
                }
                MiLinkLog.v(SessionManager.TAG, "send data to session, seq=" + request.getSeqNo());
                access$1500.handleRequest(request);
            }
        });
    }

    private void abandonAllSession() {
        for (Session session : this.mSessionList) {
            if (session.mFlagForSessionManager == 1) {
                session.mFlagForSessionManager = 3;
                if (session.getServerProfile() != null) {
                    MiLinkLog.w(TAG, "abandon all session, ip=" + session.getServerProfile().getServerIP() + ", port=" + session.getServerProfile().getServerPort() + ", protocol=" + session.getServerProfile().getProtocol() + ",No=" + session.getSessionNO());
                } else {
                    MiLinkLog.w(TAG, "abandon all session, s.getServerProfile()=null, sessionNO=" + session.getSessionNO());
                }
            }
        }
    }

    private void getNextServerProfile(Session session, int i) {
        MiLinkLog.i(TAG, "getNextServerProfile " + String.format("[Session No:%d] ", new Object[]{Integer.valueOf(session.getSessionNO())}));
        ServerProfile[] next = this.mServerManager.getNext(session.getServerProfile(), i);
        if (next == null) {
            MiLinkLog.i(TAG, "newServerProfile == null");
            session.mFlagForSessionManager = 3;
            session.close();
            this.mSessionList.remove(session);
            if (!isHaveTryingSession()) {
                MiLinkLog.i(TAG, "already no trying session");
                if (this.mMasterSession == null) {
                    setState(MiLinkSdkState.Disconnected);
                    onOpenSessionResult(516, this.mOpenStartTime);
                    return;
                }
                MiLinkLog.e(TAG, "this session is trying session but masterSession is not null");
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < next.length; i2++) {
            if (next[i2] != null) {
                if (i2 == 0) {
                    session.mFlagForSessionManager = 1;
                    session.openSession(next[i2]);
                } else {
                    Session session2 = new Session();
                    session2.mFlagForSessionManager = 1;
                    this.mSessionList.add(session2);
                    session2.openSession(next[i2]);
                }
            }
        }
    }

    private boolean isHaveTryingSession() {
        for (Session session : this.mSessionList) {
            if (session.mFlagForSessionManager == 1) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void processMessage(Message message) {
        int i;
        switch (message.what) {
            case 1:
                Session session = (Session) message.obj;
                if (session.mFlagForSessionManager == 3) {
                    MiLinkLog.w(TAG, "handleMessage OPEN_SESSION_SUCCESS is AbandonSession No:" + session.getSessionNO());
                    if (session.close()) {
                        this.mSessionList.remove(session);
                        return;
                    }
                    return;
                }
                MiLinkLog.v(TAG, "handleMessage OPEN_SESSION_SUCCESS No:" + session.getSessionNO());
                if (session.mFlagForSessionManager == 1 || session.mFlagForSessionManager == 4) {
                    MiLinkLog.v(TAG, "update session");
                    updateSession(session, message.arg1);
                    return;
                }
                session.close();
                MiLinkLog.e(TAG, "handleMessage OPEN_SESSION_SUCCESS is unknown session No:" + session.getSessionNO());
                return;
            case 4:
                Session session2 = getSession();
                if (session2 != null) {
                    session2.checkRequestsTimeout();
                }
                for (Session session3 : this.mSessionList) {
                    if (session3.mFlagForSessionManager == 1) {
                        session3.checkRequestsTimeout();
                    }
                }
                startTimer();
                return;
            case 6:
                Session session4 = (Session) message.obj;
                int i2 = message.arg1;
                if (session4.mFlagForSessionManager == 3) {
                    MiLinkLog.w(TAG, "handleMessage MSG_TYPE_OPEN_SESSION_HANDSHAKE_FAIL is AbandonSession No:" + session4.getSessionNO());
                    if (session4.close()) {
                        this.mSessionList.remove(session4);
                        return;
                    }
                    return;
                }
                MiLinkLog.e(TAG, String.format("handleMessage SESSION_ERROR reason = %d, No:%d", new Object[]{Integer.valueOf(i2), Integer.valueOf(session4.getSessionNO())}));
                setState(MiLinkSdkState.Disconnected);
                if (i2 == 562) {
                    if (this.mListener != null) {
                        this.mListener.onError(Error.MNS_LOAD_LIBS_FAILED, null, null);
                        return;
                    }
                    return;
                } else if (Network.isAvailable()) {
                    MiLinkLog.e(TAG, " SESSION_ERROR mSessionReconnectTimes=" + this.mSessionReconnectTryTimes + ", mOpenSessionTryTimes=" + this.mOpenSessionTryTimes);
                    if (this.mSessionReconnectTryTimes < 2) {
                        Session session5 = new Session();
                        session5.mFlagForSessionManager = 1;
                        this.mSessionList.add(session5);
                        setState(MiLinkSdkState.Connecting);
                        session5.openSession(session4.getServerProfileForStatistic());
                        this.mSessionReconnectTryTimes++;
                        return;
                    }
                    autoOpen();
                    return;
                } else {
                    MiLinkLog.e(TAG, "on seesion error network isAvailable = false");
                    return;
                }
            case 10:
                MiLinkLog.w(TAG, "release wake lock");
                releaseWakeLock();
                return;
            case 15:
                MiLinkLog.v(TAG, "b2 token expired, relogin");
                MiAccountManager.getInstance().logoffMiLink();
                login();
                return;
            case 16:
                MiLinkLog.v(TAG, "service token expired, call app onEventServiceTokenExpired");
                this.mLoginRunnable.run();
                if (this.mEventCallBack != null) {
                    this.mEventCallBack.onEventServiceTokenExpired();
                    MiLinkLog.v(TAG, " notify app service token expired success");
                    return;
                }
                return;
            case 17:
                MiLinkLog.v(TAG, "no service token, call app onEventGetServiceToken");
                if (this.mEventCallBack != null) {
                    this.mEventCallBack.onEventGetServiceToken();
                    MiLinkLog.v(TAG, " notify app get service token success");
                    return;
                }
                return;
            case 18:
                MiLinkLog.v(TAG, "app should check update.");
                if (this.mEventCallBack != null) {
                    this.mEventCallBack.onEventShouldCheckUpdate();
                    MiLinkLog.v(TAG, " notify app should check update success");
                    return;
                }
                return;
            case 19:
                MiLinkLog.v(TAG, "invalid packet, call app onEventInvalidPacket ");
                if (this.mEventCallBack != null) {
                    this.mEventCallBack.onEventInvalidPacket();
                    MiLinkLog.v(TAG, " notify app invalid packet success");
                    return;
                }
                return;
            case 20:
                long j = 0;
                String str = "";
                if (message.obj != null) {
                    KickMessage kickMessage = (KickMessage) message.obj;
                    i = kickMessage.getType();
                    j = (long) kickMessage.getTime();
                    str = kickMessage.getDevice();
                } else {
                    i = 0;
                }
                MiLinkLog.v(TAG, String.format("kicked by server, type is %d,time is %d s,device is %s call app onKickedByServer", new Object[]{Integer.valueOf(i), Long.valueOf(j), str}));
                this.mLoginRunnable.run();
                if (this.mEventCallBack != null) {
                    this.mEventCallBack.onEventKickedByServer(i, j * 1000, str);
                    MiLinkLog.v(TAG, " notify app kicked by server success");
                    return;
                }
                return;
            case 21:
                Session session6 = (Session) message.obj;
                int i3 = message.arg1;
                if (session6.mFlagForSessionManager == 3) {
                    MiLinkLog.w(TAG, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is AbandonSession No:" + session6.getSessionNO());
                    if (session6.close()) {
                        this.mSessionList.remove(session6);
                        return;
                    }
                    return;
                }
                MiLinkLog.w(TAG, "MSG_TYPE_OPEN_SESSION_FAIL errCode:" + i3);
                if (session6 == this.mMasterSession) {
                    MiLinkLog.w(TAG, String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %s", new Object[]{Integer.valueOf(session6.getSessionNO()), this.mState}));
                    setState(MiLinkSdkState.Disconnected);
                    if (Network.isAvailable()) {
                        autoOpen();
                        return;
                    }
                    return;
                } else if (session6.mFlagForSessionManager == 1) {
                    MiLinkLog.w(TAG, String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %s", new Object[]{Integer.valueOf(session6.getSessionNO()), this.mState}));
                    getNextServerProfile(session6, message.arg1);
                    return;
                } else {
                    MiLinkLog.e(TAG, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:" + session6.getSessionNO());
                    session6.close();
                    return;
                }
            case 22:
                Session session7 = (Session) message.obj;
                if (session7.mFlagForSessionManager == 3) {
                    MiLinkLog.w(TAG, "handleMessage MSG_TYPE_SERVER_LINE_BROKEN is AbandonSession No:" + session7.getSessionNO());
                    if (session7.close()) {
                        this.mSessionList.remove(session7);
                        return;
                    }
                    return;
                }
                MiLinkLog.e(TAG, String.format("handleMessage MSG_TYPE_SERVER_LINE_BROKEN No:%d", new Object[]{Integer.valueOf(session7.getSessionNO())}));
                setState(MiLinkSdkState.Disconnected);
                if (Network.isAvailable()) {
                    this.mServerManager = MiLinkBackupServerManager.getInstance();
                    normalOpen();
                    return;
                }
                MiLinkLog.e(TAG, "on server line broken network isAvailable = false");
                return;
            default:
                MiLinkLog.e(TAG, "handleMessage unknown msgid = " + message.what);
                return;
        }
    }

    public void onAlarmArrived() {
        if (!MiAccountManager.getInstance().appHasLogined()) {
            MiLinkLog.w(TAG, "onAlarmArrived, app not login");
            return;
        }
        MiLinkLog.w(TAG, "onAlarmArrived");
        if (this.mHandler != null) {
            resetAllTryTimes();
            acquireWakeLock();
            MiLinkLog.v(TAG, "session manager state: " + this.mState);
            tryConnectIfNeed();
            this.mHandler.postAtFrontOfQueue(new Runnable() {
                public void run() {
                    MiLinkLog.v(SessionManager.TAG, "send heart beat to session");
                    Session access$1500 = SessionManager.this.getSession();
                    if (access$1500 == null || !access$1500.isAvailable()) {
                        MiLinkLog.v(SessionManager.TAG, "session is not available.");
                    } else if (MiAccountManager.getInstance().milinkHasLogined()) {
                        access$1500.heartBeat();
                    } else if (MiAccountManager.getInstance().appHasLogined()) {
                        SessionManager.this.login();
                    }
                }
            });
        }
    }

    private void releaseWakeLock() {
        synchronized (this.mLock) {
            try {
                if (this.mWakeLock != null) {
                    MiLinkLog.w(TAG, "Wakelock RELEASED :)");
                    this.mWakeLock.release();
                    this.mWakeLock = null;
                }
            } catch (Exception e) {
                MiLinkLog.e(TAG, "releaseWakeLock exception", e);
                this.mWakeLock = null;
            }
        }
    }

    private void acquireWakeLock() {
        acquireWakeLock(5);
    }

    private void acquireWakeLock(int i) {
        if (this.mHandler != null) {
            this.mHandler.removeMessages(10);
            synchronized (this.mLock) {
                try {
                    Context applicationContext = Global.getApplicationContext();
                    if (applicationContext != null && this.mWakeLock == null) {
                        MiLinkLog.w(TAG, "Wakelock ACQUIRED :)");
                        this.mWakeLock = ((PowerManager) applicationContext.getApplicationContext().getSystemService("power")).newWakeLock(1, "mns");
                        this.mWakeLock.acquire();
                    }
                } catch (Exception e) {
                    MiLinkLog.e(TAG, "acquireWakeLock exception", e);
                }
            }
            if (this.mHandler != null) {
                this.mHandler.sendEmptyMessageDelayed(10, (long) i);
            }
        }
    }

    public void login() {
        if (this.mIsLogoff) {
            MiLinkLog.i(TAG, "can not login, app has logoff");
        } else if (this.mState == MiLinkSdkState.Logining) {
            MiLinkLog.v(TAG, "milink is logining");
        } else if (this.mHandler == null) {
        } else {
            if (!MiAccountManager.getInstance().appHasLogined()) {
                MiLinkLog.v(TAG, "app not login, cancel milink login");
                this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(17));
                return;
            }
            if (!this.mAppInited) {
                MiLinkLog.v(TAG, "app not init");
                this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(17));
            }
            if (this.mState == MiLinkSdkState.Disconnected) {
                manualOpen();
            } else if (this.mState != MiLinkSdkState.Connecting) {
                this.mHandler.removeCallbacks(this.mLoginRunnable);
                this.mHandler.post(this.mLoginRunnable);
            }
        }
    }

    public void onLogoffCmdReturn() {
        this.mHandler.removeCallbacks(this.mLogoffRunnable);
        this.mHandler.post(this.mLogoffRunnable);
    }

    public void logoff() {
        MiLinkLog.v(TAG, "milink logoff");
        InternalDataMonitor.getInstance().doPostDataAtOnce();
        if (this.mState == MiLinkSdkState.Logined) {
            this.mMasterSession.logoff();
            this.mHandler.postDelayed(this.mLogoffRunnable, 2000);
            return;
        }
        this.mLogoffRunnable.run();
    }

    /* access modifiers changed from: private */
    public void resetAllTryTimes() {
        this.mOpenSessionTryTimes = 0;
        this.mSessionReconnectTryTimes = 0;
        this.mLoginTryTimes = 0;
    }

    public void onLogining() {
        setState(MiLinkSdkState.Logining);
    }

    public void onLoginResult(boolean z) {
        MiLinkLog.v(TAG, "onLoginResult succeed=" + z);
        if (z) {
            setState(MiLinkSdkState.Logined);
            sendCacheRequest();
            return;
        }
        setState(MiLinkSdkState.Connected);
    }

    private boolean sendCacheRequest() {
        Session session = getSession();
        if (session == null) {
            MiLinkLog.e(TAG, "sendCacheRequest session == null impossible!!!");
            return false;
        }
        MiLinkLog.i(TAG, "sendCacheRequest size = " + this.mSendQueue.size());
        Iterator it = this.mSendQueue.iterator();
        while (it.hasNext()) {
            Request request = (Request) it.next();
            if (request != null || !request.isValidNow()) {
                session.handleRequest(request);
                it.remove();
            } else {
                it.remove();
            }
        }
        return true;
    }

    public boolean onB2TokenExpired() {
        if (this.mHandler == null) {
            return false;
        }
        return this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(15));
    }

    public boolean onServiceTokenExpired() {
        if (this.mHandler == null) {
            return false;
        }
        return this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(16));
    }

    public boolean onKickedByServer(KickMessage kickMessage) {
        if (this.mHandler == null) {
            return false;
        }
        Message obtainMessage = this.mHandler.obtainMessage(20);
        obtainMessage.obj = kickMessage;
        return this.mHandler.sendMessageAtFrontOfQueue(obtainMessage);
    }

    public boolean onShouldCheckUpdate() {
        if (this.mHandler == null) {
            return false;
        }
        return this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(18));
    }

    public boolean onInvalidPacket() {
        if (this.mHandler == null) {
            return false;
        }
        return this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(19));
    }

    public void setCallback(IEventCallback iEventCallback) {
        MiLinkLog.v(TAG, "register event callback.");
        this.mEventCallBack = iEventCallback;
    }

    public boolean tryConnectIfNeed() {
        if (this.mState == MiLinkSdkState.Disconnected) {
            normalOpen();
            return false;
        } else if (this.mState == MiLinkSdkState.Connecting) {
            return false;
        } else {
            if (this.mState == MiLinkSdkState.Connected) {
                login();
            }
            return true;
        }
    }

    public synchronized void trySetMaxRecvSeqNo(int i) {
        if (i > maxRecvSeqNo) {
            maxRecvSeqNo = i;
        }
    }

    public synchronized void trySetMaxSendSeqNo(int i) {
        if (i > maxSendSeqNo) {
            maxSendSeqNo = i;
        }
    }

    private int getEstimateWakeTimeForSendData() {
        int i = maxSendSeqNo - maxRecvSeqNo;
        if (i < 5) {
            return 0;
        }
        if (i < 10) {
            return 1;
        }
        if (i < 15) {
            return 2;
        }
        if (i < 20) {
            return 3;
        }
        if (i < 25) {
            return 4;
        }
        return 5;
    }

    public void tryAcquireWakeLockForSendIfNeed() {
        int estimateWakeTimeForSendData = getEstimateWakeTimeForSendData();
        if (estimateWakeTimeForSendData != 0) {
            acquireWakeLock(estimateWakeTimeForSendData);
        }
    }
}
