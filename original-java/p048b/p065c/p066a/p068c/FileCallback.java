package p048b.p065c.p066a.p068c;

import java.io.File;
import okhttp3.Response;
import p048b.p065c.p066a.p069d.FileConvert;

/* renamed from: b.c.a.c.c */
/* loaded from: classes2.dex */
public abstract class FileCallback extends AbsCallback<File> {

    /* renamed from: a */
    private FileConvert f5325a;

    public FileCallback(String str, String str2) {
        FileConvert fileConvert = new FileConvert(str, str2);
        this.f5325a = fileConvert;
        fileConvert.m21096l(this);
    }

    @Override // p048b.p065c.p066a.p069d.Converter
    /* renamed from: h */
    public File mo21095f(Response response) throws Throwable {
        File mo21095f = this.f5325a.mo21095f(response);
        response.close();
        return mo21095f;
    }
}
