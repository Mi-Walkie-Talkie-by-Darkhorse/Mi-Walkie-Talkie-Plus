package com.ifengyu.intercom.p209o.p211c;

import com.ifengyu.intercom.p209o.OkHttpUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;

/* renamed from: com.ifengyu.intercom.o.c.c */
/* loaded from: classes2.dex */
public abstract class FileCallBack extends AbstractC4132a<File> {

    /* renamed from: b */
    private String f14411b;

    /* renamed from: c */
    private String f14412c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileCallBack.java */
    /* renamed from: com.ifengyu.intercom.o.c.c$a */
    /* loaded from: classes2.dex */
    public class RunnableC4134a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ long f14413a;

        /* renamed from: b */
        final /* synthetic */ long f14414b;

        /* renamed from: c */
        final /* synthetic */ int f14415c;

        RunnableC4134a(long j, long j2, int i) {
            this.f14413a = j;
            this.f14414b = j2;
            this.f14415c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            FileCallBack fileCallBack = FileCallBack.this;
            long j = this.f14414b;
            fileCallBack.m11343a((((float) this.f14413a) * 1.0f) / ((float) j), j, this.f14415c);
        }
    }

    public FileCallBack(String str, String str2) {
        this.f14411b = str;
        this.f14412c = str2;
    }

    @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
    /* renamed from: h */
    public File mo11336f(Response response, int i) throws Exception {
        return m11337i(response, i);
    }

    /* renamed from: i */
    public File m11337i(Response response, int i) throws IOException {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[2048];
        InputStream inputStream = null;
        try {
            InputStream byteStream = response.body().byteStream();
            try {
                long contentLength = response.body().contentLength();
                long j = 0;
                File file = new File(this.f14411b);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, this.f14412c);
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = byteStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        long j2 = j + read;
                        fileOutputStream.write(bArr, 0, read);
                        OkHttpUtils.m11351d().m11352c().execute(new RunnableC4134a(j2, contentLength, i));
                        j = j2;
                        bArr = bArr;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = byteStream;
                        try {
                            response.body().close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (IOException unused) {
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                fileOutputStream.flush();
                try {
                    response.body().close();
                    if (byteStream != null) {
                        byteStream.close();
                    }
                } catch (IOException unused3) {
                }
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                }
                return file2;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }
}
