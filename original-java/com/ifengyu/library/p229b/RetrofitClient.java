package com.ifengyu.library.p229b;

import android.os.Build;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.library.BuildConfig;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.C4975r;
import com.ifengyu.library.utils.NetworkUtil;
import com.jakewharton.retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import org.bouncycastle.i18n.TextBundle;
import org.greenrobot.eventbus.EventBus;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* renamed from: com.ifengyu.library.b.b */
/* loaded from: classes2.dex */
public class RetrofitClient {

    /* renamed from: a */
    public static String f16362a;

    /* renamed from: b */
    private static String f16363b;

    /* renamed from: c */
    private static OkHttpClient f16364c;

    /* renamed from: d */
    private static Retrofit f16365d;

    /* renamed from: e */
    private static final AtomicBoolean f16366e;

    /* renamed from: f */
    private static final List<CountDownLatch> f16367f;

    /* renamed from: g */
    private static final Interceptor f16368g;

    static {
        f16362a = BuildConfig.f16360a.booleanValue() ? "https://api-mipoc.ifengyu.com:8088" : "https://api-mipoc-test.ifengyu.com";
        f16363b = f16362a + "/v1/user/refresh";
        f16366e = new AtomicBoolean(false);
        f16367f = new ArrayList();
        f16368g = C4964a.f16361a;
    }

    /* renamed from: a */
    private static void m8729a(Request.Builder builder) {
        builder.addHeader("AppVersion", C4968d.m8694a(BaseApp.m8712b())).addHeader("Model", Build.MODEL).addHeader("Sys", "Android").addHeader("SysVersion", Build.VERSION.RELEASE).addHeader("Network", NetworkUtil.m8643c(BaseApp.m8712b())).addHeader("User-Agent", C4968d.m8693b(BaseApp.m8712b()));
    }

    /* renamed from: b */
    private static Request m8728b(Request request) {
        Request.Builder newBuilder = request.newBuilder();
        m8719k(newBuilder);
        return newBuilder.build();
    }

    /* renamed from: c */
    public static String m8727c(String str) {
        return "Bearer " + str;
    }

    /* renamed from: d */
    public static Retrofit m8726d() {
        if (f16364c == null) {
            m8724f();
        }
        if (f16365d == null) {
            f16365d = new Retrofit.Builder().baseUrl(f16362a).client(f16364c).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create()).build();
        }
        return f16365d;
    }

    /* renamed from: e */
    public static void m8725e(String str) {
        if (C4975r.m8621a(str)) {
            return;
        }
        f16362a = str;
        f16363b = f16362a + "/v1/user/refresh";
    }

    /* renamed from: f */
    private static void m8724f() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder retryOnConnectionFailure = builder.connectTimeout(20L, timeUnit).readTimeout(20L, timeUnit).writeTimeout(20L, timeUnit).retryOnConnectionFailure(true);
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BASIC);
        retryOnConnectionFailure.addInterceptor(httpLoggingInterceptor);
        retryOnConnectionFailure.addInterceptor(f16368g);
        f16364c = retryOnConnectionFailure.build();
    }

    /* renamed from: g */
    private static boolean m8723g(MediaType mediaType) {
        return mediaType.type().equals(TextBundle.TEXT_ENTRY) || mediaType.subtype().equals("json") || mediaType.subtype().equals("xml") || mediaType.subtype().equals("html") || mediaType.subtype().equals("webviewhtml");
    }

    /* renamed from: h */
    private static boolean m8722h(Response response) {
        ResponseBody body;
        if (response.code() == 401 && (body = response.body()) != null) {
            try {
                MediaType contentType = body.contentType();
                if (contentType != null && m8723g(contentType)) {
                    if (((NewHttpResult) new Gson().fromJson(body.string(), (Class<Object>) NewHttpResult.class)).getCode() == 10031) {
                        C4971k.m8657c("RetrofitClient", "access token 过期");
                        return true;
                    }
                    EventBus.m174c().m164m(new SimpleEvent(2));
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ Response m8721i(Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        m8729a(newBuilder);
        m8719k(newBuilder);
        Request build = newBuilder.build();
        Response proceed = chain.proceed(build);
        if (m8722h(proceed)) {
            AtomicBoolean atomicBoolean = f16366e;
            if (atomicBoolean.compareAndSet(false, true)) {
                C4971k.m8654f("RetrofitClient", "Token expired, try to refresh.");
                UserInfo.Tokens m8720j = m8720j();
                if (m8720j == null) {
                    atomicBoolean.set(false);
                    m8718l();
                    C4971k.m8657c("RetrofitClient", "Token refresh failed, send event to login back.");
                    EventBus.m174c().m164m(new SimpleEvent(2));
                    return proceed;
                }
                C4971k.m8654f("RetrofitClient", "Token refreshed successfully.");
                UserCache.setTokens(m8720j);
                atomicBoolean.set(false);
                m8718l();
            } else {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                f16367f.add(countDownLatch);
                try {
                    countDownLatch.await(15000L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException unused) {
                    C4971k.m8647m("RetrofitClient", "Interrupted! Wait for the token refresh timeout, and return original response directly.");
                    f16367f.remove(countDownLatch);
                    return proceed;
                }
            }
            return chain.proceed(m8728b(build));
        }
        return proceed;
    }

    /* renamed from: j */
    private static UserInfo.Tokens m8720j() throws IOException {
        UserInfo.Tokens tokens;
        C4971k.m8659a("RetrofitClient", "refresh token -----------------------");
        UserInfo userInfo = UserCache.getUserInfo();
        if (userInfo != null && !TextUtils.isEmpty(userInfo.tokens.refreshToken)) {
            Response execute = new OkHttpClient().newCall(new Request.Builder().url(f16363b).addHeader("Authorization", "Bearer " + userInfo.tokens.refreshToken).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), "")).build()).execute();
            if (execute.code() == 401) {
                C4971k.m8657c("RetrofitClient", "refresh token 过期, status code: 401");
                return null;
            } else if (execute.code() != 200) {
                C4971k.m8657c("RetrofitClient", "status code: " + execute.code());
                return null;
            } else {
                ResponseBody body = execute.body();
                if (body != null && (tokens = (UserInfo.Tokens) new Gson().fromJson(body.string(), (Class<Object>) UserInfo.Tokens.class)) != null && !TextUtils.isEmpty(tokens.accessToken) && !TextUtils.isEmpty(tokens.refreshToken)) {
                    return tokens;
                }
            }
        }
        return null;
    }

    /* renamed from: k */
    private static void m8719k(Request.Builder builder) {
        UserInfo userInfo = UserCache.getUserInfo();
        if (userInfo == null || TextUtils.isEmpty(userInfo.tokens.accessToken)) {
            return;
        }
        builder.header("Authorization", m8727c(userInfo.tokens.accessToken));
    }

    /* renamed from: l */
    private static void m8718l() {
        for (CountDownLatch countDownLatch : f16367f) {
            countDownLatch.countDown();
        }
        f16367f.clear();
    }
}
