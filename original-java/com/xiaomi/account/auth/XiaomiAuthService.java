package com.xiaomi.account.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthService;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.io.IOException;
import miui.net.IXiaomiAuthService;

/* loaded from: classes2.dex */
public class XiaomiAuthService implements IXiaomiAuthService {
    private final String TAG = "XiaomiAuthService";
    private IXiaomiAuthService mAuthService;
    private miui.net.IXiaomiAuthService mMiuiV5AuthService;

    /* JADX INFO: Access modifiers changed from: package-private */
    public XiaomiAuthService(IBinder iBinder) {
        try {
            this.mAuthService = IXiaomiAuthService.Stub.asInterface(iBinder);
        } catch (SecurityException unused) {
            this.mMiuiV5AuthService = IXiaomiAuthService.AbstractBinderC6571a.m713x(iBinder);
        }
    }

    @SuppressLint({"MissingPermission"})
    private Intent addXiaomiAccount(Context context) throws OperationCanceledException {
        try {
            Bundle result = AccountManager.get(context).addAccount("com.xiaomi", null, null, null, null, null, null).getResult();
            if (result == null || !result.containsKey("intent")) {
                return null;
            }
            return (Intent) result.getParcelable("intent");
        } catch (AuthenticatorException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (SecurityException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    private Account getXiaomiAccount(Context context) {
        try {
            Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.xiaomi");
            if (accountsByType.length == 0) {
                return null;
            }
            return accountsByType[0];
        } catch (SecurityException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void miuiv5(Context context, IXiaomiAuthResponse iXiaomiAuthResponse, OAuthConfig oAuthConfig, Bundle bundle) throws OperationCanceledException, RemoteException, XMAuthericationException {
        Account xiaomiAccount = getXiaomiAccount(context);
        if (xiaomiAccount == null) {
            Intent addXiaomiAccount = addXiaomiAccount(context);
            if (addXiaomiAccount != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(XiaomiOAuthConstants.EXTRA_INTENT, addXiaomiAccount);
                iXiaomiAuthResponse.onResult(bundle2);
            }
            xiaomiAccount = getXiaomiAccount(context);
        }
        if (xiaomiAccount != null) {
            miui.net.IXiaomiAuthService iXiaomiAuthService = this.mMiuiV5AuthService;
            if (iXiaomiAuthService != null) {
                Bundle miCloudAccessToken = iXiaomiAuthService.getMiCloudAccessToken(xiaomiAccount, bundle);
                if (miCloudAccessToken != null) {
                    if (!miCloudAccessToken.containsKey(XiaomiOAuthConstants.EXTRA_INTENT)) {
                        iXiaomiAuthResponse.onResult(miCloudAccessToken);
                        return;
                    }
                    Intent intent = (Intent) miCloudAccessToken.getParcelable(XiaomiOAuthConstants.EXTRA_INTENT);
                    if (intent != null) {
                        Intent asMiddleActivity = AuthorizeActivityBase.asMiddleActivity(context, intent, iXiaomiAuthResponse, oAuthConfig.authorizeActivityClazz);
                        Bundle bundle3 = (Bundle) miCloudAccessToken.clone();
                        bundle3.putParcelable(XiaomiOAuthConstants.EXTRA_INTENT, asMiddleActivity);
                        iXiaomiAuthResponse.onResult(bundle3);
                        return;
                    }
                    throw new XMAuthericationException("intent == null");
                }
                throw new XMAuthericationException("getMiCloudAccessToken return null");
            }
            throw new XMAuthericationException("mMiuiV5AuthService return null");
        }
        throw new XMAuthericationException("Xiaomi Account not Login");
    }

    private void onCancel(IXiaomiAuthResponse iXiaomiAuthResponse) {
        try {
            iXiaomiAuthResponse.onCancel();
        } catch (RemoteException unused) {
        }
    }

    private boolean supportNativeOAuth() throws RemoteException {
        return getVersionNum() >= 1;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        throw new IllegalStateException();
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public void getAccessTokenInResponse(IXiaomiAuthResponse iXiaomiAuthResponse, Bundle bundle, int i, int i2) throws RemoteException {
        com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService = this.mAuthService;
        if (iXiaomiAuthService != null) {
            iXiaomiAuthService.getAccessTokenInResponse(iXiaomiAuthResponse, bundle, i, i2);
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException {
        com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService = this.mAuthService;
        if (iXiaomiAuthService != null) {
            return iXiaomiAuthService.getMiCloudAccessToken(account, bundle);
        }
        miui.net.IXiaomiAuthService iXiaomiAuthService2 = this.mMiuiV5AuthService;
        if (iXiaomiAuthService2 != null) {
            iXiaomiAuthService2.invalidateAccessToken(account, bundle);
            return this.mMiuiV5AuthService.getMiCloudAccessToken(account, bundle);
        }
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException {
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException {
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public int getVersionNum() throws RemoteException {
        com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService = this.mAuthService;
        if (iXiaomiAuthService != null) {
            return iXiaomiAuthService.getVersionNum();
        }
        return 0;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public void invalidateAccessToken(Account account, Bundle bundle) throws RemoteException {
        miui.net.IXiaomiAuthService iXiaomiAuthService = this.mMiuiV5AuthService;
        if (iXiaomiAuthService != null) {
            iXiaomiAuthService.invalidateAccessToken(account, bundle);
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public boolean isSupport(String str) throws RemoteException {
        com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService = this.mAuthService;
        if (iXiaomiAuthService != null) {
            return iXiaomiAuthService.isSupport(str);
        }
        return false;
    }

    public void oauthInResponse(Context context, IXiaomiAuthResponse iXiaomiAuthResponse, OAuthConfig oAuthConfig) throws RemoteException, XMAuthericationException, FallBackWebOAuthException {
        Bundle makeOptions = oAuthConfig.makeOptions();
        makeOptions.putString(XiaomiOAuthConstants.EXTRA_CLIENT_ID, String.valueOf(oAuthConfig.appId));
        makeOptions.putString(XiaomiOAuthConstants.EXTRA_REDIRECT_URI, oAuthConfig.redirectUrl);
        if (!oAuthConfig.useSystemAccountLogin.booleanValue() && !isSupport(XiaomiOAuthConstants.FEATURE_NOT_USE_SYSTEM_ACCOUNT_LOGIN)) {
            Log.e("XiaomiAuthService", "this version of miui only support system account login");
            throw new FallBackWebOAuthException();
        } else if (oAuthConfig.fastOAuth && !supportNativeOAuth()) {
            Log.e("XiaomiAuthService", "this version of miui not support fast Oauth");
            throw new FallBackWebOAuthException();
        } else {
            String str = oAuthConfig.deviceID;
            if (oAuthConfig.platform == 1 && !isSupport(XiaomiOAuthConstants.FEATURE_SHUIDI)) {
                throw new FallBackWebOAuthException();
            }
            if (oAuthConfig.platform == 0 && !isSupport(XiaomiOAuthConstants.FEATURE_DEV_DEVICEID) && !TextUtils.isEmpty(str)) {
                throw new FallBackWebOAuthException();
            }
            if (supportResponseWay()) {
                this.mAuthService.getAccessTokenInResponse(iXiaomiAuthResponse, makeOptions, 1, 90);
                return;
            }
            throw new FallBackWebOAuthException();
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public boolean supportResponseWay() throws RemoteException {
        com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService = this.mAuthService;
        if (iXiaomiAuthService != null) {
            return iXiaomiAuthService.supportResponseWay();
        }
        return false;
    }
}
