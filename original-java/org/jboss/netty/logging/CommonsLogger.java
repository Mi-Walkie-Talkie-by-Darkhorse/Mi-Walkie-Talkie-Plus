package org.jboss.netty.logging;

import org.apache.commons.logging.a;

class CommonsLogger extends AbstractInternalLogger {
    private final a logger;
    private final String loggerName;

    CommonsLogger(a aVar, String str) {
        this.logger = aVar;
        this.loggerName = str;
    }

    public void debug(String str) {
        this.logger.a(str);
    }

    public void debug(String str, Throwable th) {
        this.logger.a(str, th);
    }

    public void error(String str) {
        this.logger.d(str);
    }

    public void error(String str, Throwable th) {
        this.logger.d(str, th);
    }

    public void info(String str) {
        this.logger.b(str);
    }

    public void info(String str, Throwable th) {
        this.logger.b(str, th);
    }

    public boolean isDebugEnabled() {
        return this.logger.a();
    }

    public boolean isErrorEnabled() {
        return this.logger.b();
    }

    public boolean isInfoEnabled() {
        return this.logger.c();
    }

    public boolean isWarnEnabled() {
        return this.logger.d();
    }

    public void warn(String str) {
        this.logger.c(str);
    }

    public void warn(String str, Throwable th) {
        this.logger.c(str, th);
    }

    public String toString() {
        return this.loggerName;
    }
}
