package com.mi.milinkforgame.sdk.session;

import android.text.TextUtils;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;

public class MnsCodeCopeWaysNoListener extends IMnsCodeCopeWays {
    private static final String CLASSTAG = "MnsCodeCopeWaysNoListener";
    private String TAG;

    public MnsCodeCopeWaysNoListener(Session session) {
        super(session);
        this.TAG = String.format("[No:%d]%s", new Object[]{Integer.valueOf(session.getSessionNO()), CLASSTAG});
    }

    /* access modifiers changed from: protected */
    public void onOk() {
        MiLinkLog.v(this.TAG, "recv data and to dispatcher");
        MnsPacketDispatcher.getInstance().dispatchPacket(this.mRecvData);
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
        String command = this.mRecvData.getCommand();
        if (TextUtils.isEmpty(command)) {
            command = this.mRequeset.getData() != null ? this.mRequeset.getData().getCommand() : "";
        }
        if (!TextUtils.isEmpty(command)) {
            InternalDataMonitor.getInstance().trace(this.mSession.getServerProfileForStatistic() != null ? this.mSession.getServerProfileForStatistic().getServerIP() : "", this.mSession.getServerProfileForStatistic() != null ? this.mSession.getServerProfileForStatistic().getServerPort() : 0, command, this.mRetCode, this.mRequeset.getSentTime(), System.currentTimeMillis(), this.mRequeset.getSize(), this.mRecvData.getResponseSize(), this.mRequeset.getSeqNo());
        } else {
            MiLinkLog.e(this.TAG, "cmd is empty, don't monitor it, seq=" + this.mRequeset.getSeqNo());
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
        this.mSession.onAccNeedRetryWithClientInfo(this.mRequeset);
    }

    /* access modifiers changed from: protected */
    public void onUnknowMsnCode(int i) {
    }
}
