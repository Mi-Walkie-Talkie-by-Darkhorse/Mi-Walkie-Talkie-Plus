package com.xiaomi.account.auth;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class MiuiOauth implements XiaomiOAuth {
    private static final long DEFAULT_TIMEOUT_MINUTE = 10;
    private static final String TAG = "MiuiOauth";
    private String mAppId;
    private Context mContext;
    private String mRedirectUrl;

    /* loaded from: classes2.dex */
    private class MiuiOAuthSession extends FutureTask<Bundle> implements ServiceConnection {
        private WeakReference<Activity> mActivity;
        XiaomiAuthService mAuthService;
        OAuthConfig mOAuthConfig;
        IXiaomiAuthResponse mResponse;

        MiuiOAuthSession(Activity activity, OAuthConfig oAuthConfig) {
            super(new Callable<Bundle>() { // from class: com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Bundle call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mActivity = new WeakReference<>(activity);
            this.mOAuthConfig = oAuthConfig;
            this.mResponse = new IXiaomiAuthResponse.Stub() { // from class: com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession.2
                @Override // com.xiaomi.account.IXiaomiAuthResponse
                public void onCancel() throws RemoteException {
                    MiuiOAuthSession.this.setException(new OperationCanceledException());
                }

                @Override // com.xiaomi.account.IXiaomiAuthResponse
                public void onResult(Bundle bundle) throws RemoteException {
                    MiuiOAuthSession.this.set(bundle);
                }
            };
        }

        private void close() {
            unbind();
        }

        private Bundle internalGetResult() throws Exception {
            try {
                return get(MiuiOauth.DEFAULT_TIMEOUT_MINUTE, TimeUnit.MINUTES);
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause instanceof Exception) {
                    throw ((Exception) cause);
                }
                throw ((Error) cause);
            }
        }

        private void unbind() {
            if (this.mAuthService != null) {
                this.mAuthService = null;
                MiuiOauth.this.mContext.unbindService(this);
            }
        }

        boolean bind() {
            Intent blockGetDefaultIntent = new OAuthServiceManager(MiuiOauth.this.mContext).blockGetDefaultIntent();
            if (blockGetDefaultIntent == null) {
                Log.i(MiuiOauth.TAG, "no xiaomi OAuth service");
                return false;
            }
            boolean bindService = MiuiOauth.this.mContext.bindService(blockGetDefaultIntent, this, 1);
            if (!bindService) {
                Log.i(MiuiOauth.TAG, "bind failed");
            }
            return bindService;
        }

        XiaomiOAuthResults getResult() throws Exception {
            return XiaomiOAuthResults.parseBundle(internalGetResult());
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            XiaomiAuthService xiaomiAuthService = new XiaomiAuthService(iBinder);
            this.mAuthService = xiaomiAuthService;
            try {
                xiaomiAuthService.oauthInResponse(MiuiOauth.this.mContext, this.mResponse, this.mOAuthConfig);
            } catch (RemoteException e) {
                setException(e);
            } catch (FallBackWebOAuthException e2) {
                setException(e2);
            } catch (XMAuthericationException e3) {
                setException(e3);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.mAuthService = null;
            if (Build.VERSION.SDK_INT >= 15) {
                setException(new RemoteException("onServiceDisconnected"));
            } else {
                setException(new XMAuthericationException("onServiceDisconnected"));
            }
        }

        @Override // java.util.concurrent.FutureTask
        protected void setException(Throwable th) {
            close();
            super.setException(th);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void set(Bundle bundle) {
            if (bundle == null || !bundle.containsKey(XiaomiOAuthConstants.EXTRA_INTENT)) {
                close();
                super.set((MiuiOAuthSession) bundle);
                return;
            }
            Intent intent = (Intent) bundle.getParcelable(XiaomiOAuthConstants.EXTRA_INTENT);
            if (intent == null) {
                setException(new XMAuthericationException("intent == null"));
            } else if (this.mActivity.get() == null || (this.mActivity.get() != null && this.mActivity.get().isFinishing())) {
                Bundle bundle2 = new Bundle();
                bundle2.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE, XiaomiOAuthConstants.ERROR_NEED_AUTHORIZE);
                bundle2.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION, "activity is null");
                super.set((MiuiOAuthSession) bundle2);
            } else if (this.mActivity.get() != null) {
                this.mActivity.get().startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MiuiOauth(Context context, String str, String str2) {
        this.mContext = context;
        this.mAppId = str;
        this.mRedirectUrl = str2;
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuth
    public XiaomiOAuthResults startOAuth(Activity activity, OAuthConfig oAuthConfig) throws Exception {
        MiuiOAuthSession miuiOAuthSession = new MiuiOAuthSession(activity, oAuthConfig);
        try {
            if (miuiOAuthSession.bind()) {
                return miuiOAuthSession.getResult();
            }
        } catch (FallBackWebOAuthException unused) {
        }
        Log.i(TAG, "fallBack to WebView OAuth");
        return new WebViewOauth(this.mContext, this.mAppId, this.mRedirectUrl).startOAuth(activity, oAuthConfig);
    }
}
