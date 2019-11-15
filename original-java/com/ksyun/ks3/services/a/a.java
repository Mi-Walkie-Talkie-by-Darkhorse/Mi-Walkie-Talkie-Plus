package com.ksyun.ks3.services.a;

import org.apache.http.Header;

/* compiled from: CompleteMultipartUploadResponseHandler */
public abstract class a extends c {
    public abstract void onFailure(int i, com.ksyun.ks3.exception.a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.a.a aVar);

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, new com.ksyun.ks3.model.a.a());
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, new com.ksyun.ks3.exception.a(i, bArr, th), headerArr, bArr == null ? "" : new String(bArr), th);
    }

    public final void onProgress(int i, int i2) {
    }

    public final void onStart() {
    }

    public final void onFinish() {
    }

    public final void onCancel() {
    }
}
