package com.xiaomi.account.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthService;
import com.xiaomi.account.IXiaomiAuthService.Stub;
import miui.net.IXiaomiAuthService.a;

public class XiaomiAuthService implements IXiaomiAuthService {
    private IXiaomiAuthService mAuthService;
    private miui.net.IXiaomiAuthService mMiuiV5AuthService;

    XiaomiAuthService(IBinder iBinder) {
        try {
            this.mAuthService = Stub.asInterface(iBinder);
        } catch (SecurityException e) {
            this.mMiuiV5AuthService = a.a(iBinder);
        }
    }

    public Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException {
        return null;
    }

    public Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.getMiCloudAccessToken(account, bundle);
        }
        if (this.mMiuiV5AuthService == null) {
            return null;
        }
        this.mMiuiV5AuthService.invalidateAccessToken(account, bundle);
        return this.mMiuiV5AuthService.getMiCloudAccessToken(account, bundle);
    }

    public Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException {
        return null;
    }

    public void invalidateAccessToken(Account account, Bundle bundle) throws RemoteException {
        if (this.mMiuiV5AuthService != null) {
            this.mMiuiV5AuthService.invalidateAccessToken(account, bundle);
        }
    }

    public boolean supportResponseWay() throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.supportResponseWay();
        }
        return false;
    }

    public void getAccessTokenInResponse(IXiaomiAuthResponse iXiaomiAuthResponse, Bundle bundle, int i, int i2) throws RemoteException {
        if (this.mAuthService != null) {
            this.mAuthService.getAccessTokenInResponse(iXiaomiAuthResponse, bundle, i, i2);
        }
    }

    public int getVersionNum() throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.getVersionNum();
        }
        return 0;
    }

    public IBinder asBinder() {
        throw new IllegalStateException();
    }
}
