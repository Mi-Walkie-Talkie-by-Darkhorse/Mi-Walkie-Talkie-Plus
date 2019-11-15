package com.ksyun.ks3.services.a;

import com.ksyun.ks3.exception.a;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.b.d;
import org.apache.http.Header;

/* compiled from: UploadPartResponceHandler */
public abstract class f extends c implements d {
    public abstract void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.d dVar);

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, parse(headerArr));
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, new a(i, bArr, th), headerArr, bArr == null ? "" : new String(bArr), th);
    }

    public final void onStart() {
    }

    public final void onFinish() {
    }

    public final void onCancel() {
    }

    public final void onProgress(int i, int i2) {
    }

    private com.ksyun.ks3.model.d parse(Header[] headerArr) {
        com.ksyun.ks3.model.d dVar = new com.ksyun.ks3.model.d();
        for (Header header : headerArr) {
            if (header.getName().equals(HttpHeaders.ETag.toString())) {
                dVar.a(header.getValue());
            }
        }
        return dVar;
    }
}
