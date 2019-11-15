package com.xiaomi.account.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthResponse.Stub;
import com.xiaomi.account.IXiaomiAuthService;
import com.xiaomi.account.openauth.AuthorizeActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class MiuiOauth implements XiaomiOAuth {
    @Deprecated
    private static final String ACTION_FOR_AUTH_SERVICE = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String NEW_ACTION_FOR_AUTH_SERVICE = "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String PACKAGE_NAME_FOR_AUTH_SERVICE = "com.xiaomi.account";
    private static final String TAG = "MiuiOauth";
    /* access modifiers changed from: private */
    public Executor executor = Executors.newCachedThreadPool();
    /* access modifiers changed from: private */
    public String mAppId;
    /* access modifiers changed from: private */
    public Class<? extends AuthorizeActivityBase> mAuthorizeActivityClazz = AuthorizeActivity.class;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public String mRedirectUrl;

    private abstract class MiuiOAuthSession extends FutureTask<Bundle> implements ServiceConnection, XiaomiOAuthFuture<Bundle> {
        WeakReference<Activity> mActivityWeakReference;
        XiaomiAuthService mAuthService;
        IXiaomiAuthResponse mResponse;

        /* access modifiers changed from: 0000 */
        public abstract void doWork(XiaomiAuthService xiaomiAuthService, IXiaomiAuthResponse iXiaomiAuthResponse) throws Throwable;

        MiuiOAuthSession(Activity activity) {
            super(new Callable<Bundle>() {
                public Bundle call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mActivityWeakReference = new WeakReference<>(activity);
            this.mResponse = new Stub(MiuiOauth.this) {
                public void onResult(Bundle bundle) throws RemoteException {
                    MiuiOAuthSession.this.set(bundle);
                }

                public void onCancel() throws RemoteException {
                    MiuiOAuthSession.this.setException(new OperationCanceledException());
                }
            };
        }

        /* access modifiers changed from: 0000 */
        public XiaomiOAuthFuture<Bundle> bind() {
            Intent intent = new Intent(MiuiOauth.NEW_ACTION_FOR_AUTH_SERVICE);
            intent.setPackage("com.xiaomi.account");
            if (!MiuiOauth.this.mContext.bindService(intent, this, 1)) {
                Intent intent2 = new Intent(MiuiOauth.ACTION_FOR_AUTH_SERVICE);
                intent2.setPackage("com.xiaomi.account");
                if (!MiuiOauth.this.mContext.bindService(intent2, this, 1)) {
                    setException(new XMAuthericationException("BIND FAILED"));
                }
            }
            return this;
        }

        private void unbind() {
            if (this.mAuthService != null) {
                this.mAuthService = null;
                MiuiOauth.this.mContext.unbindService(this);
            }
        }

        private void close() {
            unbind();
        }

        public Bundle getResult(long j, TimeUnit timeUnit) throws IOException, XMAuthericationException, OperationCanceledException {
            return internalGetResult(Long.valueOf(j), timeUnit);
        }

        public Bundle getResult() throws IOException, XMAuthericationException, OperationCanceledException {
            return internalGetResult(null, null);
        }

        /* access modifiers changed from: protected */
        public void set(Bundle bundle) {
            if (bundle == null || !bundle.containsKey(XiaomiOAuthConstants.EXTRA_INTENT)) {
                close();
                super.set(bundle);
                return;
            }
            Intent intent = (Intent) bundle.getParcelable(XiaomiOAuthConstants.EXTRA_INTENT);
            if (intent == null) {
                setException(new XMAuthericationException("intent == null"));
                return;
            }
            Activity activity = (Activity) this.mActivityWeakReference.get();
            if (activity == null) {
                setException(new XMAuthericationException("activity == null"));
                return;
            }
            Bundle extras = intent.getExtras();
            extras.setClassLoader(getClass().getClassLoader());
            if (!extras.containsKey("extra_response")) {
                intent = AuthorizeActivityBase.asMiddleActivity(activity, intent, this.mResponse, MiuiOauth.this.mAuthorizeActivityClazz);
            }
            activity.startActivity(intent);
        }

        /* access modifiers changed from: protected */
        public void setException(Throwable th) {
            close();
            super.setException(th);
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.mAuthService = new XiaomiAuthService(iBinder);
            MiuiOauth.this.executor.execute(new Runnable() {
                public void run() {
                    try {
                        if (MiuiOAuthSession.this.mAuthService != null) {
                            MiuiOAuthSession.this.doWork(MiuiOAuthSession.this.mAuthService, MiuiOAuthSession.this.mResponse);
                        }
                    } catch (Throwable th) {
                        MiuiOAuthSession.this.setException(th);
                    }
                }
            });
        }

        public void onServiceDisconnected(ComponentName componentName) {
            this.mAuthService = null;
            if (VERSION.SDK_INT >= 15) {
                setException(new RemoteException("onServiceDisconnected"));
            } else {
                setException(new XMAuthericationException("onServiceDisconnected"));
            }
        }

        private Bundle internalGetResult(Long l, TimeUnit timeUnit) throws IOException, XMAuthericationException, OperationCanceledException {
            Bundle bundle;
            if (!isDone()) {
                ensureNotOnMainThread();
            }
            if (l == null) {
                try {
                    bundle = (Bundle) get();
                    cancel(true);
                } catch (CancellationException e) {
                    Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e);
                    cancel(true);
                } catch (TimeoutException e2) {
                    Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e2);
                    cancel(true);
                } catch (InterruptedException e3) {
                    Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e3);
                    cancel(true);
                } catch (ExecutionException e4) {
                    Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e4);
                    Throwable cause = e4.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    } else if (cause instanceof OperationCanceledException) {
                        throw ((OperationCanceledException) cause);
                    } else if (cause instanceof XMAuthericationException) {
                        throw ((XMAuthericationException) cause);
                    } else {
                        throw new XMAuthericationException(cause);
                    }
                } catch (Throwable th) {
                    cancel(true);
                    throw th;
                }
            } else {
                bundle = (Bundle) get(l.longValue(), timeUnit);
                cancel(true);
            }
            return bundle;
            throw new OperationCanceledException();
        }

        private void ensureNotOnMainThread() {
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && myLooper == MiuiOauth.this.mContext.getMainLooper()) {
                IllegalStateException illegalStateException = new IllegalStateException("calling this from your main thread can lead to deadlock");
                Log.e(MiuiOauth.TAG, "calling this from your main thread can lead to deadlock and/or ANRs", illegalStateException);
                if (MiuiOauth.this.mContext.getApplicationInfo().targetSdkVersion >= 8) {
                    throw illegalStateException;
                }
            }
        }
    }

    public MiuiOauth(Context context, String str, String str2) {
        this.mContext = context;
        this.mAppId = str;
        this.mRedirectUrl = str2;
    }

    public void setAuthorizeActivityClazz(Class<? extends AuthorizeActivityBase> cls) {
        this.mAuthorizeActivityClazz = cls;
    }

    public static boolean isSupportService(Context context) {
        Intent intent = new Intent(NEW_ACTION_FOR_AUTH_SERVICE);
        intent.setPackage("com.xiaomi.account");
        PackageManager packageManager = context.getPackageManager();
        List queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices != null && queryIntentServices.size() > 0) {
            return true;
        }
        Intent intent2 = new Intent(ACTION_FOR_AUTH_SERVICE);
        intent2.setPackage("com.xiaomi.account");
        List queryIntentServices2 = packageManager.queryIntentServices(intent2, 0);
        if (queryIntentServices2 == null || queryIntentServices2.size() <= 0) {
            return false;
        }
        return true;
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, OAuthConfig oAuthConfig) {
        return getCodeOrAccessToken(activity, oAuthConfig.makeOptions());
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig oAuthConfig) {
        Bundle makeOptions = oAuthConfig.makeOptions();
        makeOptions.putBoolean(XiaomiOAuthConstants.EXTRA_NATIVE_OAUTH, true);
        return getCodeOrAccessToken(activity, makeOptions);
    }

    private XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, Bundle bundle) {
        final XiaomiOAuthFuture oauth = getOauth(activity, bundle);
        return new XiaomiOAuthFuture<XiaomiOAuthResults>() {
            public XiaomiOAuthResults getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                return XiaomiOAuthResults.parseBundle((Bundle) oauth.getResult());
            }

            public XiaomiOAuthResults getResult(long j, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
                return XiaomiOAuthResults.parseBundle((Bundle) oauth.getResult(j, timeUnit));
            }
        };
    }

    private XiaomiOAuthFuture<Bundle> getOauth(Activity activity, final Bundle bundle) {
        return new MiuiOAuthSession(activity) {
            /* access modifiers changed from: 0000 */
            public void doWork(XiaomiAuthService xiaomiAuthService, IXiaomiAuthResponse iXiaomiAuthResponse) throws Throwable {
                bundle.putString(XiaomiOAuthConstants.EXTRA_CLIENT_ID, String.valueOf(MiuiOauth.this.mAppId));
                bundle.putString(XiaomiOAuthConstants.EXTRA_REDIRECT_URI, MiuiOauth.this.mRedirectUrl);
                MiuiOauth.this.checkNativeOAuthSupport(xiaomiAuthService, bundle);
                if (xiaomiAuthService.supportResponseWay()) {
                    xiaomiAuthService.getAccessTokenInResponse(iXiaomiAuthResponse, bundle, 1, 67);
                    return;
                }
                Account access$300 = MiuiOauth.this.getXiaomiAccount();
                if (access$300 == null) {
                    MiuiOauth.this.addXiaomiAccount((Activity) this.mActivityWeakReference.get());
                    access$300 = MiuiOauth.this.getXiaomiAccount();
                }
                if (access$300 == null) {
                    throw new XMAuthericationException("Xiaomi Account not Login");
                }
                iXiaomiAuthResponse.onResult(xiaomiAuthService.getMiCloudAccessToken(access$300, bundle));
            }
        }.bind();
    }

    /* access modifiers changed from: private */
    public void checkNativeOAuthSupport(IXiaomiAuthService iXiaomiAuthService, Bundle bundle) throws RemoteException, XMAuthericationException {
        boolean z = true;
        boolean z2 = bundle.getBoolean(XiaomiOAuthConstants.EXTRA_NATIVE_OAUTH);
        if (iXiaomiAuthService.getVersionNum() < 1) {
            z = false;
        }
        if (z2 && !z) {
            throw new XMAuthericationException("this version of miui not support fast Oauth");
        }
    }

    /* access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public Account getXiaomiAccount() {
        try {
            Account[] accountsByType = AccountManager.get(this.mContext).getAccountsByType("com.xiaomi");
            if (accountsByType.length == 0) {
                return null;
            }
            return accountsByType[0];
        } catch (SecurityException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    /* access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void addXiaomiAccount(Activity activity) {
        if (activity != null) {
            try {
                Bundle bundle = (Bundle) AccountManager.get(this.mContext).addAccount("com.xiaomi", null, null, null, activity, null, null).getResult();
                if (bundle == null || !bundle.containsKey("authAccount")) {
                }
            } catch (SecurityException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (AuthenticatorException e2) {
                ThrowableExtension.printStackTrace(e2);
            } catch (OperationCanceledException e3) {
                ThrowableExtension.printStackTrace(e3);
            } catch (IOException e4) {
                ThrowableExtension.printStackTrace(e4);
            }
        }
    }
}
