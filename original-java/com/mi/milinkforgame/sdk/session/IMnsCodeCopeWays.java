package com.mi.milinkforgame.sdk.session;

import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.proto.PushPacketProto.KickMessage;

public abstract class IMnsCodeCopeWays {
    public static String TAG = "IMnsCodeCopeWays";
    protected PacketData mRecvData;
    protected Request mRequeset;
    protected int mRetCode;
    protected Session mSession;

    /* access modifiers changed from: protected */
    public abstract void afterHandle();

    /* access modifiers changed from: protected */
    public abstract void onAccNeedRetry();

    /* access modifiers changed from: protected */
    public abstract void onB2TokenExpired();

    /* access modifiers changed from: protected */
    public abstract void onBusinessCmdTimeout();

    /* access modifiers changed from: protected */
    public abstract void onInternalCmdTimeout();

    /* access modifiers changed from: protected */
    public abstract void onOk();

    /* access modifiers changed from: protected */
    public abstract void onServerTokenExpired();

    /* access modifiers changed from: protected */
    public abstract void onShouldCheckUpdate();

    /* access modifiers changed from: protected */
    public abstract void onUnknowMsnCode(int i);

    public IMnsCodeCopeWays(Session session) {
        this.mSession = session;
    }

    public void setParam(PacketData packetData, Request request) {
        this.mRecvData = packetData;
        this.mRequeset = request;
    }

    /* access modifiers changed from: protected */
    public void onTimeOut() {
        if (this.mRequeset == null) {
            return;
        }
        if (this.mRequeset.isInternalRequest()) {
            onInternalCmdTimeout();
        } else {
            onBusinessCmdTimeout();
        }
    }

    /* access modifiers changed from: protected */
    public void onKickedByServer() {
        try {
            SessionManager.getInstance().onKickedByServer(KickMessage.parseFrom(this.mRecvData.getData()));
        } catch (InvalidProtocolBufferException e) {
            MiLinkLog.e(TAG, (Throwable) e);
        }
    }

    /* access modifiers changed from: protected */
    public void onServerSpecialLineBroken() {
        this.mRequeset.onDataSendFailed(this.mRecvData.getMnsCode(), "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN");
        this.mSession.checkExceedMaxContinuousRecv110Count();
    }

    /* access modifiers changed from: protected */
    public void onServerSpecialLineBrokenUrgent() {
        MiLinkLog.e(TAG, "onServerSpecialLineBrokenUrgent");
        this.mRequeset.onDataSendFailed(this.mRecvData.getMnsCode(), "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN_URGENT");
        this.mSession.onServerLineBroken();
    }

    public void handleMnsCode() {
        int abs = Math.abs(this.mRecvData.getMnsCode());
        this.mRetCode = abs;
        if (!MnsCmd.MNS_HAND_SHAKE.equals(this.mRecvData.getCommand())) {
            if (abs == 110) {
                this.mSession.addContinuousRecv110Count();
            } else {
                this.mSession.resetContinuousRecv110Count();
            }
        }
        if (!MnsCmd.MNS_LOGOFF.equals(this.mRecvData.getCommand()) || abs == 0) {
            switch (abs) {
                case 0:
                    onOk();
                    break;
                case 100:
                    onServerTokenExpired();
                    break;
                case 101:
                    onB2TokenExpired();
                    break;
                case 102:
                    onKickedByServer();
                    break;
                case 103:
                    onShouldCheckUpdate();
                    break;
                case 109:
                    onTimeOut();
                    break;
                case 110:
                    onServerSpecialLineBroken();
                    break;
                case 118:
                    onAccNeedRetry();
                    break;
                case 119:
                    onServerSpecialLineBrokenUrgent();
                    break;
            }
            onUnknowMsnCode(abs);
            afterHandle();
        } else if (this.mRequeset != null && this.mRequeset.getListener() != null) {
            this.mRequeset.getListener().onDataSendFailed(this.mRecvData.getMnsCode(), "MNS_LOGOFF failed, return");
        }
    }
}
