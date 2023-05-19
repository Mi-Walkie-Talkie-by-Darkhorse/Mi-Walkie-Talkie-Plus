package p048b.p065c.p066a.p068c;

import com.lzy.okgo.model.C5131a;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.Request;
import p048b.p065c.p066a.p069d.Converter;

/* renamed from: b.c.a.c.b */
/* loaded from: classes2.dex */
public interface Callback<T> extends Converter<T> {
    /* renamed from: a */
    void mo21104a(Progress progress);

    /* renamed from: b */
    void mo6469b(C5131a<T> c5131a);

    /* renamed from: c */
    void mo6468c(C5131a<T> c5131a);

    /* renamed from: d */
    void mo6504d(Request<T, ? extends Request> request);

    /* renamed from: e */
    void mo21103e(Progress progress);

    /* renamed from: g */
    void mo6503g(C5131a<T> c5131a);

    void onFinish();
}
