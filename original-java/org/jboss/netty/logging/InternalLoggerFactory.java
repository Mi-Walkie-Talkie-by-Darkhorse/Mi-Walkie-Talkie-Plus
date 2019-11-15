package org.jboss.netty.logging;

import org.jboss.netty.util.internal.StackTraceSimplifier;

public abstract class InternalLoggerFactory {
    private static volatile InternalLoggerFactory defaultFactory = new JdkLoggerFactory();

    public abstract InternalLogger newInstance(String str);

    static {
        StackTraceSimplifier.simplify(new Exception());
    }

    public static InternalLoggerFactory getDefaultFactory() {
        return defaultFactory;
    }

    public static void setDefaultFactory(InternalLoggerFactory internalLoggerFactory) {
        if (internalLoggerFactory == null) {
            throw new NullPointerException("defaultFactory");
        }
        defaultFactory = internalLoggerFactory;
    }

    public static InternalLogger getInstance(Class<?> cls) {
        return getInstance(cls.getName());
    }

    public static InternalLogger getInstance(String str) {
        final InternalLogger newInstance = getDefaultFactory().newInstance(str);
        return new InternalLogger() {
            public void debug(String str) {
                newInstance.debug(str);
            }

            public void debug(String str, Throwable th) {
                StackTraceSimplifier.simplify(th);
                newInstance.debug(str, th);
            }

            public void error(String str) {
                newInstance.error(str);
            }

            public void error(String str, Throwable th) {
                StackTraceSimplifier.simplify(th);
                newInstance.error(str, th);
            }

            public void info(String str) {
                newInstance.info(str);
            }

            public void info(String str, Throwable th) {
                StackTraceSimplifier.simplify(th);
                newInstance.info(str, th);
            }

            public boolean isDebugEnabled() {
                return newInstance.isDebugEnabled();
            }

            public boolean isErrorEnabled() {
                return newInstance.isErrorEnabled();
            }

            public boolean isInfoEnabled() {
                return newInstance.isInfoEnabled();
            }

            public boolean isWarnEnabled() {
                return newInstance.isWarnEnabled();
            }

            public void warn(String str) {
                newInstance.warn(str);
            }

            public void warn(String str, Throwable th) {
                StackTraceSimplifier.simplify(th);
                newInstance.warn(str, th);
            }

            public boolean isEnabled(InternalLogLevel internalLogLevel) {
                return newInstance.isEnabled(internalLogLevel);
            }

            public void log(InternalLogLevel internalLogLevel, String str) {
                newInstance.log(internalLogLevel, str);
            }

            public void log(InternalLogLevel internalLogLevel, String str, Throwable th) {
                StackTraceSimplifier.simplify(th);
                newInstance.log(internalLogLevel, str, th);
            }
        };
    }
}
