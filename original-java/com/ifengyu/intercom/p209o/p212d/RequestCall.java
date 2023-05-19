package com.ifengyu.intercom.p209o.p212d;

import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ifengyu.intercom.p209o.OkHttpUtils;
import com.ifengyu.intercom.p209o.p211c.AbstractC4132a;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* renamed from: com.ifengyu.intercom.o.d.c */
/* loaded from: classes2.dex */
public class RequestCall {

    /* renamed from: a */
    private OkHttpRequest f14423a;

    /* renamed from: b */
    private Request f14424b;

    /* renamed from: c */
    private Call f14425c;

    /* renamed from: d */
    private long f14426d;

    /* renamed from: e */
    private long f14427e;

    /* renamed from: f */
    private long f14428f;

    /* renamed from: g */
    private OkHttpClient f14429g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestCall.java */
    /* renamed from: com.ifengyu.intercom.o.d.c$a */
    /* loaded from: classes2.dex */
    public class C4135a implements Interceptor {
        C4135a(RequestCall requestCall) {
        }

        @Override // okhttp3.Interceptor
        @NonNull
        public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            UserInfo userInfo = UserCache.getUserInfo();
            String str = userInfo == null ? "" : userInfo.apiKey;
            String valueOf = String.valueOf(System.currentTimeMillis());
            return chain.proceed(request.newBuilder().addHeader("userId", String.valueOf(UserCache.getAccount())).addHeader(CrashHianalyticsData.TIME, valueOf).addHeader("sign", MD5Util.m11040b(str + valueOf)).build());
        }
    }

    public RequestCall(OkHttpRequest okHttpRequest) {
        this.f14423a = okHttpRequest;
    }

    /* renamed from: c */
    private Request m11324c(AbstractC4132a abstractC4132a) {
        return this.f14423a.m11330e(abstractC4132a);
    }

    /* renamed from: a */
    public Call m11326a(AbstractC4132a abstractC4132a) {
        this.f14424b = m11324c(abstractC4132a);
        long j = this.f14426d;
        if (j <= 0 && this.f14427e <= 0 && this.f14428f <= 0) {
            this.f14425c = OkHttpUtils.m11351d().m11350e().newCall(this.f14424b);
        } else {
            if (j <= 0) {
                j = 10000;
            }
            this.f14426d = j;
            long j2 = this.f14427e;
            if (j2 <= 0) {
                j2 = 10000;
            }
            this.f14427e = j2;
            long j3 = this.f14428f;
            this.f14428f = j3 > 0 ? j3 : 10000L;
            OkHttpClient.Builder newBuilder = OkHttpUtils.m11351d().m11350e().newBuilder();
            long j4 = this.f14426d;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            OkHttpClient.Builder connectTimeout = newBuilder.readTimeout(j4, timeUnit).writeTimeout(this.f14427e, timeUnit).connectTimeout(this.f14428f, timeUnit);
            connectTimeout.addInterceptor(new C4135a(this));
            OkHttpClient build = connectTimeout.build();
            this.f14429g = build;
            this.f14425c = build.newCall(this.f14424b);
        }
        return this.f14425c;
    }

    /* renamed from: b */
    public void m11325b(AbstractC4132a abstractC4132a) {
        m11326a(abstractC4132a);
        if (abstractC4132a != null) {
            abstractC4132a.m11341c(this.f14424b, m11322e().m11329f());
        }
        OkHttpUtils.m11351d().m11354a(this, abstractC4132a);
    }

    /* renamed from: d */
    public Call m11323d() {
        return this.f14425c;
    }

    /* renamed from: e */
    public OkHttpRequest m11322e() {
        return this.f14423a;
    }
}
