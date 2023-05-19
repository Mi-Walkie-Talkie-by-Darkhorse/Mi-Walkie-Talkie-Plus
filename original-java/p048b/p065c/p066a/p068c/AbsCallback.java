package p048b.p065c.p066a.p068c;

import com.lzy.okgo.model.C5131a;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.Request;
import p048b.p065c.p066a.p072g.OkLogger;

/* renamed from: b.c.a.c.a */
/* loaded from: classes2.dex */
public abstract class AbsCallback<T> implements Callback<T> {
    @Override // p048b.p065c.p066a.p068c.Callback
    /* renamed from: a */
    public void mo21104a(Progress progress) {
    }

    @Override // p048b.p065c.p066a.p068c.Callback
    /* renamed from: b */
    public void mo6469b(C5131a<T> c5131a) {
        OkLogger.m21049a(c5131a.m8239d());
    }

    @Override // p048b.p065c.p066a.p068c.Callback
    /* renamed from: d */
    public void mo6504d(Request<T, ? extends Request> request) {
    }

    @Override // p048b.p065c.p066a.p068c.Callback
    /* renamed from: e */
    public void mo21103e(Progress progress) {
    }

    @Override // p048b.p065c.p066a.p068c.Callback
    /* renamed from: g */
    public void mo6503g(C5131a<T> c5131a) {
    }

    @Override // p048b.p065c.p066a.p068c.Callback
    public void onFinish() {
    }
}
