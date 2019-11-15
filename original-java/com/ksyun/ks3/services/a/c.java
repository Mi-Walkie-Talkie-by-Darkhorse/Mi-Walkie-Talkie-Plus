package com.ksyun.ks3.services.a;

import com.loopj.android.http.d;
import com.loopj.android.http.i;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

/* compiled from: Ks3HttpResponceHandler */
public abstract class c extends d {
    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
    }

    public final void onPreProcessResponse(i iVar, HttpResponse httpResponse) {
    }

    public final void onPostProcessResponse(i iVar, HttpResponse httpResponse) {
    }

    public final void onRetry(int i) {
    }
}
