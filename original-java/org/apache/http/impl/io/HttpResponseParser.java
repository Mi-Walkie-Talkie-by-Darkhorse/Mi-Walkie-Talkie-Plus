package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponseFactory;
import org.apache.http.ParseException;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParams;

@Deprecated
public class HttpResponseParser extends AbstractMessageParser {
    public HttpResponseParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        super(null, null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws IOException, HttpException, ParseException {
        throw new RuntimeException("Stub!");
    }
}