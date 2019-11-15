package com.ksyun.ks3.services.a;

import android.util.Log;
import com.ksyun.ks3.exception.a;
import com.ksyun.ks3.model.b.d;
import org.apache.http.Header;

/* compiled from: PutObjectResponseHandler */
public abstract class e extends c implements d {
    public abstract void onTaskCancel();

    public abstract void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onTaskFinish();

    public abstract void onTaskStart();

    public abstract void onTaskSuccess(int i, Header[] headerArr);

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onTaskSuccess(i, headerArr);
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onTaskFailure(i, new a(i, bArr, th), headerArr, bArr == null ? "" : new String(bArr), th);
    }

    public final void onStart() {
        onTaskStart();
    }

    public final void onFinish() {
        onTaskFinish();
    }

    public final void onCancel() {
        onTaskCancel();
    }

    public final void onProgress(int i, int i2) {
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        Log.d("PutObjectResponseHandler", "PutObjectResponseHandler finalize:" + this);
        super.finalize();
    }
}
