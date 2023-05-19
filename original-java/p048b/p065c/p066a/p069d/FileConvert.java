package p048b.p065c.p066a.p069d;

import android.os.Environment;
import android.text.TextUtils;
import com.lzy.okgo.model.Progress;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p048b.p065c.p066a.p068c.Callback;
import p048b.p065c.p066a.p072g.HttpUtils;
import p048b.p065c.p066a.p072g.IOUtils;

/* renamed from: b.c.a.d.b */
/* loaded from: classes2.dex */
public class FileConvert implements Converter<File> {

    /* renamed from: d */
    public static final String f5327d;

    /* renamed from: a */
    private String f5328a;

    /* renamed from: b */
    private String f5329b;

    /* renamed from: c */
    private Callback<File> f5330c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileConvert.java */
    /* renamed from: b.c.a.d.b$a */
    /* loaded from: classes2.dex */
    public class C1133a implements Progress.InterfaceC5130a {
        C1133a() {
        }

        @Override // com.lzy.okgo.model.Progress.InterfaceC5130a
        /* renamed from: a */
        public void mo8203a(Progress progress) {
            FileConvert.this.m21097k(progress);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileConvert.java */
    /* renamed from: b.c.a.d.b$b */
    /* loaded from: classes2.dex */
    public class RunnableC1134b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Progress f5332a;

        RunnableC1134b(Progress progress) {
            this.f5332a = progress;
        }

        @Override // java.lang.Runnable
        public void run() {
            FileConvert.this.f5330c.mo21103e(this.f5332a);
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("download");
        sb.append(str);
        f5327d = sb.toString();
    }

    public FileConvert(String str, String str2) {
        this.f5328a = str;
        this.f5329b = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m21097k(Progress progress) {
        HttpUtils.m21057h(new RunnableC1134b(progress));
    }

    @Override // p048b.p065c.p066a.p069d.Converter
    /* renamed from: j */
    public File mo21095f(Response response) throws Throwable {
        FileOutputStream fileOutputStream;
        String httpUrl = response.request().url().toString();
        if (TextUtils.isEmpty(this.f5328a)) {
            this.f5328a = Environment.getExternalStorageDirectory() + f5327d;
        }
        if (TextUtils.isEmpty(this.f5329b)) {
            this.f5329b = HttpUtils.m21059f(response, httpUrl);
        }
        File file = new File(this.f5328a);
        IOUtils.m21055b(file);
        File file2 = new File(file, this.f5329b);
        IOUtils.m21054c(file2);
        byte[] bArr = new byte[8192];
        InputStream inputStream = null;
        try {
            ResponseBody body = response.body();
            if (body == null) {
                IOUtils.m21056a(null);
                IOUtils.m21056a(null);
                return null;
            }
            InputStream byteStream = body.byteStream();
            try {
                Progress progress = new Progress();
                progress.f16782g = body.contentLength();
                progress.f16780e = this.f5329b;
                progress.f16779d = file2.getAbsolutePath();
                progress.f16785j = 2;
                progress.f16777b = httpUrl;
                progress.f16776a = httpUrl;
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = byteStream.read(bArr);
                        if (read != -1) {
                            fileOutputStream.write(bArr, 0, read);
                            if (this.f5330c != null) {
                                Progress.m8243c(progress, read, new C1133a());
                            }
                        } else {
                            fileOutputStream.flush();
                            IOUtils.m21056a(byteStream);
                            IOUtils.m21056a(fileOutputStream);
                            return file2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = byteStream;
                        IOUtils.m21056a(inputStream);
                        IOUtils.m21056a(fileOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: l */
    public void m21096l(Callback<File> callback) {
        this.f5330c = callback;
    }
}
