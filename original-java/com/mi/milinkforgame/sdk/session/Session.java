package com.mi.milinkforgame.sdk.session;

import android.text.TextUtils;
import com.google.protobuf.InvalidProtocolBufferException;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.data.Convert;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager;
import com.mi.milinkforgame.sdk.connection.DomainManager;
import com.mi.milinkforgame.sdk.connection.IConnection;
import com.mi.milinkforgame.sdk.connection.IConnectionCallback;
import com.mi.milinkforgame.sdk.connection.TcpConnection;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.data.Error;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.debug.TrafficMonitor;
import com.mi.milinkforgame.sdk.proto.DataExtraProto.DataExtra;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdBindReq;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdBindRsp;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdHandShakeReq;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdHandShakeReq.Builder;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdHandShakeRsp;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdHeartBeat;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdHeartBeatRsp;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsCmdLoginOff;
import com.mi.milinkforgame.sdk.proto.SystemPacketProto.MnsIpInfo;
import com.mi.milinkforgame.sdk.session.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

public class Session implements IConnectionCallback, MsgProcessor {
    private static final int CONNECTED_STATE = 2;
    private static final int CONNECTING_STATE = 1;
    private static final int FAST_CHECK_PING_TIME_OUT = 6000;
    private static final int HANDSHAKE_INITED_STATE = 4;
    private static final int HANDSHAKE_INITING_STATE = 3;
    private static final int MSG_CHECK_TIMEOUT = 3;
    private static final int MSG_CONNECT = 1;
    private static final int MSG_DISCONNECT = 4;
    private static final int MSG_HANDLE_REQUEST = 2;
    private static final int NO_CONNECT_STATE = 0;
    private static final String TAG = "Session";
    private ResponseListener mBindRspListener;
    private boolean mCanClose;
    /* access modifiers changed from: private */
    public String mClientIp;
    /* access modifiers changed from: private */
    public String mClientIsp;
    private IConnection mConn;
    private long mConnectStartTime;
    private int mContinuousRecv110Count;
    private int mCurState;
    private long mDnsWaitTime;
    public int mFlagForSessionManager;
    private ResponseListener mHandShakeRspListener;
    /* access modifiers changed from: private */
    public Runnable mHandlePendingStatisticTimeoutedRunnable;
    private ResponseListener mHeartBeatRspListener;
    /* access modifiers changed from: private */
    public boolean mIsHandshakeRequestFailed;
    /* access modifiers changed from: private */
    public long mLastReceivedFastPingTime;
    private long mLastSendFastCheckPingTime;
    /* access modifiers changed from: private */
    public String mLogTag;
    private ResponseListener mLogoffRspListener;
    /* access modifiers changed from: private */
    public boolean mNeedClientInfo;
    private long mOpenSessionDoneTime;
    private OpenSessionSucessReturnInfo mOpenSessionSucessReturnInfo;
    /* access modifiers changed from: private */
    public ConcurrentHashMap<Integer, Request> mPendingStatisticTimeoutedRequestMap;
    private ReceiveBufferSink mRecBufSink;
    private ReceiveBuffer mRecBuffer;
    /* access modifiers changed from: private */
    public RecvDataProcessUtil mRecvDataProcessUtil;
    /* access modifiers changed from: private */
    public ConcurrentHashMap<Integer, Request> mRequestMap;
    /* access modifiers changed from: private */
    public ServerProfile mServerProfile;
    private ServerProfile mServerProfileForStatistic;
    private int mSessionNO;

