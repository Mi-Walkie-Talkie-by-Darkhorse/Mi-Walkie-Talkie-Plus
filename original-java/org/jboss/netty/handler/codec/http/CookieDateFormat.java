package org.jboss.netty.handler.codec.http;

import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

final class CookieDateFormat extends SimpleDateFormat {
    private static final long serialVersionUID = 1789486337887402640L;

    CookieDateFormat() {
        super("E, d-MMM-y HH:mm:ss z", Locale.ENGLISH);
        setTimeZone(TimeZone.getTimeZone("GMT"));
    }
}
