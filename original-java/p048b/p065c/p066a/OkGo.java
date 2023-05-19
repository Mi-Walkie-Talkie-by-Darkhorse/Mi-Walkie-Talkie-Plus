package p048b.p065c.p066a;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.interceptor.HttpLoggingInterceptor;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.GetRequest;
import com.lzy.okgo.request.PostRequest;
import com.lzy.okgo.request.PutRequest;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.OkHttpClient;
import p048b.p065c.p066a.p071f.HttpsUtils;
import p048b.p065c.p066a.p072g.HttpUtils;

/* renamed from: b.c.a.a */
/* loaded from: classes2.dex */
public class OkGo {

    /* renamed from: i */
    public static long f5312i = 300;

    /* renamed from: a */
    private Application f5313a;

    /* renamed from: b */
    private Handler f5314b;

    /* renamed from: c */
    private OkHttpClient f5315c;

    /* renamed from: d */
    private HttpParams f5316d;

    /* renamed from: e */
    private HttpHeaders f5317e;

    /* renamed from: f */
    private int f5318f;

    /* renamed from: g */
    private CacheMode f5319g;

    /* renamed from: h */
    private long f5320h;

    /* compiled from: OkGo.java */
    /* renamed from: b.c.a.a$b */
    /* loaded from: classes2.dex */
    private static class C1131b {

        /* renamed from: a */
        private static OkGo f5321a = new OkGo();
    }

    /* renamed from: a */
    public static <T> GetRequest<T> m21121a(String str) {
        return new GetRequest<>(str);
    }

    /* renamed from: h */
    public static OkGo m21114h() {
        return C1131b.f5321a;
    }

    /* renamed from: k */
    public static <T> PostRequest<T> m21111k(String str) {
        return new PostRequest<>(str);
    }

    /* renamed from: l */
    public static <T> PutRequest<T> m21110l(String str) {
        return new PutRequest<>(str);
    }

    /* renamed from: b */
    public CacheMode m21120b() {
        return this.f5319g;
    }

    /* renamed from: c */
    public long m21119c() {
        return this.f5320h;
    }

    /* renamed from: d */
    public HttpHeaders m21118d() {
        return this.f5317e;
    }

    /* renamed from: e */
    public HttpParams m21117e() {
        return this.f5316d;
    }

    /* renamed from: f */
    public Context m21116f() {
        HttpUtils.m21063b(this.f5313a, "please call OkGo.getInstance().init() first in application!");
        return this.f5313a;
    }

    /* renamed from: g */
    public Handler m21115g() {
        return this.f5314b;
    }

    /* renamed from: i */
    public OkHttpClient m21113i() {
        HttpUtils.m21063b(this.f5315c, "please call OkGo.getInstance().setOkHttpClient() first in application!");
        return this.f5315c;
    }

    /* renamed from: j */
    public int m21112j() {
        return this.f5318f;
    }

    /* renamed from: m */
    public OkGo m21109m(OkHttpClient okHttpClient) {
        HttpUtils.m21063b(okHttpClient, "okHttpClient == null");
        this.f5315c = okHttpClient;
        return this;
    }

    private OkGo() {
        this.f5314b = new Handler(Looper.getMainLooper());
        this.f5318f = 3;
        this.f5320h = -1L;
        this.f5319g = CacheMode.NO_CACHE;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("OkGo");
        httpLoggingInterceptor.m8264h(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.m8265g(Level.INFO);
        builder.addInterceptor(httpLoggingInterceptor);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.readTimeout(60000L, timeUnit);
        builder.writeTimeout(60000L, timeUnit);
        builder.connectTimeout(60000L, timeUnit);
        HttpsUtils.C1139c m21070b = HttpsUtils.m21070b();
        builder.sslSocketFactory(m21070b.f5354a, m21070b.f5355b);
        builder.hostnameVerifier(HttpsUtils.f5353b);
        this.f5315c = builder.build();
    }
}
