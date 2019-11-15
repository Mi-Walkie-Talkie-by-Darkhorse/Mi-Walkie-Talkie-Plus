package com.loopj.android.http;

import java.io.IOException;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

/* compiled from: ResponseHandlerInterface */
public interface i {
    boolean getUseSynchronousMode();

    void onPostProcessResponse(i iVar, HttpResponse httpResponse);

    void onPreProcessResponse(i iVar, HttpResponse httpResponse);

    void sendCancelMessage();

    void sendFailureMessage(int i, Header[] headerArr, byte[] bArr, Throwable th);

    void sendFinishMessage();

    void sendResponseMessage(HttpResponse httpResponse) throws IOException;

    void sendRetryMessage(int i);

    void sendStartMessage();

    void setRequestHeaders(Header[] headerArr);

    void setRequestURI(URI uri);

    void setUseSynchronousMode(boolean z);
}
