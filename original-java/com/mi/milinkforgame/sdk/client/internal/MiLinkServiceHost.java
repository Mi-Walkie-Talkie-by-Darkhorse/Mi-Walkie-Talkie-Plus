package com.mi.milinkforgame.sdk.client.internal;

import android.content.Context;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.client.MiLinkObserver;
import com.mi.milinkforgame.sdk.data.Const.MiLinkSdkState;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.service.MiLinkAlarm;
import com.mi.milinkforgame.sdk.service.MiLinkExceptionHandler;
import com.mi.milinkforgame.sdk.session.ISessionManagerListener;
import com.mi.milinkforgame.sdk.session.SessionManager;
import com.mi.milinkforgame.sdk.util.PreloadClearUtil;

public class MiLinkServiceHost extends CustomHandlerThread implements ISessionManagerListener {
    private static final String TAG = MiLinkServiceHost.class.getSimpleName();
    /* access modifiers changed from: protected */
    public Context context;
    protected MiLinkObserver mMilinkListener;

    private static class S {
        MiLinkSdkState newState;
        MiLinkSdkState oldState;

        public S(MiLinkSdkState miLinkSdkState, MiLinkSdkState miLinkSdkState2) {
            this.oldState = miLinkSdkState;
            this.newState = miLinkSdkState2;
        }
    }

    public MiLinkServiceHost(Context context2, MiLinkObserver miLinkObserver) {
        super(TAG);
        this.context = context2;
        this.mMilinkListener = miLinkObserver;
        SessionManager.getInstance().setSessionManagerListener(this);
        PreloadClearUtil.clearResources();
        long currentTimeMillis = System.currentTimeMillis();
        Thread.setDefaultUncaughtExceptionHandler(new MiLinkExceptionHandler());
        Global.STARTUP_TIME = SystemClock.elapsedRealtime();
        MiLinkAlarm.start();
        MiLinkLog.w(TAG, "MiLink Service Created, pid=" + Process.myPid() + ", cost=" + (System.currentTimeMillis() - currentTimeMillis));
    }

    /* access modifiers changed from: protected */
    public void processMessage(Message message) {
        switch (message.what) {
            case 6:
                S s = (S) message.obj;
                MiLinkSdkState miLinkSdkState = s.oldState;
                MiLinkSdkState miLinkSdkState2 = s.newState;
                if (this.mMilinkListener != null) {
                    ClientLog.v(TAG, String.format("SERVER_STATE_UPDATED from %s to %s ", new Object[]{miLinkSdkState, miLinkSdkState2}));
                    this.mMilinkListener.onMilinkSdkStateUpdate(miLinkSdkState, miLinkSdkState2);
                    return;
                }
                ClientLog.v(TAG, "mMilinkListener is null");
                return;
            case 9:
                int i = message.arg1;
                if (this.mMilinkListener != null) {
                    ClientLog.v(TAG, String.format("MNS_INTERNAL_ERROR errCode is %d , notice client", new Object[]{Integer.valueOf(i)}));
                    this.mMilinkListener.onInternalError(i);
                    return;
                }
                ClientLog.v(TAG, "mMilinkListener is null");
                return;
            default:
                return;
        }
    }

    public boolean onOpenSessionResult(long j, int i) {
        return false;
    }

    public boolean onSessionStateChanged(MiLinkSdkState miLinkSdkState, MiLinkSdkState miLinkSdkState2) {
        if (miLinkSdkState != miLinkSdkState2) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(6, new S(miLinkSdkState, miLinkSdkState2)));
        }
        return true;
    }

    public boolean onError(int i, String str, Object obj) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(9, Integer.valueOf(i)));
        return false;
    }
}
