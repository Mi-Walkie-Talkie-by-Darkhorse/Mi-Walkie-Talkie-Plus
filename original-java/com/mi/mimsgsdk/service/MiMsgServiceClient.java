package com.mi.mimsgsdk.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;
import com.mi.milinkforgame.sdk.data.Const.Extra;
import com.mi.mimsgsdk.BuildConfig;
import com.mi.mimsgsdk.MsgSdkManager;
import com.mi.mimsgsdk.service.aidl.IMiMsgService;
import com.mi.mimsgsdk.service.aidl.IMiMsgService.Stub;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.VersionUtils;
import java.util.Locale;
import java.util.Observable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.a;
import rx.a.C0098a;
import rx.e;

public class MiMsgServiceClient extends Observable implements ServiceConnection {
    private static final int AFTER_STOP_SERVICE_START_THRESHOLD = 5;
    private static final long SERVICE_OUT_TIME = 15000;
    private static final int SERVICE_START_THRESHOLD = 20;
    /* access modifiers changed from: private */
    public static final String TAG = MiMsgServiceClient.class.getSimpleName();
    private final Object INIT_LOCK = new Object();
    /* access modifiers changed from: private */
    public final Object SERVICE_LOCK = new Object();
    protected Context context;
    private AtomicBoolean mIsInited = new AtomicBoolean(false);
    private int onStartCommandReturn;
    private final AtomicReference<IMiMsgService> remoteRefrence = new AtomicReference<>();
    private volatile boolean serviceConnecting = false;
    private volatile int servicePid = Integer.MIN_VALUE;

    public interface OnServiceStartListener {
        void onServiceStarted(ServiceStartResult serviceStartResult);
    }

    private enum Reason {
        UserCall("用户调用"),
        Restart("断开后重连"),
        Disconnect("服务主动断开"),
        ClientError("发生错误断开"),
        RemoteDead("服务挂了"),
        SystemFatal("服务启动失败");
        
        private String reason;

        private Reason(String str) {
            this.reason = str;
        }

        public String toString() {
            return this.reason;
        }
    }

    public enum ServiceStartResult {
        Success,
        SystemError,
        NativeUnzipFailed,
        NativeLoadFailed
    }

    public MiMsgServiceClient(Context context2, int i) {
        this.context = context2;
        Global.init(context2, new ClientAppInfo(i, VersionUtils.getCurrentVersionCode(context2), VersionUtils.getVersionName(context2), "RELEASE", "MiMsgSdk", BuildConfig.APPLICATION_ID, "", Locale.getDefault().toString(), "com.mi.mimsgsdk:milink"));
    }

    @WorkerThread
    public IMiMsgService getRemoteServiceInit() throws RemoteException {
        if (this.remoteRefrence.get() == null) {
            ClientLog.e(TAG, "getRemoteService, but remoteService = null, try start service");
            a.a((C0098a<T>) new C0098a<Object>() {
                public void call(e<? super Object> eVar) {
                    try {
                        if (!MiMsgServiceClient.this.startService(Reason.Restart)) {
                            ClientLog.w(MiMsgServiceClient.TAG, "mns service start failed");
                            MiMsgServiceClient.this.stopService(Reason.SystemFatal);
                            synchronized (MiMsgServiceClient.this.SERVICE_LOCK) {
                                MiMsgServiceClient.this.SERVICE_LOCK.notifyAll();
                            }
                        }
                    } catch (Exception e) {
                        ClientLog.e(MiMsgServiceClient.TAG, "startService(Reason.Restart) exception  :" + e.getMessage());
                        synchronized (MiMsgServiceClient.this.SERVICE_LOCK) {
                            MiMsgServiceClient.this.SERVICE_LOCK.notifyAll();
                        }
                    }
                }
            }).b(rx.a.b.a.a()).b();
            synchronized (this.SERVICE_LOCK) {
                try {
                    this.SERVICE_LOCK.wait(15000);
                } catch (InterruptedException e) {
                }
            }
            if (this.remoteRefrence.get() == null) {
                ClientLog.e(TAG, "remoteReference.get() == null milink远程服务启动失败");
                throw new RemoteException();
            }
        }
        return (IMiMsgService) this.remoteRefrence.get();
    }

    @WorkerThread
    public IMiMsgService getRemoteService() throws RemoteException {
        if (this.remoteRefrence.get() == null) {
            getRemoteServiceInit();
            if (this.remoteRefrence.get() == null) {
                ClientLog.e(TAG, "remoteReference.get() == null milink远程服务启动失败");
                throw new RemoteException();
            }
            MsgSdkManager.getInstance().init(MsgSdkManager.getInstance().getInitParams());
        }
        return (IMiMsgService) this.remoteRefrence.get();
    }

