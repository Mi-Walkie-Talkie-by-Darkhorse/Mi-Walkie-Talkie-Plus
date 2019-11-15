package org.jboss.netty.logging;

import org.osgi.service.log.LogService;

class OsgiLogger extends AbstractInternalLogger {
    private final InternalLogger fallback;
    private final String name;
    private final OsgiLoggerFactory parent;
    private final String prefix;

    OsgiLogger(OsgiLoggerFactory osgiLoggerFactory, String str, InternalLogger internalLogger) {
        this.parent = osgiLoggerFactory;
        this.name = str;
        this.fallback = internalLogger;
        this.prefix = '[' + str + "] ";
    }

    public void debug(String str) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(4, this.prefix + str);
        } else {
            this.fallback.debug(str);
        }
    }

    public void debug(String str, Throwable th) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(4, this.prefix + str, th);
        } else {
            this.fallback.debug(str, th);
        }
    }

    public void error(String str) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(1, this.prefix + str);
        } else {
            this.fallback.error(str);
        }
    }

    public void error(String str, Throwable th) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(1, this.prefix + str, th);
        } else {
            this.fallback.error(str, th);
        }
    }

    public void info(String str) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(3, this.prefix + str);
        } else {
            this.fallback.info(str);
        }
    }

    public void info(String str, Throwable th) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(3, this.prefix + str, th);
        } else {
            this.fallback.info(str, th);
        }
    }

    public boolean isDebugEnabled() {
        return true;
    }

    public boolean isErrorEnabled() {
        return true;
    }

    public boolean isInfoEnabled() {
        return true;
    }

    public boolean isWarnEnabled() {
        return true;
    }

    public void warn(String str) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(2, this.prefix + str);
        } else {
            this.fallback.warn(str);
        }
    }

    public void warn(String str, Throwable th) {
        LogService logService = this.parent.getLogService();
        if (logService != null) {
            logService.log(2, this.prefix + str, th);
        } else {
            this.fallback.warn(str, th);
        }
    }

    public String toString() {
        return this.name;
    }
}
