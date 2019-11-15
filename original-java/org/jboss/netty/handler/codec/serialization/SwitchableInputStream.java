package org.jboss.netty.handler.codec.serialization;

import java.io.FilterInputStream;
import java.io.InputStream;

final class SwitchableInputStream extends FilterInputStream {
    SwitchableInputStream() {
        super(null);
    }

    /* access modifiers changed from: 0000 */
    public void switchStream(InputStream inputStream) {
        this.in = inputStream;
    }
}
