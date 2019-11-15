package com.mi.milinkforgame.sdk.base.os.dns;

import java.io.IOException;

public class WireParseException extends IOException {
    private static final long serialVersionUID = -4629109360550945761L;

    public WireParseException() {
    }

    public WireParseException(String str) {
        super(str);
    }
}