    @MainThread
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ClientLog.e(TAG, "onServiceConnected()");
        synchronized (this) {
            try {
                if (this.serviceConnecting) {
                    this.serviceConnecting = false;
                } else {
                    ClientLog.e(TAG, "Ghost's Call? Nobody binds service but Callback here. WTF!!!");
                }
                this.remoteRefrence.set(Stub.asInterface(iBinder));
                if (!((IMiMsgService) this.remoteRefrence.get()).isAlive()) {
                    stopService(Reason.ClientError);
                }
                this.servicePid = ((IMiMsgService) this.remoteRefrence.get()).getProcessPid();
                if (this.servicePid == Integer.MIN_VALUE) {
                    stopService(Reason.ClientError);
                }
            } catch (Exception e) {
                stopService(Reason.ClientError);
            }
            if (this.remoteRefrence.get() != null) {
                ClientLog.e(TAG, "onServiceConnected got a binder");
            }
            synchronized (this.SERVICE_LOCK) {
                this.SERVICE_LOCK.notifyAll();
            }
        }
    }

    @MainThread
    public void onServiceDisconnected(ComponentName componentName) {
        ClientLog.e(TAG, "onServiceDisconnected()");
        synchronized (this) {
            stopService(Reason.Disconnect);
        }
    }

    public void killService() {
        ClientLog.e(TAG, "Service[" + this.servicePid + "] will be Terminated");
        Process.killProcess(this.servicePid);
    }

    public boolean isServiceAvailable() {
        return this.remoteRefrence.get() != null;
    }

    public boolean isServiceAlive() {
        try {
            if (!isServiceAvailable() || !((IMiMsgService) this.remoteRefrence.get()).isAlive()) {
                return false;
            }
            return true;
        } catch (Exception e) {
            ClientLog.e(TAG, "Remote Service is Dead");
            return false;
        }
    }

    public int getServicePid() {
        if (this.remoteRefrence.get() != null) {
            return this.servicePid;
        }
        return -1;
    }

    @MainThread
    private boolean initService() {
        Intent intent = new Intent();
        intent.putExtra(Extra.OnStartCommandReturn, this.onStartCommandReturn);
        intent.putExtra("appId", GlobalData.getAppId());
        intent.setComponent(new ComponentName(this.context, MiMsgService.class));
        ComponentName startService = this.context.startService(intent);
        if (startService == null) {
            ClientLog.e(TAG, "start service failed");
            return false;
        }
        ClientLog.e(TAG, "startService ComponentName = " + startService.toString());
        ClientLog.e(TAG, "start service success");
        return this.context.bindService(intent, this, 1);
    }

    public boolean startService(OnServiceStartListener onServiceStartListener, int i) {
        this.onStartCommandReturn = i;
        return startService(onServiceStartListener);
    }

    public boolean startService(OnServiceStartListener onServiceStartListener) {
        boolean z;
        boolean z2 = false;
        try {
            z = startService(Reason.UserCall);
        } catch (Exception e) {
            z = z2;
        }
        if (onServiceStartListener != null) {
            onServiceStartListener.onServiceStarted(z ? ServiceStartResult.Success : ServiceStartResult.SystemError);
        }
        return z;
    }

    /* access modifiers changed from: private */
    @MainThread
    public boolean startService(Reason reason) {
        boolean initService;
        ClientLog.d(TAG, "startService reason: " + reason);
        synchronized (this) {
            initService = initService();
            if (!initService) {
                ClientLog.i(TAG, "bindService() failed!!");
            } else {
                ClientLog.i(TAG, "bindService() success!!");
                this.serviceConnecting = true;
            }
        }
        return initService;
    }

    /* access modifiers changed from: private */
    public void stopService(Reason reason) {
        ClientLog.v(TAG, "stopService" + reason);
        synchronized (this) {
            try {
                this.serviceConnecting = false;
                if (Reason.UserCall.equals(reason)) {
                    this.context.unbindService(this);
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(this.context, MiMsgService.class));
                    this.context.stopService(intent);
                }
                this.remoteRefrence.set(null);
                this.mIsInited.set(false);
            } catch (Exception e) {
                this.remoteRefrence.set(null);
                this.mIsInited.set(false);
            } catch (Throwable th) {
                this.remoteRefrence.set(null);
                this.mIsInited.set(false);
                throw th;
            }
        }
    }

    public void stopService(boolean z, boolean z2) {
        ClientLog.d(TAG, "Stop Service By User [ Logout = " + z + ", Kill = " + z2 + " ]");
        stopService(Reason.UserCall);
        if (z2) {
            killService();
        }
    }

    public void stopService(boolean z) {
        stopService(true, z);
    }

    public void stopService() {
        stopService(true, true);
    }
}
