package com.loopj.android.http;

import org.apache.http.client.methods.HttpUriRequest;

/* compiled from: RangeFileAsyncHttpResponseHandler */
public abstract class g extends e {
    private long d;
    private boolean e;

    public void a(HttpUriRequest httpUriRequest) {
        if (this.a.exists() && this.a.canWrite()) {
            this.d = this.a.length();
        }
        if (this.d > 0) {
            this.e = true;
            httpUriRequest.setHeader("Range", "bytes=" + this.d + "-");
        }
    }
}
