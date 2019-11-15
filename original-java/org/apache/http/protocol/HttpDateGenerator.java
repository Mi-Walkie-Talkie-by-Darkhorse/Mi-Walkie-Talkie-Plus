package org.apache.http.protocol;

import java.util.TimeZone;

@Deprecated
public class HttpDateGenerator {
    public static final TimeZone GMT = null;
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    public HttpDateGenerator() {
        throw new RuntimeException("Stub!");
    }

    public synchronized String getCurrentDate() {
        throw new RuntimeException("Stub!");
    }
}
