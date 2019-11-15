package com.xiaomi.account.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.account.IXiaomiAuthService.Stub;
import miui.net.IXiaomiAuthService;
import miui.net.IXiaomiAuthService.a;

abstract class MiuiAuthServiceRunnable<V> extends XiaomiOAuthRunnable<V> implements ServiceConnection {
    private static final String ACTION_FOR_AUTH_SERVICE = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String PACKAGE_NAME_FOR_AUTH_SERVICE = "com.xiaomi.account";
    protected final Account account;
    private final Context context;
    protected final Bundle options;

    static class NoMiuiAuthServiceException extends Exception {
        NoMiuiAuthServiceException() {
        }
    }

    /* access modifiers changed from: protected */
    public abstract V talkWithMiuiV5(IXiaomiAuthService iXiaomiAuthService) throws RemoteException;

    /* access modifiers changed from: protected */
    public abstract V talkWithMiuiV6(com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService) throws RemoteException;

    MiuiAuthServiceRunnable(Context context2, Account account2, Bundle bundle) {
        this.context = context2;
        this.account = account2;
        this.options = bundle;
    }

    public final void doRun() {
        if (!this.context.bindService(getAuthServiceIntent(), this, 1)) {
            this.context.unbindService(this);
            this.mFuture.setException(new NoMiuiAuthServiceException());
        }
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.mFuture.set(talkWithMiuiV6(Stub.asInterface(iBinder)));
            this.context.unbindService(this);
        } catch (SecurityException e) {
            try {
                this.mFuture.set(talkWithMiuiV5(a.a(iBinder)));
                this.context.unbindService(this);
            } catch (SecurityException e2) {
                try {
                    this.mFuture.setException(new NoMiuiAuthServiceException());
                } catch (RemoteException e3) {
                    this.mFuture.setException(e3);
                } finally {
                    this.context.unbindService(this);
                }
            }
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
    }

    private static Intent getAuthServiceIntent() {
        Intent intent = new Intent(ACTION_FOR_AUTH_SERVICE);
        if (VERSION.SDK_INT >= 21) {
            intent.setPackage("com.xiaomi.account");
        }
        return intent;
    }
}
