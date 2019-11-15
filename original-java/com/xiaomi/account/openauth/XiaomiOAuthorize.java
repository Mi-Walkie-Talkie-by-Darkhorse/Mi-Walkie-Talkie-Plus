package com.xiaomi.account.openauth;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.account.auth.AuthorizeApi;
import com.xiaomi.account.auth.OAuthConfig;
import com.xiaomi.account.auth.OAuthConfig.Builder;
import com.xiaomi.account.auth.OAuthFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class XiaomiOAuthorize {
    /* access modifiers changed from: private */
    public static final Class<? extends AuthorizeActivityBase> DEFAULT_AUTHORIZE_ACTIVITY_CLASS = AuthorizeActivity.class;
    private static final String TAG = "XiaomiOAuthorize";
    public static final String TYPE_CODE = "code";
    public static final String TYPE_TOKEN = "token";
    private Builder mConfigBuilder = new Builder();

    public XiaomiOAuthorize setScope(int[] iArr) {
        this.mConfigBuilder.scopes(iArr);
        return this;
    }

    public XiaomiOAuthorize setAppId(long j) {
        this.mConfigBuilder.appId(j);
        return this;
    }

    public XiaomiOAuthorize setRedirectUrl(String str) {
        this.mConfigBuilder.redirectUrl(str);
        return this;
    }

    public XiaomiOAuthorize setSkipConfirm(boolean z) {
        this.mConfigBuilder.skipConfirm(z);
        return this;
    }

    public XiaomiOAuthorize setNoMiui(boolean z) {
        this.mConfigBuilder.notUseMiui(z);
        return this;
    }

    public XiaomiOAuthorize setState(String str) {
        this.mConfigBuilder.state(str);
        return this;
    }

    public XiaomiOAuthorize setKeepCookies(boolean z) {
        this.mConfigBuilder.keepCookies(z);
        return this;
    }

    public XiaomiOAuthorize setCustomizedAuthorizeActivityClass(Class<? extends AuthorizeActivityBase> cls) {
        this.mConfigBuilder.authorizeActivityClazz(cls);
        return this;
    }

    public XiaomiOAuthorize setAccountAuth(AccountAuth accountAuth) {
        this.mConfigBuilder.accountAuth(accountAuth);
        return this;
    }

    public XiaomiOAuthorize setPlatform(int i) {
        this.mConfigBuilder.platform(i);
        return this;
    }

    public XiaomiOAuthorize setDeviceID(String str) {
        this.mConfigBuilder.deviceID(str);
        return this;
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, @NonNull String str) {
        if (activity == null || activity.isFinishing()) {
            throw new IllegalArgumentException("activity should not be null and should be running");
        }
        OAuthConfig build = new Builder(this.mConfigBuilder).responseType(str).build();
        return OAuthFactory.createOAuth(activity.getApplicationContext(), build).fastOAuth(activity, build);
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetAccessToken(Activity activity) {
        return oauth(activity, "token");
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetOAuthCode(Activity activity) {
        return oauth(activity, "code");
    }

    private XiaomiOAuthFuture<XiaomiOAuthResults> oauth(Activity activity, String str) {
        if (activity == null || activity.isFinishing()) {
            throw new IllegalArgumentException("activity should not be null and should be running");
        }
        OAuthConfig build = new Builder(this.mConfigBuilder).responseType(str).build();
        return OAuthFactory.createOAuth(activity.getApplicationContext(), build).getCodeOrAccessToken(activity, build);
    }

    public XiaomiOAuthFuture<String> callOpenApi(Context context, long j, String str, String str2, String str3, String str4) {
        final Context context2 = context;
        final String str5 = str;
        final long j2 = j;
        final String str6 = str2;
        final String str7 = str3;
        final String str8 = str4;
        final FutureTask futureTask = new FutureTask(new Callable<String>() {
            public String call() throws Exception {
                return AuthorizeApi.doHttpGet(context2, str5, j2, str6, str7, str8);
            }
        });
        AsyncTask.THREAD_POOL_EXECUTOR.execute(futureTask);
        return new XiaomiOAuthFuture<String>() {
            public String getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get();
                } catch (InterruptedException e) {
                    throw new XMAuthericationException((Throwable) e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                }
            }

            public String getResult(long j, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get(j, timeUnit);
                } catch (InterruptedException e) {
                    throw new XMAuthericationException((Throwable) e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                } catch (TimeoutException e3) {
                    throw new XMAuthericationException((Throwable) e3);
                }
            }
        };
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

    @Deprecated
    private static void startGetOAuthorize(final Activity activity, long j, String str, final String str2, Bundle bundle, final int i) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        XiaomiOAuthorize state = new XiaomiOAuthorize().setAppId(j).setRedirectUrl(str).setScope(scopeStringToIntArray(bundle.getString(XiaomiOAuthConstants.EXTRA_SCOPE))).setState(bundle.getString(XiaomiOAuthConstants.EXTRA_STATE));
        if (bundle.containsKey(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM)) {
            state.setSkipConfirm(bundle.getBoolean(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM));
        }
        final XiaomiOAuthFuture startGetAccessToken = "code".equalsIgnoreCase(str2) ? state.startGetOAuthCode(activity) : state.startGetAccessToken(activity);
        new AsyncTask<Void, Void, XiaomiOAuthResults>() {
            Exception e;

            /* access modifiers changed from: protected */
            public XiaomiOAuthResults doInBackground(Void... voidArr) {
                try {
                    return (XiaomiOAuthResults) startGetAccessToken.getResult();
                } catch (OperationCanceledException e2) {
                    ThrowableExtension.printStackTrace(e2);
                } catch (IOException e3) {
                    this.e = e3;
                } catch (XMAuthericationException e4) {
                    this.e = e4;
                }
                return null;
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(XiaomiOAuthResults xiaomiOAuthResults) {
                int i;
                Bundle bundle = new Bundle();
                if (xiaomiOAuthResults == null) {
                    if (this.e == null) {
                        i = AuthorizeActivityBase.RESULT_CANCEL;
                        bundle.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2, AuthorizeActivityBase.RESULT_CANCEL);
                        bundle.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, "canceled");
                    } else {
                        i = AuthorizeActivityBase.RESULT_FAIL;
                        bundle.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2, AuthorizeActivityBase.RESULT_FAIL);
                        bundle.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, this.e.getMessage());
                    }
                } else if (xiaomiOAuthResults.hasError()) {
                    i = AuthorizeActivityBase.RESULT_FAIL;
                    bundle.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2, xiaomiOAuthResults.getErrorCode());
                    bundle.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2, xiaomiOAuthResults.getErrorMessage());
                } else {
                    i = AuthorizeActivityBase.RESULT_SUCCESS;
                    if ("code".equalsIgnoreCase(str2)) {
                        bundle.putString("code", xiaomiOAuthResults.getCode());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, xiaomiOAuthResults.getState());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, xiaomiOAuthResults.getTokenType());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, xiaomiOAuthResults.getMacKey());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, xiaomiOAuthResults.getMacAlgorithm());
                    } else {
                        bundle.putString("access_token", xiaomiOAuthResults.getAccessToken());
                        bundle.putString("expires_in", xiaomiOAuthResults.getExpiresIn());
                        bundle.putString("scope", xiaomiOAuthResults.getScopes());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, xiaomiOAuthResults.getState());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, xiaomiOAuthResults.getTokenType());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, xiaomiOAuthResults.getMacKey());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, xiaomiOAuthResults.getMacAlgorithm());
                    }
                }
                activity.startActivityForResult(AuthorizeActivityBase.asMiddleActivity(activity, i, bundle, XiaomiOAuthorize.DEFAULT_AUTHORIZE_ACTIVITY_CLASS), i);
            }
        }.execute(new Void[0]);
    }

    @Deprecated
    private static int[] scopeStringToIntArray(String str) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String valueOf : str.split(Token.SEPARATOR)) {
                try {
                    arrayList.add(Integer.valueOf(valueOf));
                } catch (NumberFormatException e) {
                }
            }
        }
        int[] iArr = new int[arrayList.size()];
        while (true) {
            int i2 = i;
            if (i2 >= iArr.length) {
                return iArr;
            }
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            i = i2 + 1;
        }
    }
}
