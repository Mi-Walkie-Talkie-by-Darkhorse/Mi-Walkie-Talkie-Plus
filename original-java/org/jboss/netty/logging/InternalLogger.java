package org.jboss.netty.logging;

public interface InternalLogger {
    void debug(String str);

    void debug(String str, Throwable th);

    void error(String str);

    void error(String str, Throwable th);

    void info(String str);

    void info(String str, Throwable th);

    boolean isDebugEnabled();

    boolean isEnabled(InternalLogLevel internalLogLevel);

    boolean isErrorEnabled();

    boolean isInfoEnabled();

    boolean isWarnEnabled();

    void log(InternalLogLevel internalLogLevel, String str);

    void log(InternalLogLevel internalLogLevel, String str, Throwable th);

    void warn(String str);

    void warn(String str, Throwable th);
}