    public Session() {
        this.mCurState = 0;
        this.mNeedClientInfo = true;
        this.mSessionNO = 0;
        this.mConnectStartTime = 0;
        this.mOpenSessionDoneTime = 0;
        this.mDnsWaitTime = 0;
        this.mRequestMap = new ConcurrentHashMap<>();
        this.mPendingStatisticTimeoutedRequestMap = new ConcurrentHashMap<>();
        this.mLastSendFastCheckPingTime = 0;
        this.mLastReceivedFastPingTime = 0;
        this.mLogTag = "Session";
        this.mRecvDataProcessUtil = new RecvDataProcessUtil(this);
        this.mContinuousRecv110Count = 0;
        this.mCanClose = false;
        this.mRecBufSink = new ReceiveBufferSink() {
            public boolean onRecvDownStream(int i, byte[] bArr) {
                boolean z = false;
                if (bArr == null) {
                    return false;
                }
                PacketData packetData = null;
                try {
                    packetData = StreamUtil.getDownPacket(String.format("[No:%d]", new Object[]{Integer.valueOf(i)}), bArr);
                } catch (IOException e) {
                    MiLinkLog.e(Session.this.mLogTag, "decode downstream failed", e);
                }
                if (packetData == null) {
                    return false;
                }
                Session session = Session.this;
                if (!packetData.hasClientInfo()) {
                    z = true;
                }
                session.mNeedClientInfo = z;
                MiLinkLog.v(Session.this.mLogTag, " onRecvDownStream cmd=" + packetData.getCommand() + " mnscode=" + packetData.getMnsCode() + " seq=" + packetData.getSeqNo() + " and set mNeedClientInfo=" + Session.this.mNeedClientInfo);
                SessionManager.getInstance().trySetMaxRecvSeqNo(packetData.getSeqNo());
                TrafficMonitor.getInstance().traffic(packetData.getCommand(), bArr.length);
                Request request = (Request) Session.this.mPendingStatisticTimeoutedRequestMap.remove(Integer.valueOf(packetData.getSeqNo()));
                Request request2 = (Request) Session.this.mRequestMap.get(Integer.valueOf(packetData.getSeqNo()));
                if (request2 != null) {
                    Session.this.mRequestMap.remove(Integer.valueOf(packetData.getSeqNo()));
                    if (Session.this.isFastCheckPing(request2)) {
                        Session.this.mLastReceivedFastPingTime = System.currentTimeMillis();
                        SessionManager.getInstance().getHandler().removeCallbacks(Session.this.mHandlePendingStatisticTimeoutedRunnable);
                        SessionManager.getInstance().getHandler().postAtFrontOfQueue(Session.this.mHandlePendingStatisticTimeoutedRunnable);
                    }
                } else if (request != null) {
                    request2 = request;
                }
                Session.this.mRecvDataProcessUtil.selectHandleUtil(packetData, request2).handle();
                return true;
            }

            public boolean onAddTimeout(int i, int i2) {
                return false;
            }
        };
        this.mHandlePendingStatisticTimeoutedRunnable = new Runnable() {
            public void run() {
                Session.this.handlePendingStatisticTimeoutedRequestMap();
            }
        };
        this.mHandShakeRspListener = new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                MnsCmdHandShakeRsp mnsCmdHandShakeRsp;
                ArrayList arrayList;
                ArrayList arrayList2 = null;
                MiLinkLog.v(Session.this.mLogTag, "hand shake success session " + Session.this.mServerProfile + ", seq=" + packetData.getSeqNo());
                try {
                    mnsCmdHandShakeRsp = MnsCmdHandShakeRsp.parseFrom(packetData.getData());
                } catch (InvalidProtocolBufferException e) {
                    mnsCmdHandShakeRsp = null;
                }
                if (mnsCmdHandShakeRsp == null) {
                    MiLinkLog.e(Session.this.mLogTag, "handshake response is null");
                    Session.this.onOpenSessionHandshakeSuccess(null);
                    return;
                }
                String clientinfo = mnsCmdHandShakeRsp.getClientinfo();
                MiLinkLog.v(Session.this.mLogTag, "clientInfo:" + clientinfo);
                Session.this.mClientIp = "";
                Session.this.mClientIsp = "";
                if (!TextUtils.isEmpty(clientinfo)) {
                    String[] split = clientinfo.split("#");
                    if (split != null) {
                        Session.this.mClientIp = split[0];
                        if (split.length > 1) {
                            Session.this.mClientIsp = split[1];
                        }
                    }
                }
                if (mnsCmdHandShakeRsp.getRedirectList() != null) {
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (int i2 = 0; i2 < mnsCmdHandShakeRsp.getRedirectCount(); i2++) {
                        MnsIpInfo redirect = mnsCmdHandShakeRsp.getRedirect(i2);
                        if (redirect.getIp() > 0) {
                            arrayList3.add(new ServerProfile(Convert.intToIPv4(redirect.getIp()), 0, 1, 5));
                        }
                        if (i2 == 0) {
                            String remark = redirect.getRemark();
                            if (!TextUtils.isEmpty(remark)) {
                                String[] split2 = remark.split("#");
                                if (split2 != null) {
                                    for (String str : split2) {
                                        if (!TextUtils.isEmpty(str)) {
                                            arrayList4.add(new ServerProfile(str, 0, 1, 5));
                                        }
                                    }
                                }
                            }
                        }
                        MiLinkLog.v(Session.this.mLogTag, "milink server ip:" + Convert.intToIPv4(redirect.getIp()) + " port:" + redirect.getPort() + " remark:" + redirect.getRemark());
                    }
                    arrayList2 = arrayList4;
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                Session.this.onOpenSessionHandshakeSuccess(new OpenSessionSucessReturnInfo(Session.this.mClientIp, Session.this.mClientIsp, arrayList, arrayList2));
            }

            public void onDataSendFailed(int i, String str) {
                MiLinkLog.v(Session.this.mLogTag, "hand shake error session, errCode=" + i + ", errMsg=" + str);
                Session.this.mIsHandshakeRequestFailed = true;
                Session.this.onOpenSessionHandshakeFail(i);
            }
        };
        this.mBindRspListener = new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                MiLinkLog.v(Session.this.mLogTag, "bind response mns code: " + packetData.getMnsCode());
                if (packetData.getMnsCode() == 0) {
                    MnsCmdBindRsp mnsCmdBindRsp = null;
                    try {
                        mnsCmdBindRsp = MnsCmdBindRsp.parseFrom(packetData.getData());
                    } catch (InvalidProtocolBufferException e) {
                    }
                    if (mnsCmdBindRsp == null) {
                        MiLinkLog.w(Session.this.mLogTag, "fastlogin response = null");
                        SessionManager.getInstance().onLoginResult(false);
                        return;
                    }
                    if (mnsCmdBindRsp.getB2() == null || mnsCmdBindRsp.getGTKEYB2() == null) {
                        MiLinkLog.w(Session.this.mLogTag, "fastlogin response.getB2() = null or response.getGTKEYB2() = null");
                    } else {
                        MiAccountManager.getInstance().loginMiLink(String.valueOf(mnsCmdBindRsp.getUid()), mnsCmdBindRsp.getB2(), mnsCmdBindRsp.getGTKEYB2());
                    }
                    SessionManager.getInstance().setInitByAppLogin(false);
                    ConfigManager.getInstance().updateSuid(mnsCmdBindRsp.getSUID());
                    SessionManager.getInstance().onLoginResult(true);
                    Session.this.heartBeat();
                    return;
                }
                SessionManager.getInstance().onLoginResult(false);
            }

            public void onDataSendFailed(int i, String str) {
                MiLinkLog.v(Session.this.mLogTag, "bind onDataSendFailed errCode= " + i + ", errMsg=" + str);
                SessionManager.getInstance().onLoginResult(false);
            }
        };
        this.mHeartBeatRspListener = new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                MiLinkLog.v(Session.this.mLogTag, "heartbeat success");
                if (packetData != null && packetData.getData() != null) {
                    try {
                        MnsCmdHeartBeatRsp parseFrom = MnsCmdHeartBeatRsp.parseFrom(packetData.getData());
                        if (parseFrom != null && ConfigManager.getInstance().updateConfig(parseFrom.getTimeStamp(), parseFrom.getJsonconfig())) {
                            float engineConfigRatio = ConfigManager.getInstance().getEngineConfigRatio();
                            MiLinkLog.v(Session.this.mLogTag, "engineConfigRatio=" + engineConfigRatio);
                            DataExtra build = DataExtra.newBuilder().setEngineratio(engineConfigRatio).build();
                            PacketData packetData2 = new PacketData();
                            packetData2.setCommand(Const.DATA_EXTRA_CMD);
                            packetData2.setData(build.toByteArray());
                            MnsPacketDispatcher.getInstance().dispatchPacket(packetData2);
                        }
                    } catch (InvalidProtocolBufferException e) {
                    }
                }
            }

            public void onDataSendFailed(int i, String str) {
                MiLinkLog.v(Session.this.mLogTag, "heartbeat failed");
            }
        };
        this.mLogoffRspListener = new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                SessionManager.getInstance().onLogoffCmdReturn();
            }

            public void onDataSendFailed(int i, String str) {
                SessionManager.getInstance().onLogoffCmdReturn();
            }
        };
        this.mIsHandshakeRequestFailed = false;
        this.mClientIp = "";
        this.mClientIsp = "";
        this.mSessionNO = SessionConst.generateSessionNO();
        this.mLogTag = String.format("[No:%d]", new Object[]{Integer.valueOf(this.mSessionNO)}) + "Session";
        this.mConn = null;
        this.mServerProfile = null;
        this.mRecBuffer = new ReceiveBuffer(this.mRecBufSink, 65536, this.mSessionNO);
        this.mCurState = 0;
    }

    public int getSessionNO() {
        return this.mSessionNO;
    }

    public long getOpenSessionTimecost() {
        return this.mOpenSessionDoneTime - this.mConnectStartTime;
    }

    public long getDnsWaitTime() {
        return this.mDnsWaitTime;
    }

    public boolean openSession(ServerProfile serverProfile) {
        boolean z;
        boolean z2;
        resetContinuousRecv110Count();
        this.mIsHandshakeRequestFailed = false;
        this.mNeedClientInfo = true;
        if (serverProfile == null || serverProfile.getProtocol() == 0) {
            MiLinkLog.v(this.mLogTag, "openSession fail, serverprofile=" + serverProfile);
            onOpenSessionBuildConnectFail(Error.IP_ADDRESS_NULL);
            return false;
        }
        this.mCurState = 1;
        this.mLastSendFastCheckPingTime = 0;
        if (this.mServerProfile == null || this.mServerProfile.getProtocol() != serverProfile.getProtocol()) {
            MiLinkLog.v(this.mLogTag, "openSession if");
            if (this.mConn != null) {
                this.mConn.stop();
            }
            if (serverProfile.getProtocol() == 1) {
                this.mConn = new TcpConnection(this.mSessionNO, this);
            }
            this.mServerProfile = serverProfile;
            try {
                z = this.mConn.start();
            } catch (Exception e) {
                MiLinkLog.e(this.mLogTag, "connection start failed", e);
                z = false;
            }
            if (!z) {
                onOpenSessionBuildConnectFail(Error.MNS_LOAD_LIBS_FAILED);
                return false;
            }
        } else {
            MiLinkLog.v(this.mLogTag, "openSession else");
            if (this.mConn == null && serverProfile.getProtocol() == 1) {
                this.mConn = new TcpConnection(this.mSessionNO, this);
            }
            if (!this.mConn.isRunning()) {
                this.mServerProfile = serverProfile;
                try {
                    z2 = this.mConn.start();
                } catch (Exception e2) {
                    MiLinkLog.e(this.mLogTag, "connection start failed", e2);
                    z2 = false;
                }
                if (!z2) {
                    onOpenSessionBuildConnectFail(Error.MNS_LOAD_LIBS_FAILED);
                    return false;
                }
            }
        }
        this.mServerProfile = serverProfile;
        postMessage(1, null, 0);
        return true;
    }

    public ServerProfile getServerProfile() {
        return this.mServerProfile;
    }

    public ServerProfile getServerProfileForStatistic() {
        return this.mServerProfileForStatistic;
    }

    public boolean isAvailable() {
        switch (this.mCurState) {
            case 4:
                return true;
            default:
                return false;
        }
    }

    public boolean isConnected() {
        switch (this.mCurState) {
            case 2:
            case 3:
            case 4:
                return true;
            default:
                return false;
        }
    }

    public boolean handleRequest(Request request) {
        boolean z = false;
        if (request == null) {
            MiLinkLog.e(this.mLogTag, "handleRequest request == null");
        } else {
            MiLinkLog.v(this.mLogTag, "handleRequest seq=" + request.getSeqNo() + " mNeedClientInfo=" + this.mNeedClientInfo + Token.SEPARATOR + this.mServerProfile);
            request.setHandleSessionNO(this.mSessionNO);
            z = postMessage(2, request, 0);
            if (this.mConn != null) {
                this.mConn.wakeUp();
            }
        }
        return z;
    }

    private boolean postMessage(int i, Object obj, int i2) {
        boolean z = false;
        if (this.mConn == null) {
            MiLinkLog.e(this.mLogTag, "postMessage " + i + " mConn == null!!!!");
        } else {
            try {
                z = this.mConn.postMessage(i, obj, i2, this);
                if (!z) {
                    MiLinkLog.e(this.mLogTag, "mMessage must be full ! uMsg = " + i);
                }
            } catch (NullPointerException e) {
            }
        }
        return z;
    }

    public boolean close() {
        if (!this.mCanClose) {
            MiLinkLog.i(this.mLogTag, "connecting! can not close");
            return false;
        }
        if (this.mConn != null) {
            MiLinkLog.i(this.mLogTag, "stop begin");
            this.mConn.stop();
            this.mConn = null;
            this.mServerProfile = null;
            this.mCurState = 0;
            MiLinkLog.i(this.mLogTag, "stop over");
        }
        return true;
    }

    public void disConnect() {
        disConnect(-1);
    }

    public void disConnect(int i) {
        MiLinkLog.i(this.mLogTag, "disConnect, errorCallBackErrorCode=" + i);
        postMessage(4, null, i);
    }

    public void onMsgProc(int i, Object obj, int i2) {
        String serverIP;
        MiLinkLog.v(this.mLogTag, "onMsgProc, uMsg=" + i + ", wParam=" + i2);
        switch (i) {
            case 1:
                if (this.mServerProfile == null) {
                    MiLinkLog.e(this.mLogTag, "OnMsgProc mServerProfile == null!!!");
                    onOpenSessionBuildConnectFail(1);
                    return;
                }
                this.mServerProfileForStatistic = this.mServerProfile;
                long currentTimeMillis = System.currentTimeMillis();
                if (MiLinkIpInfoManager.isDefaultHost(this.mServerProfile.getServerIP())) {
                    serverIP = DomainManager.getInstance().getDomainIP(this.mServerProfile.getServerIP());
                    if (serverIP == null) {
                        onOpenSessionBuildConnectFail(1);
                        return;
                    }
                    this.mServerProfile.setServerIP(serverIP);
                } else {
                    serverIP = this.mServerProfile.getServerIP();
                }
                MiLinkLog.i(this.mLogTag, "connect to " + this.mServerProfile);
                SessionManager.getInstance().getOpenSessionAddressSet().add(this.mServerProfile.getServerIP() + ":" + this.mServerProfile.getServerPort());
                this.mConnectStartTime = System.currentTimeMillis();
                this.mDnsWaitTime = this.mConnectStartTime - currentTimeMillis;
                if (this.mConn != null) {
                    this.mConn.connect(serverIP, this.mServerProfile.getServerPort(), this.mServerProfile.getProxyIP(), this.mServerProfile.getPorxyPort(), ConfigManager.getInstance().getConnetionTimeout(), 0);
                    return;
                }
                return;
            case 2:
                Request request = (Request) obj;
                if (request == null) {
                    return;
                }
                if (!request.isValidNow()) {
                    MiLinkLog.e(this.mLogTag, String.format("seq=%d,cmd=%s is invalid", new Object[]{Integer.valueOf(request.getSeqNo()), request.getData().getCommand()}));
                    this.mRequestMap.remove(Integer.valueOf(request.getSeqNo()));
                    request.onDataSendFailed(Error.MNS_PACKAGE_INVALID, "package is already over the valid time");
                    return;
                }
                request.setSentTime(System.currentTimeMillis());
                PacketData data = request.getData();
                String command = data.getCommand();
                if (MnsCmd.MNS_BIND.equals(command)) {
                    this.mNeedClientInfo = true;
                    MiLinkLog.v(this.mLogTag, "set mNeedClientInfo=true when send login or fastlogin");
                }
                data.setNeedClientInfo(this.mNeedClientInfo);
                byte[] bytes = request.toBytes();
                if (data.needResponse()) {
                    this.mRequestMap.put(Integer.valueOf(request.getSeqNo()), request);
                }
                if (isFastCheckPing(request)) {
                    this.mLastSendFastCheckPingTime = System.currentTimeMillis();
                    SessionManager.getInstance().getHandler().postDelayed(this.mHandlePendingStatisticTimeoutedRunnable, 6200);
                }
                if (bytes != null) {
                    MiLinkLog.v(this.mLogTag, "connection send data, seq=" + request.getSeqNo());
                    if (this.mConn.sendData(bytes, request.getSeqNo(), request.getTimeOut())) {
                        TrafficMonitor.getInstance().traffic(command, bytes.length);
                        return;
                    }
                    return;
                }
                MiLinkLog.w(this.mLogTag, "connection send data, but data = null");
                return;
            case 3:
                checkIsReadTimeOut();
                return;
            case 4:
                if (this.mConn != null) {
                    this.mConn.disconnect();
                }
                this.mCurState = 0;
                if (i2 > 0) {
                    onSessionError(i2);
                    return;
                }
                return;
            default:
                MiLinkLog.e(this.mLogTag, "OnMsgProc unknow uMsgID = " + i);
                return;
        }
    }

    private void handShake() {
        this.mCurState = 3;
        Builder newBuilder = MnsCmdHandShakeReq.newBuilder();
        newBuilder.setType(1);
        MnsCmdHandShakeReq build = newBuilder.build();
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCmd.MNS_HAND_SHAKE);
        packetData.setSeqNo(Global.getSequence());
        packetData.setData(build.toByteArray());
        Request request = new Request(packetData, this.mHandShakeRspListener, false, true, 0);
        MiLinkLog.v(this.mLogTag, "start hand shake, seq=" + request.getSeqNo());
        handleRequest(request);
    }

    public void ping() {
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCmd.MNS_PING_CMD);
        packetData.setSeqNo(Global.getSequence());
        Request request = new Request(packetData, null, true, true, 0);
        MiLinkLog.v(this.mLogTag, "start ping, seq=" + request.getSeqNo());
        handleRequest(request);
    }

    private void fastCheckPing() {
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCmd.MNS_PING_CMD);
        packetData.setSeqNo(Global.getSequence());
        Request request = new Request(packetData, null, true, true, 0);
        request.setTimeOut(FAST_CHECK_PING_TIME_OUT);
        MiLinkLog.v(this.mLogTag, "start fast ping, seq=" + request.getSeqNo());
        handleRequest(request);
    }

    public void bind() {
        MnsCmdBindReq.Builder newBuilder = MnsCmdBindReq.newBuilder();
        newBuilder.setGid(MiAccountManager.getInstance().getGId());
        newBuilder.setB2(MiAccountManager.getInstance().getB2TokenStr());
        MiAccountManager.getInstance().generateSSecurity();
        newBuilder.setPrivacyKey(MiAccountManager.getInstance().getPrivateKeyStr());
        if (!TextUtils.isEmpty(ConfigManager.getInstance().getSuid())) {
            newBuilder.setSUID(ConfigManager.getInstance().getSuid());
            MiLinkLog.v(this.mLogTag, "start fastlogin, suid=" + ConfigManager.getInstance().getSuid());
        } else {
            MiLinkLog.v(this.mLogTag, "start fastlogin, suid is empty");
        }
        newBuilder.setPassportlogin(SessionManager.getInstance().isInitByAppLogin());
        newBuilder.setOnoff(true);
        PacketData packetData = new PacketData();
        packetData.setSeqNo(Global.getSequence());
        packetData.setData(newBuilder.build().toByteArray());
        packetData.setCommand(MnsCmd.MNS_BIND);
        Request request = new Request(packetData, this.mBindRspListener, false, true, 4);
        MiLinkLog.v(this.mLogTag, "start bind, seq=" + request.getSeqNo());
        handleRequest(request);
        SessionManager.getInstance().onLogining();
    }

    public void heartBeat() {
        MnsCmdHeartBeat.Builder timeStamp = MnsCmdHeartBeat.newBuilder().setTimeStamp(ConfigManager.getInstance().getConfigTimeStamp());
        if (!TextUtils.isEmpty(ConfigManager.getInstance().getSuid())) {
            timeStamp.setSUID(ConfigManager.getInstance().getSuid());
            MiLinkLog.v(this.mLogTag, "start heartbeat, suid=" + ConfigManager.getInstance().getSuid());
        } else {
            MiLinkLog.v(this.mLogTag, "start heartbeat, suid is empty");
        }
        PacketData packetData = new PacketData();
        packetData.setCommand("milink.heartbeat");
        packetData.setSeqNo(Global.getSequence());
        packetData.setData(timeStamp.build().toByteArray());
        Request request = new Request(packetData, this.mHeartBeatRspListener, false, true, 2);
        MiLinkLog.v(this.mLogTag, "start heartbeat, seq=" + request.getSeqNo());
        handleRequest(request);
    }

    public void logoff() {
        MnsCmdLoginOff.Builder newBuilder = MnsCmdLoginOff.newBuilder();
        if (!TextUtils.isEmpty(ConfigManager.getInstance().getSuid())) {
            newBuilder.setSUID(ConfigManager.getInstance().getSuid());
        }
        MnsCmdLoginOff build = newBuilder.build();
        PacketData packetData = new PacketData();
        packetData.setNeedResponse(false);
        packetData.setCommand(MnsCmd.MNS_LOGOFF);
        packetData.setSeqNo(Global.getSequence());
        packetData.setData(build.toByteArray());
        Request request = new Request(packetData, this.mLogoffRspListener, false, true, 2);
        MiLinkLog.v(this.mLogTag, "start logoff, seq=" + request.getSeqNo());
        handleRequest(request);
    }

    public boolean onStart() {
        return false;
    }

    public boolean onConnect(boolean z, int i) {
        this.mCanClose = true;
        if (z) {
            onOpenSessionBuildConnectSuccess();
        } else {
            onOpenSessionBuildConnectFail(i);
        }
        return true;
    }

    public boolean onDisconnect() {
        MiLinkLog.i(this.mLogTag, "OnDisconnect");
        this.mRecBuffer.reset();
        for (Integer num : this.mRequestMap.keySet()) {
            Request request = (Request) this.mRequestMap.get(num);
            if (!(request == null || request.getListener() == null)) {
                request.getListener().onDataSendFailed(516, "network broken");
            }
        }
        this.mRequestMap.clear();
        handlePendingStatisticTimeoutedRequestMap();
        this.mPendingStatisticTimeoutedRequestMap.clear();
        return true;
    }

    public boolean onError(int i) {
        if (!this.mIsHandshakeRequestFailed) {
            MiLinkLog.e(this.mLogTag, "onError socketStatus " + i + ", mCurState=" + this.mCurState);
            switch (this.mCurState) {
                case 0:
                case 1:
                case 2:
                    onOpenSessionBuildConnectFail(1);
                    break;
                case 3:
                    if (i != 526) {
                        onOpenSessionHandshakeFail(2);
                        break;
                    } else {
                        onOpenSessionHandshakeFail(3);
                        break;
                    }
                case 4:
                    onSessionError(i);
                    break;
                default:
                    MiLinkLog.e(this.mLogTag, "onError wrong state = " + this.mCurState);
                    break;
            }
        } else {
            MiLinkLog.e(this.mLogTag, "onError but handshake failed has already notice SM, socketStatus:" + i + ", mCurState=" + this.mCurState);
            this.mIsHandshakeRequestFailed = false;
        }
        return true;
    }

    public boolean onTimeOut(int i, int i2) {
        MiLinkLog.v(this.mLogTag, "send time out: seq=" + i);
        return false;
    }

    public boolean onRecv(byte[] bArr) {
        MiLinkLog.v(this.mLogTag, "recv data:" + bArr.length);
        if (this.mRecBuffer == null) {
            return true;
        }
        try {
            this.mRecBuffer.append(bArr);
            return true;
        } catch (InvalidPacketExecption e) {
            disConnect(517);
            if (e.errCode == 1) {
                SessionManager.getInstance().onInvalidPacket();
            }
            return false;
        }
    }

    public boolean onSendBegin(int i) {
        MiLinkLog.v(this.mLogTag, "send begin: seq=" + i);
        return false;
    }

    public boolean onSendEnd(int i) {
        MiLinkLog.v(this.mLogTag, "send end: seq=" + i);
        SessionManager.getInstance().trySetMaxSendSeqNo(i);
        SessionManager.getInstance().tryAcquireWakeLockForSendIfNeed();
        return false;
    }

    private void onOpenSessionBuildConnectFail(int i) {
        this.mOpenSessionDoneTime = System.currentTimeMillis();
        this.mCurState = 0;
        SessionManager.getInstance().onOpenSessionFail(this, i);
    }

    private void onOpenSessionBuildConnectSuccess() {
        this.mCurState = 2;
        handShake();
    }

    /* access modifiers changed from: private */
    public void onOpenSessionHandshakeFail(int i) {
        this.mOpenSessionDoneTime = System.currentTimeMillis();
        this.mCurState = 2;
        SessionManager.getInstance().onOpenSessionFail(this, i);
    }

    public OpenSessionSucessReturnInfo getOpenSessionSucessReturnInfo() {
        return this.mOpenSessionSucessReturnInfo;
    }

    /* access modifiers changed from: private */
    public void onOpenSessionHandshakeSuccess(OpenSessionSucessReturnInfo openSessionSucessReturnInfo) {
        this.mOpenSessionDoneTime = System.currentTimeMillis();
        this.mCurState = 4;
        this.mOpenSessionSucessReturnInfo = openSessionSucessReturnInfo;
        SessionManager.getInstance().onOpenSessionSuccess(this, 0);
    }

    private void onSessionError(int i) {
        this.mCurState = 0;
        SessionManager.getInstance().onSessionError(this, i);
    }

    public boolean checkRequestsTimeout() {
        if (!isConnected() || this.mRequestMap.isEmpty()) {
            return true;
        }
        return postMessage(3, null, 0);
    }

    /* access modifiers changed from: private */
    public boolean isFastCheckPing(Request request) {
        return request.isPingRequest() && request.getTimeOut() == FAST_CHECK_PING_TIME_OUT;
    }

    private void checkIsReadTimeOut() {
        boolean z = false;
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        boolean z2 = false;
        boolean z3 = false;
        for (Integer intValue : this.mRequestMap.keySet()) {
            int intValue2 = intValue.intValue();
            Request request = (Request) this.mRequestMap.get(Integer.valueOf(intValue2));
            if (request != null) {
                if (isFastCheckPing(request)) {
                    if (request.isTimeout()) {
                        z2 = true;
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                }
                if (request.isTimeout()) {
                    this.mRequestMap.remove(Integer.valueOf(intValue2));
                    concurrentLinkedQueue.add(request);
                }
            }
            z3 = z3;
            z2 = z2;
        }
        Iterator it = concurrentLinkedQueue.iterator();
        while (it.hasNext()) {
            Request request2 = (Request) it.next();
            MiLinkLog.e(this.mLogTag, "Request read time out, seq=" + request2.getSeqNo());
            if (request2.getListener() != null) {
                request2.getListener().onDataSendFailed(515, "request time out");
            }
            this.mPendingStatisticTimeoutedRequestMap.put(Integer.valueOf(request2.getSeqNo()), request2);
            z = true;
        }
        concurrentLinkedQueue.clear();
        if (z) {
            MiLinkLog.e(this.mLogTag, Network.getCurrentNetworkDetailInfo().toString());
        }
        if (z2) {
            MiLinkLog.e(this.mLogTag, "checkIsReadTimeOut, fast ping timeout, reconnect");
            disConnect(515);
        } else if (!z3 && z) {
            fastCheckPing();
        }
    }

    private boolean isJustSentFastCheckPing() {
        return System.currentTimeMillis() - this.mLastSendFastCheckPingTime <= 12000;
    }

    /* access modifiers changed from: private */
    public void handlePendingStatisticTimeoutedRequestMap() {
        String command;
        int i;
        String command2;
        int i2;
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it = this.mPendingStatisticTimeoutedRequestMap.entrySet().iterator();
        while (it.hasNext()) {
            Request request = (Request) ((Entry) it.next()).getValue();
            MiLinkLog.v(this.mLogTag, "handleTimeoutedRequest seq=" + request.getSeqNo());
            if (!isJustSentFastCheckPing()) {
                return;
            }
            if (this.mLastSendFastCheckPingTime <= this.mLastReceivedFastPingTime) {
                MiLinkLog.e(this.mLogTag, "seq=" + request.getSeqNo() + " timeouted, reason:ret_code_time_out");
                if (request.getData() == null) {
                    command = MnsCmd.MNS_PING_CMD;
                } else {
                    command = request.getData().getCommand();
                }
                InternalDataMonitor instance = InternalDataMonitor.getInstance();
                String str = this.mServerProfileForStatistic != null ? this.mServerProfileForStatistic.getServerIP() : "";
                if (this.mServerProfileForStatistic != null) {
                    i = this.mServerProfileForStatistic.getServerPort();
                } else {
                    i = 0;
                }
                instance.trace(str, i, command, 1, request.getSentTime(), currentTimeMillis, request.getSize(), 0, request.getSeqNo());
                it.remove();
            } else if (request.getSentTime() < this.mLastSendFastCheckPingTime) {
                MiLinkLog.e(this.mLogTag, "seq=" + request.getSeqNo() + " timeouted, reason:ret_code_ping_time_out");
                if (request.getData() == null) {
                    command2 = MnsCmd.MNS_PING_CMD;
                } else {
                    command2 = request.getData().getCommand();
                }
                InternalDataMonitor instance2 = InternalDataMonitor.getInstance();
                String str2 = this.mServerProfileForStatistic != null ? this.mServerProfileForStatistic.getServerIP() : "";
                if (this.mServerProfileForStatistic != null) {
                    i2 = this.mServerProfileForStatistic.getServerPort();
                } else {
                    i2 = 0;
                }
                instance2.trace(str2, i2, command2, 3, request.getSentTime(), currentTimeMillis, request.getSize(), 0, request.getSeqNo());
                it.remove();
            }
        }
    }

    public void onAccNeedRetryWithClientInfo(Request request) {
        MiLinkLog.w("Session", "onAccNeedRetryWithClientInfo");
        this.mNeedClientInfo = true;
        if (request.getRetryCount() < 1) {
            request.addRetryCount();
            handleRequest(request);
            return;
        }
        MiLinkLog.w("Session", "try 118 too many times");
    }

    public void addContinuousRecv110Count() {
        this.mContinuousRecv110Count++;
    }

    public void resetContinuousRecv110Count() {
        this.mContinuousRecv110Count = 0;
    }

    public boolean checkExceedMaxContinuousRecv110Count() {
        MiLinkLog.v(this.mLogTag, "mContinuousRecv110Count = " + this.mContinuousRecv110Count);
        if (this.mContinuousRecv110Count < 3) {
            return true;
        }
        onServerLineBroken();
        return false;
    }

    public void onServerLineBroken() {
        SessionManager.getInstance().onServerLineBroken(this);
    }

    public String getClientIp() {
        return this.mClientIp;
    }

    public String getClientIsp() {
        return this.mClientIsp;
    }
}
