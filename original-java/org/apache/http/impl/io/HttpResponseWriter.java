package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

@Deprecated
public class HttpResponseWriter extends AbstractMessageWriter {
    public HttpResponseWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        super(null, null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void writeHeadLine(HttpMessage httpMessage) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
