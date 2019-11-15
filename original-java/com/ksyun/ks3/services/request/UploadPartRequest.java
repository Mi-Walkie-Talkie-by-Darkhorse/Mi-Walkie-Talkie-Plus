package com.ksyun.ks3.services.request;

import android.util.Log;
import com.ksyun.ks3.a.f;
import com.ksyun.ks3.auth.e;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.HttpMethod;
import com.ksyun.ks3.model.ObjectMetadata;
import com.ksyun.ks3.model.acl.a;
import com.ksyun.ks3.model.b.b;
import com.ksyun.ks3.model.b.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class UploadPartRequest extends Ks3HttpRequest {
    private static final long serialVersionUID = -376145159039630694L;
    public long a = -1;
    private String b;
    private int c;
    private long d;
    private File e;
    private long f;
    private boolean g;
    private ObjectMetadata h = new ObjectMetadata();
    private a i = new a();

    public UploadPartRequest(String str, String str2, String str3, File file, long j, int i2, long j2) {
        b(str);
        d(str2);
        this.b = str3;
        this.e = file;
        this.f = j;
        this.c = i2;
        this.d = j2;
        if (file.length() - j < j2) {
            this.a = file.length() - j;
            this.g = true;
            return;
        }
        this.a = j2;
        this.g = false;
    }

    /* access modifiers changed from: protected */
    public void a() throws Ks3ClientException {
        a(HttpMethod.PUT);
        b("uploadId", this.b);
        b("partNumber", String.valueOf(this.c));
        if (f.a(m())) {
            a(HttpHeaders.ContentType, "application/octet-stream");
        }
        try {
            b bVar = new b(new com.ksyun.ks3.model.b.a(new c(this.e), this.f, this.a, true));
            Log.d("ks3_android_sdk", "bucketName :" + d() + ",objectkey :" + g() + ",partNumber :" + this.c + ",partSzie :" + this.d + ",conentLength:" + this.a);
            a(HttpHeaders.ContentLength, String.valueOf(this.a));
            a((InputStream) bVar);
        } catch (FileNotFoundException e2) {
            throw new Ks3ClientException((Throwable) e2);
        }
    }

    /* access modifiers changed from: protected */
    public void b() throws Ks3ClientException {
        if (e.a(d()) == null) {
            throw new Ks3ClientException("bucket name is not correct");
        } else if (f.a(g())) {
            throw new Ks3ClientException("object key can not be null");
        } else if (f.a(this.b)) {
            throw new Ks3ClientException("uploadId can not be null");
        } else if (this.d <= 0) {
            throw new Ks3ClientException("part size can not should bigger than 0");
        } else if (this.c < 1 || this.c > 10000) {
            throw new Ks3ClientException("partNumber shoud between 1 and 10000");
        } else if (this.e == null) {
            throw new Ks3ClientException("file and content can not both be null");
        } else if (this.f < 0) {
            throw new Ks3ClientException("fileoffset(" + this.f + ") should >= 0");
        } else if (this.d > 1073741824) {
            throw new Ks3ClientException("partsize(" + this.d + ") should be small than" + 1073741824);
        } else if (this.d <= 0) {
            throw new Ks3ClientException("partsize(" + this.d + ") should be larger than" + 0);
        }
    }

    public File q() {
        return this.e;
    }

    public void a(boolean z) {
        this.g = z;
    }
}
