package com.xiaomi.infra.galaxy.fds.auth.signature;

import com.google.common.collect.LinkedListMultimap;
import com.huawei.hms.framework.common.ContainerUtils;
import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class Utils {
    private static final ThreadLocal<SimpleDateFormat> RFC_822_DATE_FORMAT = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.infra.galaxy.fds.auth.signature.Utils.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat;
        }
    };
    private static final ThreadLocal<SimpleDateFormat> RFC_850_DATE_FORMAT = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.infra.galaxy.fds.auth.signature.Utils.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEE, dd-MMM-yy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat;
        }
    };
    private static final ThreadLocal<SimpleDateFormat> ANSI_DATE_FORMAT = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.infra.galaxy.fds.auth.signature.Utils.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM d HH:mm:ss yyyy", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat;
        }
    };

    public static String getGMTDatetime(Date date) {
        return RFC_822_DATE_FORMAT.get().format(date);
    }

    public static Date parseDateTimeFromString(String str) {
        Date tryToParse = tryToParse(str, RFC_822_DATE_FORMAT.get());
        if (tryToParse == null) {
            tryToParse = tryToParse(str, RFC_850_DATE_FORMAT.get());
        }
        return tryToParse == null ? tryToParse(str, ANSI_DATE_FORMAT.get()) : tryToParse;
    }

    public static long parseDateTimeToMilliseconds(String str) {
        Date parseDateTimeFromString = parseDateTimeFromString(str);
        if (parseDateTimeFromString != null) {
            return parseDateTimeFromString.getTime();
        }
        return 0L;
    }

    public static LinkedListMultimap<String, String> parseUriParameters(URI uri) {
        String[] split;
        LinkedListMultimap<String, String> create = LinkedListMultimap.create();
        String query = uri.getQuery();
        if (query != null) {
            for (String str : query.split(ContainerUtils.FIELD_DELIMITER)) {
                String[] split2 = str.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (split2.length >= 2) {
                    create.put(split2[0], str.substring(split2[0].length() + 1));
                } else {
                    create.put(split2[0], "");
                }
            }
        }
        return create;
    }

    private static Date tryToParse(String str, SimpleDateFormat simpleDateFormat) {
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            return null;
        }
    }
}
