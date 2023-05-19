package p048b.p065c.p066a.p067b;

import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.cache.p240a.CachePolicy;
import com.lzy.okgo.cache.p240a.DefaultCachePolicy;
import com.lzy.okgo.cache.p240a.FirstCacheRequestPolicy;
import com.lzy.okgo.cache.p240a.NoCachePolicy;
import com.lzy.okgo.cache.p240a.NoneCacheRequestPolicy;
import com.lzy.okgo.cache.p240a.RequestFailedCachePolicy;
import com.lzy.okgo.request.base.Request;
import p048b.p065c.p066a.p068c.Callback;
import p048b.p065c.p066a.p072g.HttpUtils;

/* renamed from: b.c.a.b.a */
/* loaded from: classes2.dex */
public class CacheCall<T> implements Call<T> {

    /* renamed from: a */
    private CachePolicy<T> f5322a;

    /* renamed from: b */
    private Request<T, ? extends Request> f5323b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CacheCall.java */
    /* renamed from: b.c.a.b.a$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C1132a {

        /* renamed from: a */
        static final /* synthetic */ int[] f5324a;

        static {
            int[] iArr = new int[CacheMode.values().length];
            f5324a = iArr;
            try {
                iArr[CacheMode.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5324a[CacheMode.NO_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5324a[CacheMode.IF_NONE_CACHE_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5324a[CacheMode.FIRST_CACHE_THEN_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5324a[CacheMode.REQUEST_FAILED_READ_CACHE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public CacheCall(Request<T, ? extends Request> request) {
        this.f5322a = null;
        this.f5323b = request;
        this.f5322a = m21106c();
    }

    /* renamed from: c */
    private CachePolicy<T> m21106c() {
        int i = C1132a.f5324a[this.f5323b.m8218i().ordinal()];
        if (i == 1) {
            this.f5322a = new DefaultCachePolicy(this.f5323b);
        } else if (i == 2) {
            this.f5322a = new NoCachePolicy(this.f5323b);
        } else if (i == 3) {
            this.f5322a = new NoneCacheRequestPolicy(this.f5323b);
        } else if (i == 4) {
            this.f5322a = new FirstCacheRequestPolicy(this.f5323b);
        } else if (i == 5) {
            this.f5322a = new RequestFailedCachePolicy(this.f5323b);
        }
        if (this.f5323b.m8217j() != null) {
            this.f5322a = this.f5323b.m8217j();
        }
        HttpUtils.m21063b(this.f5322a, "policy == null");
        return this.f5322a;
    }

    @Override // p048b.p065c.p066a.p067b.Call
    /* renamed from: a */
    public void mo21105a(Callback<T> callback) {
        HttpUtils.m21063b(callback, "callback == null");
        this.f5322a.mo8275d(this.f5322a.mo8279e(), callback);
    }

    /* renamed from: b */
    public Call<T> clone() {
        return new CacheCall(this.f5323b);
    }
}
