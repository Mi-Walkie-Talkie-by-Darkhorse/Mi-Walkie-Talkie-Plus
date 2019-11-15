package org.apache.http.impl.cookie;

import java.util.Date;
import java.util.TimeZone;

@Deprecated
public final class DateUtils {
    public static final TimeZone GMT = null;
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    DateUtils() {
        throw new RuntimeException("Stub!");
    }

    public static Date parseDate(String str) throws DateParseException {
        throw new RuntimeException("Stub!");
    }

    public static Date parseDate(String str, String[] strArr) throws DateParseException {
        throw new RuntimeException("Stub!");
    }

    public static Date parseDate(String str, String[] strArr, Date date) throws DateParseException {
        throw new RuntimeException("Stub!");
    }

    public static String formatDate(Date date) {
        throw new RuntimeException("Stub!");
    }

    public static String formatDate(Date date, String str) {
        throw new RuntimeException("Stub!");
    }
}
