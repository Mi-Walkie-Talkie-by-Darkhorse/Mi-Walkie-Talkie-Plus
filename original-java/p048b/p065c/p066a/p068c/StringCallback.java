package p048b.p065c.p066a.p068c;

import okhttp3.Response;
import p048b.p065c.p066a.p069d.StringConvert;

/* renamed from: b.c.a.c.d */
/* loaded from: classes2.dex */
public abstract class StringCallback extends AbsCallback<String> {

    /* renamed from: a */
    private StringConvert f5326a = new StringConvert();

    @Override // p048b.p065c.p066a.p069d.Converter
    /* renamed from: h */
    public String mo21095f(Response response) throws Throwable {
        String mo21095f = this.f5326a.mo21095f(response);
        response.close();
        return mo21095f;
    }
}
