package org.bouncycastle.util.io;

import java.io.IOException;

public class StreamOverflowException extends IOException {
    public StreamOverflowException(String str) {
        super(str);
    }
}
