package com.loopj.android.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

/* compiled from: AsyncHttpResponseHandler */
public abstract class d implements i {
    protected static final int BUFFER_SIZE = 4096;
    protected static final int CANCEL_MESSAGE = 6;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpResponseHandler";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE = 0;
    public static final String UTF8_BOM = "﻿";
    private Handler handler;
    private Looper looper;
    private Header[] requestHeaders;
    private URI requestURI;
    private String responseCharset;
    private boolean useSynchronousMode;

    /* compiled from: AsyncHttpResponseHandler */
    private static class a extends Handler {
        private final d a;

        a(d dVar, Looper looper) {
            super(looper);
            this.a = dVar;
        }

        public void handleMessage(Message message) {
            this.a.handleMessage(message);
        }
    }

    public abstract void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, byte[] bArr);

    public URI getRequestURI() {
        return this.requestURI;
    }

    public Header[] getRequestHeaders() {
        return this.requestHeaders;
    }

    public void setRequestURI(URI uri) {
        this.requestURI = uri;
    }

    public void setRequestHeaders(Header[] headerArr) {
        this.requestHeaders = headerArr;
    }

    public boolean getUseSynchronousMode() {
        return this.useSynchronousMode;
    }

    public void setUseSynchronousMode(boolean z) {
        if (!z && this.looper == null) {
            z = true;
            Log.w(LOG_TAG, "Current thread has not called Looper.prepare(). Forcing synchronous mode.");
        }
        if (!z && this.handler == null) {
            this.handler = new a(this, this.looper);
        } else if (z && this.handler != null) {
            this.handler = null;
        }
        this.useSynchronousMode = z;
    }

    public void setCharset(String str) {
        this.responseCharset = str;
    }

    public String getCharset() {
        return this.responseCharset == null ? "UTF-8" : this.responseCharset;
    }

    public d() {
        this(null);
    }

    public d(Looper looper2) {
        this.responseCharset = "UTF-8";
        this.requestURI = null;
        this.requestHeaders = null;
        this.looper = null;
        if (looper2 == null) {
            looper2 = Looper.myLooper();
        }
        this.looper = looper2;
        setUseSynchronousMode(false);
    }

    public void onProgress(int i, int i2) {
        String str = LOG_TAG;
        String str2 = "Progress %d from %d (%2.0f%%)";
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Double.valueOf(i2 > 0 ? ((((double) i) * 1.0d) / ((double) i2)) * 100.0d : -1.0d);
        Log.v(str, String.format(str2, objArr));
    }

    public void onStart() {
    }

    public void onFinish() {
    }

    public void onPreProcessResponse(i iVar, HttpResponse httpResponse) {
    }

    public void onPostProcessResponse(i iVar, HttpResponse httpResponse) {
    }

    public void onRetry(int i) {
        Log.d(LOG_TAG, String.format("Request retry no. %d", new Object[]{Integer.valueOf(i)}));
    }

    public void onCancel() {
        Log.d(LOG_TAG, "Request got cancelled");
    }

    public final void sendProgressMessage(int i, int i2) {
        sendMessage(obtainMessage(4, new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
    }

    public final void sendSuccessMessage(int i, Header[] headerArr, byte[] bArr) {
        sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i), headerArr, bArr}));
    }

    public final void sendFailureMessage(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        sendMessage(obtainMessage(1, new Object[]{Integer.valueOf(i), headerArr, bArr, th}));
    }

    public final void sendStartMessage() {
        sendMessage(obtainMessage(2, null));
    }

    public final void sendFinishMessage() {
        sendMessage(obtainMessage(3, null));
    }

    public final void sendRetryMessage(int i) {
        sendMessage(obtainMessage(5, new Object[]{Integer.valueOf(i)}));
    }

    public final void sendCancelMessage() {
        sendMessage(obtainMessage(6, null));
    }

    /* access modifiers changed from: protected */
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                Object[] objArr = (Object[]) message.obj;
                if (objArr == null || objArr.length < 3) {
                    Log.e(LOG_TAG, "SUCCESS_MESSAGE didn't got enough params");
                    return;
                } else {
                    onSuccess(((Integer) objArr[0]).intValue(), (Header[]) objArr[1], (byte[]) objArr[2]);
                    return;
                }
            case 1:
                Object[] objArr2 = (Object[]) message.obj;
                if (objArr2 == null || objArr2.length < 4) {
                    Log.e(LOG_TAG, "FAILURE_MESSAGE didn't got enough params");
                    return;
                } else {
                    onFailure(((Integer) objArr2[0]).intValue(), (Header[]) objArr2[1], (byte[]) objArr2[2], (Throwable) objArr2[3]);
                    return;
                }
            case 2:
                onStart();
                return;
            case 3:
                onFinish();
                return;
            case 4:
                Object[] objArr3 = (Object[]) message.obj;
                if (objArr3 == null || objArr3.length < 2) {
                    Log.e(LOG_TAG, "PROGRESS_MESSAGE didn't got enough params");
                    return;
                }
                try {
                    onProgress(((Integer) objArr3[0]).intValue(), ((Integer) objArr3[1]).intValue());
                    return;
                } catch (Throwable th) {
                    Log.e(LOG_TAG, "custom onProgress contains an error", th);
                    return;
                }
            case 5:
                Object[] objArr4 = (Object[]) message.obj;
                if (objArr4 == null || objArr4.length != 1) {
                    Log.e(LOG_TAG, "RETRY_MESSAGE didn't get enough params");
                    return;
                } else {
                    onRetry(((Integer) objArr4[0]).intValue());
                    return;
                }
            case 6:
                onCancel();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void sendMessage(Message message) {
        if (getUseSynchronousMode() || this.handler == null) {
            handleMessage(message);
        } else if (!Thread.currentThread().isInterrupted()) {
            a.a(this.handler != null, "handler should not be null!");
            this.handler.sendMessage(message);
        }
    }

    /* access modifiers changed from: protected */
    public void postRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (getUseSynchronousMode() || this.handler == null) {
            runnable.run();
            return;
        }
        a.a(this.handler != null, "handler should not be null!");
        this.handler.post(runnable);
    }

    /* access modifiers changed from: protected */
    public Message obtainMessage(int i, Object obj) {
        return Message.obtain(this.handler, i, obj);
    }

    public void sendResponseMessage(HttpResponse httpResponse) throws IOException {
        if (!Thread.currentThread().isInterrupted()) {
            StatusLine statusLine = httpResponse.getStatusLine();
            byte[] responseData = getResponseData(httpResponse.getEntity());
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            if (statusLine.getStatusCode() >= 300) {
                sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
            } else {
                sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        com.loopj.android.http.b.a(r5);
        com.loopj.android.http.b.a(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        return r6.toByteArray();
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] getResponseData(org.apache.http.HttpEntity r11) throws java.io.IOException {
        /*
            r10 = this;
            r8 = 0
            r0 = 4096(0x1000, float:5.74E-42)
            r4 = 0
            r1 = 0
            if (r11 == 0) goto L_0x0075
            java.io.InputStream r5 = r11.getContent()
            if (r5 == 0) goto L_0x0075
            long r2 = r11.getContentLength()
            r6 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r1 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r1 <= 0) goto L_0x0021
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "HTTP entity too large to be buffered in memory"
            r0.<init>(r1)
            throw r0
        L_0x0021:
            int r1 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r1 > 0) goto L_0x0052
        L_0x0025:
            org.apache.http.util.ByteArrayBuffer r6 = new org.apache.http.util.ByteArrayBuffer     // Catch:{ OutOfMemoryError -> 0x0069 }
            r6.<init>(r0)     // Catch:{ OutOfMemoryError -> 0x0069 }
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r7 = new byte[r0]     // Catch:{ all -> 0x0061 }
            r0 = r4
        L_0x002f:
            int r1 = r5.read(r7)     // Catch:{ all -> 0x0061 }
            r4 = -1
            if (r1 == r4) goto L_0x0056
            java.lang.Thread r4 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0061 }
            boolean r4 = r4.isInterrupted()     // Catch:{ all -> 0x0061 }
            if (r4 != 0) goto L_0x0056
            int r4 = r0 + r1
            r0 = 0
            r6.append(r7, r0, r1)     // Catch:{ all -> 0x0061 }
            int r0 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r0 > 0) goto L_0x0054
            r0 = 1
        L_0x004c:
            int r0 = (int) r0     // Catch:{ all -> 0x0061 }
            r10.sendProgressMessage(r4, r0)     // Catch:{ all -> 0x0061 }
            r0 = r4
            goto L_0x002f
        L_0x0052:
            int r0 = (int) r2
            goto L_0x0025
        L_0x0054:
            r0 = r2
            goto L_0x004c
        L_0x0056:
            com.loopj.android.http.b.a(r5)     // Catch:{ OutOfMemoryError -> 0x0069 }
            com.loopj.android.http.b.a(r11)     // Catch:{ OutOfMemoryError -> 0x0069 }
            byte[] r0 = r6.toByteArray()     // Catch:{ OutOfMemoryError -> 0x0069 }
        L_0x0060:
            return r0
        L_0x0061:
            r0 = move-exception
            com.loopj.android.http.b.a(r5)     // Catch:{ OutOfMemoryError -> 0x0069 }
            com.loopj.android.http.b.a(r11)     // Catch:{ OutOfMemoryError -> 0x0069 }
            throw r0     // Catch:{ OutOfMemoryError -> 0x0069 }
        L_0x0069:
            r0 = move-exception
            java.lang.System.gc()
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "File too large to fit into available memory"
            r0.<init>(r1)
            throw r0
        L_0x0075:
            r0 = r1
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loopj.android.http.d.getResponseData(org.apache.http.HttpEntity):byte[]");
    }
}
