package com.xiaomi.account.auth;

import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthResponse.Stub;
import com.xiaomi.account.XiaomiOAuthResponse;
import com.xiaomi.account.http.HttpClient;
import com.xiaomi.account.http.Request.Builder;
import com.xiaomi.account.http.Response;
import com.xiaomi.account.http.UrlConnHttpFactory;
import com.xiaomi.account.openauth.AccountAuth;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.utils.OAuthUrlPaser;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.TimeUnit;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class WebViewOauth implements XiaomiOAuth {
    private static final String AUTHORIZE_PATH = (XiaomiOAuthConstants.OAUTH2_HOST + "/oauth2/authorize");
    private static final String LOCALE_KEY_IN_URL = "_locale";
    private static final String TAG = "WebViewOauth";
    private String mAppId;
    private Context mContext;
    private String mRedirectUrl;

    public WebViewOauth(Context context, String str, String str2) {
        this.mContext = context;
        this.mAppId = str;
        this.mRedirectUrl = str2;
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig oAuthConfig) {
        return new XiaomiOAuthFuture<XiaomiOAuthResults>() {
            public XiaomiOAuthResults getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                throw new XMAuthericationException("only miui support fastOAuth");
            }

            public XiaomiOAuthResults getResult(long j, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
                throw new XMAuthericationException("only miui support fastOAuth");
            }
        };
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, final OAuthConfig oAuthConfig) {
        final WeakReference weakReference = new WeakReference(activity);
        final XiaomiOAuthFutureImpl xiaomiOAuthFutureImpl = new XiaomiOAuthFutureImpl();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() {
            public void run() {
                try {
                    xiaomiOAuthFutureImpl.set(WebViewOauth.this.quietOAuth(oAuthConfig));
                } catch (AuthenticatorException e) {
                    Activity activity = (Activity) weakReference.get();
                    if (activity == null || activity.isFinishing()) {
                        xiaomiOAuthFutureImpl.setException(new AuthenticatorException("activity has been finished"));
                    } else {
                        activity.startActivity(WebViewOauth.this.getIntent(activity, oAuthConfig, new Stub() {
                            public void onResult(Bundle bundle) throws RemoteException {
                                xiaomiOAuthFutureImpl.set(XiaomiOAuthResults.parseBundle(bundle));
                            }

                            public void onCancel() throws RemoteException {
                                xiaomiOAuthFutureImpl.setException(new OperationCanceledException());
                            }
                        }));
                    }
                } catch (IOException e2) {
                    xiaomiOAuthFutureImpl.setException(e2);
                } catch (XMAuthericationException e3) {
                    xiaomiOAuthFutureImpl.setException(e3);
                }
            }
        });
        return xiaomiOAuthFutureImpl;
    }

    /* access modifiers changed from: private */
    public XiaomiOAuthResults quietOAuth(OAuthConfig oAuthConfig) throws AuthenticatorException, IOException, XMAuthericationException {
        if (oAuthConfig.accountAuth == null) {
            throw new AuthenticatorException();
        }
        AccountAuth accountAuth = oAuthConfig.accountAuth;
        int i = 0;
        while (i < 2) {
            HttpClient createHttpClient = new UrlConnHttpFactory().createHttpClient();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("userId", accountAuth.getUserId());
            hashMap2.put(AuthorizeActivityBase.KEY_SERVICETOKEN, accountAuth.getServiceToken());
            hashMap.put("Cookie", joinMap(hashMap2, "; "));
            Response excute = createHttpClient.excute(new Builder().url(getUrl(oAuthConfig)).followRedirects(false).headers(hashMap).build());
            if (excute.location == null) {
                throw new AuthenticatorException();
            } else if (excute.location.startsWith(this.mRedirectUrl)) {
                Bundle parse = OAuthUrlPaser.parse(excute.location);
                if (parse != null) {
                    return XiaomiOAuthResults.parseBundle(parse);
                }
                throw new XMAuthericationException("parse url fail:" + excute.location);
            } else {
                accountAuth.invalideServiceToken();
                i++;
            }
        }
        throw new AuthenticatorException();
    }

    /* access modifiers changed from: private */
    public Intent getIntent(Activity activity, OAuthConfig oAuthConfig, IXiaomiAuthResponse iXiaomiAuthResponse) {
        Intent intent = new Intent(activity, oAuthConfig.authorizeActivityClazz);
        intent.putExtra("url", getUrl(oAuthConfig));
        intent.putExtra(AuthorizeActivityBase.KEY_KEEP_COOKIES, oAuthConfig.keepCookies);
        intent.putExtra("extra_response", new XiaomiOAuthResponse(iXiaomiAuthResponse));
        AccountAuth accountAuth = oAuthConfig.accountAuth;
        if (accountAuth != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("userId", accountAuth.getUserId());
            hashMap.put(AuthorizeActivityBase.KEY_SERVICETOKEN, accountAuth.getServiceToken());
            intent.putExtra(AuthorizeActivityBase.KEY_USERID, "userId=" + accountAuth.getUserId());
            intent.putExtra(AuthorizeActivityBase.KEY_SERVICETOKEN, "serviceToken=" + accountAuth.getServiceToken());
        }
        return intent;
    }

    private String getUrl(OAuthConfig oAuthConfig) {
        Bundle bundle = new Bundle();
        bundle.putString(Constants.PARAM_CLIENT_ID, this.mAppId);
        bundle.putString(AuthorizeActivityBase.KEY_REDIRECT_URI, this.mRedirectUrl);
        bundle.putString("response_type", oAuthConfig.responseType);
        bundle.putString("scope", oAuthConfig.scopes);
        bundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, oAuthConfig.state);
        if (oAuthConfig.skipConfirm != null) {
            bundle.putString("skip_confirm", String.valueOf(oAuthConfig.skipConfirm));
        }
        bundle.putString("pt", "" + oAuthConfig.platform);
        bundle.putString("device_id", oAuthConfig.deviceID);
        addLocaleIfNeeded(bundle);
        return AUTHORIZE_PATH + "?" + parseBundle(bundle);
    }

    private void addLocaleIfNeeded(Bundle bundle) {
        if (bundle != null && !bundle.containsKey(LOCALE_KEY_IN_URL)) {
            String localeString = getLocaleString(Locale.getDefault());
            if (!TextUtils.isEmpty(localeString)) {
                bundle.putString(LOCALE_KEY_IN_URL, localeString);
            }
        }
    }

    private static String getLocaleString(Locale locale) {
        if (locale == null) {
            return null;
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (TextUtils.isEmpty(country)) {
            return language;
        }
        return String.format("%s_%s", new Object[]{language, country});
    }

    private String parseBundle(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (String str : bundle.keySet()) {
            String string = bundle.getString(str);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(string)) {
                arrayList.add(new BasicNameValuePair(str, string));
            }
        }
        return URLEncodedUtils.format(arrayList, "UTF-8");
    }

    private String getCookie(String str, String str2) {
        return str + "=" + str2;
    }

    protected static String joinMap(Map<String, String> map, String str) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        Iterator it = map.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return sb.toString();
            }
            Entry entry = (Entry) it.next();
            if (i2 > 0) {
                sb.append(str);
            }
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            sb.append(str2);
            sb.append("=");
            sb.append(str3);
            i = i2 + 1;
        }
    }
}
