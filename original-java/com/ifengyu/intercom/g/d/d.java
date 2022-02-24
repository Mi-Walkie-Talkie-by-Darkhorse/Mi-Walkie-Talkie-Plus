package com.ifengyu.intercom.g.d;

import com.ifengyu.intercom.g.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;

/* compiled from: FileCallBack.java */
/* loaded from: classes2.dex */
public abstract class d extends b<File> {

    /* renamed from: b  reason: collision with root package name */
    private String f5255b;

    /* renamed from: c  reason: collision with root package name */
    private String f5256c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileCallBack.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f5257a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f5258b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f5259c;

        a(long j, long j2, int i) {
            this.f5257a = j;
            this.f5258b = j2;
            this.f5259c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            long j = this.f5258b;
            dVar.a((((float) this.f5257a) * 1.0f) / ((float) j), j, this.f5259c);
        }
    }

    public d(String str, String str2) {
        this.f5255b = str;
        this.f5256c = str2;
    }

    public File c(Response response, int i) throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th;
        byte[] bArr = new byte[2048];
        InputStream inputStream = null;
        try {
            InputStream byteStream = response.body().byteStream();
            try {
                long contentLength = response.body().contentLength();
                long j = 0;
                File file = new File(this.f5255b);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, this.f5256c);
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = byteStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        long j2 = j + read;
                        fileOutputStream.write(bArr, 0, read);
                        b.d().a().execute(new a(j2, contentLength, i));
                        j = j2;
                        bArr = bArr;
                    } catch (Throwable th2) {
                        th = th2;
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
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public File a(Response response, int i) throws Exception {
        return c(response, i);
    }
}
