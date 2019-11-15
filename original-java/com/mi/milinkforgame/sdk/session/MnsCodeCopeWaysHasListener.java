package com.mi.milinkforgame.sdk.session;

import android.text.TextUtils;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;

public class MnsCodeCopeWaysHasListener extends IMnsCodeCopeWays {
    private static final String CLASSTAG = "MnsCodeCopeWaysHasListener";
    private String TAG;

    public MnsCodeCopeWaysHasListener(Session session) {
        super(session);
        this.TAG = String.format("[No:%d]%s", new Object[]{Integer.valueOf(session.getSessionNO()), CLASSTAG});
    }

    /* access modifiers changed from: protected */
    public void onOk() {
        this.mRequeset.getListener().onDataSendSuccess(0, this.mRecvData);
        this.mRetCode = this.mRecvData.getBusiCode();
    }

    /* access modifiers changed from: protected */
    public void onB2TokenExpired() {
        SessionManager.getInstance().onB2TokenExpired();
        this.mRequeset.getListener().onDataSendFailed(101, "b2 token expired");
    }

    /* access modifiers changed from: protected */
    public void onServerTokenExpired() {
        SessionManager.getInstance().onServiceTokenExpired();
        this.mRequeset.getListener().onDataSendFailed(100, "service token expired");
    }

    /* access modifiers changed from: protected */
    public void onShouldCheckUpdate() {
        SessionManager.getInstance().onShouldCheckUpdate();
        this.mRequeset.getListener().onDataSendSuccess(103, this.mRecvData);
    }

    /* access modifiers changed from: protected */
    public void afterHandle() {
        String command = this.mRecvData.getCommand();
        if (TextUtils.isEmpty(command)) {
            command = this.mRequeset.getData() != null ? this.mRequeset.getData().getCommand() : "";
        }
        if (!TextUtils.isEmpty(command)) {
            InternalDataMonitor.getInstance().trace(this.mSession.getServerProfileForStatistic() != null ? this.mSession.getServerProfileForStatistic().getServerIP() : "", this.mSession.getServerProfileForStatistic() != null ? this.mSession.getServerProfileForStatistic().getServerPort() : 0, command, this.mRetCode, this.mRequeset.getSentTime(), System.currentTimeMillis(), this.mRequeset.getSize(), this.mRecvData.getResponseSize(), this.mRequeset.getSeqNo(), this.mSession.getClientIp(), this.mSession.getClientIsp());
        } else {
            MiLinkLog.e(this.TAG, "cmd is empty, don't monitor it, seq=" + this.mRequeset.getSeqNo());
        }
    }

    /* access modifiers changed from: protected */
    public void onBusinessCmdTimeout() {
        this.mRequeset.getListener().onDataSendFailed(515, "request time out");
    }

    /* access modifiers changed from: protected */
    public void onInternalCmdTimeout() {
        this.mRequeset.getListener().onDataSendFailed(515, "request time out");
    }

    /* access modifiers changed from: protected */
    public void onAccNeedRetry() {
        this.mSession.onAccNeedRetryWithClientInfo(this.mRequeset);
    }

    /* access modifiers changed from: protected */
    public void onUnknowMsnCode(int i) {
        this.mRequeset.getListener().onDataSendFailed(i, "unknow mnscode for milinksdk");
    }
}
