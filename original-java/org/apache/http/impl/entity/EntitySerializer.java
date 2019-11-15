package org.apache.http.impl.entity;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.SessionOutputBuffer;

@Deprecated
public class EntitySerializer {
    public EntitySerializer(ContentLengthStrategy contentLengthStrategy) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public OutputStream doSerialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void serialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage, HttpEntity httpEntity) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }
}
