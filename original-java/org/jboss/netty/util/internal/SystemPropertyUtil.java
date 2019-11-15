package org.jboss.netty.util.internal;

import com.tencent.bugly.mimsg.Bugly;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public final class SystemPropertyUtil {
    private static final Pattern INTEGER_PATTERN = Pattern.compile("-?[0-9]+");
    private static boolean initializedLogger = true;
    private static boolean loggedException;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SystemPropertyUtil.class);

    public static boolean contains(String str) {
        return get(str) != null;
    }

    public static String get(String str) {
        return get(str, null);
    }

    public static String get(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("key");
        } else if (str.length() == 0) {
            throw new IllegalArgumentException("key must not be empty.");
        } else {
            String str3 = null;
            try {
                str3 = System.getProperty(str);
            } catch (Exception e) {
                if (!loggedException) {
                    log("Unable to retrieve a system property '" + str + "'; default values will be used.", e);
                    loggedException = true;
                }
            }
            if (str3 == null) {
                return str2;
            }
            return str3;
        }
    }

    public static boolean getBoolean(String str, boolean z) {
        String str2 = get(str);
        if (str2 == null) {
            return z;
        }
        String lowerCase = str2.trim().toLowerCase();
        if (lowerCase.length() == 0) {
            return true;
        }
        if ("true".equals(lowerCase) || "yes".equals(lowerCase) || "1".equals(lowerCase)) {
            return true;
        }
        if (Bugly.SDK_IS_DEV.equals(lowerCase) || "no".equals(lowerCase) || "0".equals(lowerCase)) {
            return false;
        }
        log("Unable to parse the boolean system property '" + str + "':" + lowerCase + " - " + "using the default value: " + z);
        return z;
    }

    public static int getInt(String str, int i) {
        String str2 = get(str);
        if (str2 == null) {
            return i;
        }
        String lowerCase = str2.trim().toLowerCase();
        if (INTEGER_PATTERN.matcher(lowerCase).matches()) {
            try {
                return Integer.parseInt(lowerCase);
            } catch (Exception e) {
            }
        }
        log("Unable to parse the integer system property '" + str + "':" + lowerCase + " - " + "using the default value: " + i);
        return i;
    }

    public static long getLong(String str, long j) {
        String str2 = get(str);
        if (str2 == null) {
            return j;
        }
        String lowerCase = str2.trim().toLowerCase();
        if (INTEGER_PATTERN.matcher(lowerCase).matches()) {
            try {
                return Long.parseLong(lowerCase);
            } catch (Exception e) {
            }
        }
        log("Unable to parse the long integer system property '" + str + "':" + lowerCase + " - " + "using the default value: " + j);
        return j;
    }

    private static void log(String str) {
        if (initializedLogger) {
            logger.warn(str);
        } else {
            Logger.getLogger(SystemPropertyUtil.class.getName()).log(Level.WARNING, str);
        }
    }

    private static void log(String str, Exception exc) {
        if (initializedLogger) {
            logger.warn(str, exc);
        } else {
            Logger.getLogger(SystemPropertyUtil.class.getName()).log(Level.WARNING, str, exc);
        }
    }

    private SystemPropertyUtil() {
    }
}
