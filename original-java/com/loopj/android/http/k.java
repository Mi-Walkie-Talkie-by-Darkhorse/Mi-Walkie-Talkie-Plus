package com.loopj.android.http;

import android.content.Context;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

/* compiled from: SyncHttpClient */
public class k extends b {
    public k() {
        super(false, 80, ServerPort.PORT_443);
    }

    /* access modifiers changed from: protected */
    public h b(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, i iVar, Context context) {
        if (str != null) {
            httpUriRequest.addHeader("Content-Type", str);
        }
        iVar.setUseSynchronousMode(true);
        a(defaultHttpClient, httpContext, httpUriRequest, str, iVar, context).run();
        return new h(null);
    }
}
