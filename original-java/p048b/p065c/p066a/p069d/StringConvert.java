package p048b.p065c.p066a.p069d;

import okhttp3.Response;
import okhttp3.ResponseBody;

/* renamed from: b.c.a.d.c */
/* loaded from: classes2.dex */
public class StringConvert implements Converter<String> {
    @Override // p048b.p065c.p066a.p069d.Converter
    /* renamed from: h */
    public String mo21095f(Response response) throws Throwable {
        ResponseBody body = response.body();
        if (body == null) {
            return null;
        }
        return body.string();
    }
}
