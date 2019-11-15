package org.jboss.netty.logging;

import org.jboss.logging.Logger;

class JBossLogger extends AbstractInternalLogger {
    private final Logger logger;

    JBossLogger(Logger logger2) {
        this.logger = logger2;
    }

    public void debug(String str) {
        this.logger.debug(str);
    }

    public void debug(String str, Throwable th) {
        this.logger.debug(str, th);
    }

    public void error(String str) {
        this.logger.error(str);
    }

    public void error(String str, Throwable th) {
        this.logger.error(str, th);
    }

    public void info(String str) {
        this.logger.info(str);
    }

    public void info(String str, Throwable th) {
        this.logger.info(str, th);
    }

    public boolean isDebugEnabled() {
        return this.logger.isDebugEnabled();
    }

    public boolean isErrorEnabled() {
        return true;
    }

    public boolean isInfoEnabled() {
        return this.logger.isInfoEnabled();
    }

    public boolean isWarnEnabled() {
        return true;
    }

    public void warn(String str) {
        this.logger.warn(str);
    }

    public void warn(String str, Throwable th) {
        this.logger.warn(str, th);
    }

    public String toString() {
        return String.valueOf(this.logger.getName());
    }
}
