package com.mi.milinkforgame.sdk.session;

import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milinkforgame.sdk.proto.PushPacketProto.SimplePushData;

public class MnsCodeCopeWaysWithPush extends IMnsCodeCopeWays {
    private static final String CLASSTAG = "MnsCodeCopeWaysWithPush";
    private String TAG;

    public MnsCodeCopeWaysWithPush(Session session) {
        super(session);
        this.TAG = String.format("[No:%d]%s", new Object[]{Integer.valueOf(session.getSessionNO()), CLASSTAG});
    }

    /* access modifiers changed from: protected */
    public void onOk() {
        MiLinkLog.v(this.TAG, "recv data and to dispatcher");
        if (MnsCmd.MNS_KICK_CMD.equals(this.mRecvData.getCommand())) {
            MiLinkLog.v(this.TAG, "get kick push");
            try {
                SessionManager.getInstance().onKickedByServer(KickMessage.parseFrom(SimplePushData.parseFrom(this.mRecvData.getData()).getPushdata()));
            } catch (InvalidProtocolBufferException e) {
                MiLinkLog.e(this.TAG, e.getMessage());
            }
        } else {
            MnsPacketDispatcher.getInstance().dispatchPacket(this.mRecvData);
        }
        this.mRetCode = this.mRecvData.getBusiCode();
    }

    /* access modifiers changed from: protected */
    public void onB2TokenExpired() {
        SessionManager.getInstance().onB2TokenExpired();
    }

    /* access modifiers changed from: protected */
    public void onServerTokenExpired() {
        SessionManager.getInstance().onServiceTokenExpired();
    }

    /* access modifiers changed from: protected */
    public void onShouldCheckUpdate() {
        SessionManager.getInstance().onShouldCheckUpdate();
    }

    /* access modifiers changed from: protected */
    public void afterHandle() {
        int i;
        if (this.mRecvData.isPushPacket()) {
            InternalDataMonitor instance = InternalDataMonitor.getInstance();
            String str = this.mSession.getServerProfileForStatistic() != null ? this.mSession.getServerProfileForStatistic().getServerIP() : "";
            if (this.mSession.getServerProfileForStatistic() != null) {
                i = this.mSession.getServerProfileForStatistic().getServerPort();
            } else {
                i = 0;
            }
            instance.trace(str, i, this.mRecvData.isPushPacket() ? "milink.push." + this.mRecvData.getCommand() : this.mRecvData.getCommand(), this.mRetCode, System.currentTimeMillis(), System.currentTimeMillis(), 0, this.mRecvData.getResponseSize(), this.mRecvData.getSeqNo());
        }
    }

    /* access modifiers changed from: protected */
    public void onBusinessCmdTimeout() {
    }

    /* access modifiers changed from: protected */
    public void onInternalCmdTimeout() {
    }

    /* access modifiers changed from: protected */
    public void onAccNeedRetry() {
    }

    /* access modifiers changed from: protected */
    public void onKickedByServer() {
    }

    /* access modifiers changed from: protected */
    public void onUnknowMsnCode(int i) {
    }
}
