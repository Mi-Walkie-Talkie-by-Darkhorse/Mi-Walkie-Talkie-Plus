package com.xiaomi.account.openauth;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.xiaomi.account.auth.AuthorizeApi;
import com.xiaomi.account.auth.OAuthConfig;
import com.xiaomi.account.auth.OAuthFactory;
import com.xiaomi.account.auth.XiaomiOAuthFutureImpl;
import com.xiaomi.account.openauth.internal.MiAccountPhoneInfo;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public class XiaomiOAuthorize {
    private static final Class<? extends AuthorizeActivityBase> DEFAULT_AUTHORIZE_ACTIVITY_CLASS = AuthorizeActivity.class;
    private static final String TAG = "XiaomiOAuthorize";
    public static final String TYPE_CODE = "code";
    public static final String TYPE_TOKEN = "token";
    private OAuthConfig.Builder mConfigBuilder = new OAuthConfig.Builder();

    private XiaomiOAuthFuture<XiaomiOAuthResults> oauth(Activity activity) {
        if (this.mConfigBuilder.getContext() == null) {
            if (activity != null) {
                this.mConfigBuilder.context(activity.getApplicationContext());
            } else {
                throw new IllegalArgumentException("please set Context or Activity!!!");
            }
        }
        final WeakReference weakReference = new WeakReference(activity);
        XiaomiOAuthFutureImpl xiaomiOAuthFutureImpl = new XiaomiOAuthFutureImpl(new Callable<XiaomiOAuthResults>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public XiaomiOAuthResults call() throws Exception {
                OAuthConfig build = new OAuthConfig.Builder(XiaomiOAuthorize.this.mConfigBuilder).build();
                return OAuthFactory.createOAuth(build).startOAuth((Activity) weakReference.get(), build);
            }
        });
        AsyncTask.THREAD_POOL_EXECUTOR.execute(xiaomiOAuthFutureImpl);
        return xiaomiOAuthFutureImpl;
    }

    @Deprecated
    private static int[] scopeStringToIntArray(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : str.split(" ")) {
                try {
                    arrayList.add(Integer.valueOf(str2));
                } catch (NumberFormatException unused) {
                }
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        return iArr;
    }

    @Deprecated
    private static void startGetOAuthorize(final Activity activity, long j, String str, final String str2, Bundle bundle, final int i) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        XiaomiOAuthorize state = new XiaomiOAuthorize().setAppId(j).setRedirectUrl(str).setScope(scopeStringToIntArray(bundle.getString(XiaomiOAuthConstants.EXTRA_SCOPE))).setState(bundle.getString(XiaomiOAuthConstants.EXTRA_STATE));
        if (bundle.containsKey(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM)) {
            state.setSkipConfirm(bundle.getBoolean(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM));
        }
        final XiaomiOAuthFuture<XiaomiOAuthResults> startGetOAuthCode = "code".equalsIgnoreCase(str2) ? state.startGetOAuthCode(activity) : state.startGetAccessToken(activity);
        new AsyncTask<Void, Void, XiaomiOAuthResults>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.4

            /* renamed from: e */
            Exception f20755e;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public XiaomiOAuthResults doInBackground(Void... voidArr) {
                try {
                    return (XiaomiOAuthResults) XiaomiOAuthFuture.this.getResult();
                } catch (OperationCanceledException e) {
                    e.printStackTrace();
                    return null;
                } catch (XMAuthericationException e2) {
                    this.f20755e = e2;
                    return null;
                } catch (IOException e3) {
                    this.f20755e = e3;
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(XiaomiOAuthResults xiaomiOAuthResults) {
                int i2;
                Bundle bundle2 = new Bundle();
                if (xiaomiOAuthResults == null) {
                    if (this.f20755e == null) {
                        i2 = AuthorizeActivityBase.RESULT_CANCEL;
                        bundle2.putInt("error", i2);
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, "canceled");
                    } else {
                        i2 = AuthorizeActivityBase.RESULT_FAIL;
                        bundle2.putInt("error", i2);
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, this.f20755e.getMessage());
                    }
                } else if (xiaomiOAuthResults.hasError()) {
                    int i3 = AuthorizeActivityBase.RESULT_FAIL;
                    bundle2.putInt("error", xiaomiOAuthResults.getErrorCode());
                    bundle2.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, xiaomiOAuthResults.getErrorMessage());
                    i2 = i3;
                } else {
                    int i4 = AuthorizeActivityBase.RESULT_SUCCESS;
                    if ("code".equalsIgnoreCase(str2)) {
                        bundle2.putString("code", xiaomiOAuthResults.getCode());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_STATE_2, xiaomiOAuthResults.getState());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, xiaomiOAuthResults.getTokenType());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, xiaomiOAuthResults.getMacKey());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, xiaomiOAuthResults.getMacAlgorithm());
                    } else {
                        bundle2.putString("access_token", xiaomiOAuthResults.getAccessToken());
                        bundle2.putString("expires_in", xiaomiOAuthResults.getExpiresIn());
                        bundle2.putString("scope", xiaomiOAuthResults.getScopes());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_STATE_2, xiaomiOAuthResults.getState());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, xiaomiOAuthResults.getTokenType());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, xiaomiOAuthResults.getMacKey());
                        bundle2.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, xiaomiOAuthResults.getMacAlgorithm());
                    }
                    i2 = i4;
                }
                Activity activity2 = activity;
                activity2.startActivityForResult(AuthorizeActivityBase.asMiddleActivity(activity2, i2, bundle2, XiaomiOAuthorize.DEFAULT_AUTHORIZE_ACTIVITY_CLASS), i);
            }
        }.execute(new Void[0]);
    }

    public XiaomiOAuthFuture<String> callOpenApi(final Context context, final long j, final String str, final String str2, final String str3, final String str4) {
        final FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.2
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return AuthorizeApi.doHttpGet(context, str, j, str2, str3, str4);
            }
        });
        AsyncTask.THREAD_POOL_EXECUTOR.execute(futureTask);
        return new XiaomiOAuthFuture<String>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.3
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            public String getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get();
                } catch (InterruptedException e) {
                    throw new XMAuthericationException(e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                }
            }

            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            public String getResult(long j2, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get(j2, timeUnit);
                } catch (InterruptedException e) {
                    throw new XMAuthericationException(e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                } catch (TimeoutException e3) {
                    throw new XMAuthericationException(e3);
                }
            }
        };
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, @NonNull String str) {
        this.mConfigBuilder.fastOAuth(true);
        this.mConfigBuilder.responseType(str);
        return oauth(activity);
    }

    public XiaomiOAuthorize setAccountAuth(AccountAuth accountAuth) {
        this.mConfigBuilder.accountAuth(accountAuth);
        return this;
    }

    public XiaomiOAuthorize setAppId(long j) {
        this.mConfigBuilder.appId(j);
        return this;
    }

    public XiaomiOAuthorize setContext(Context context) {
        this.mConfigBuilder.context(context);
        return this;
    }

    public XiaomiOAuthorize setCustomizedAuthorizeActivityClass(Class<? extends AuthorizeActivityBase> cls) {
        this.mConfigBuilder.authorizeActivityClazz(cls);
        return this;
    }

    public XiaomiOAuthorize setDeviceID(String str) {
        this.mConfigBuilder.deviceID(str);
        return this;
    }

    public XiaomiOAuthorize setDisplay(String str) {
        this.mConfigBuilder.display(str);
        return this;
    }

    public XiaomiOAuthorize setHideSwitch(boolean z) {
        this.mConfigBuilder.hideSwitch(z);
        return this;
    }

    public XiaomiOAuthorize setKeepCookies(boolean z) {
        this.mConfigBuilder.keepCookies(z);
        return this;
    }

    public XiaomiOAuthorize setLoginType(String str) {
        this.mConfigBuilder.loginType(str);
        return this;
    }

    public XiaomiOAuthorize setNoMiui(boolean z) {
        this.mConfigBuilder.notUseMiui(z);
        return this;
    }

    public XiaomiOAuthorize setPhoneNumAutoFill(Context context, boolean z, long j) {
        if (z) {
            try {
                this.mConfigBuilder.phoneInfo(new MiAccountPhoneInfo(context, j));
            } catch (NoClassDefFoundError unused) {
                Log.e(TAG, "please add 'com.xiaomi.account:phoneNumKeep:+' to support setPhoneNumAutoFill");
            }
        }
        return this;
    }

    public XiaomiOAuthorize setPlatform(int i) {
        this.mConfigBuilder.platform(i);
        return this;
    }

    public XiaomiOAuthorize setRedirectUrl(String str) {
        this.mConfigBuilder.redirectUrl(str);
        return this;
    }

    public XiaomiOAuthorize setScope(int[] iArr) {
        this.mConfigBuilder.scopes(iArr);
        return this;
    }

    public XiaomiOAuthorize setSkipConfirm(boolean z) {
        this.mConfigBuilder.skipConfirm(z);
        return this;
    }

    public XiaomiOAuthorize setState(String str) {
        this.mConfigBuilder.state(str);
        return this;
    }

    public XiaomiOAuthorize setUseSystemAccountLogin(boolean z) {
        this.mConfigBuilder.useSystemAccountLogin(z);
        return this;
    }

    public XiaomiOAuthorize setUseSystemBrowserLogin(boolean z) {
        this.mConfigBuilder.useSystemBrowserLogin(z);
        return this;
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetAccessToken(Activity activity) {
        this.mConfigBuilder.responseType("token");
        return oauth(activity);
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetOAuthCode(Activity activity) {
        this.mConfigBuilder.responseType("code");
        return oauth(activity);
    }

    @Deprecated
    public static void startGetAccessToken(Activity activity, long j, String str, Bundle bundle, int i) {
        Log.w(TAG, "you are calling startGetAccessToken(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetAccessToken(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!");
        startGetOAuthorize(activity, j, str, "token", bundle, i);
    }

    @Deprecated
    public static void startGetOAuthCode(Activity activity, long j, String str, Bundle bundle, int i) {
        Log.w(TAG, "you are calling startGetOAuthCode(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetOAuthCode(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!");
        startGetOAuthorize(activity, j, str, "code", bundle, i);
    }

    public XiaomiOAuthorize setPhoneNumAutoFill(Context context, boolean z) {
        return setPhoneNumAutoFill(context, z, 2000L);
    }
}
