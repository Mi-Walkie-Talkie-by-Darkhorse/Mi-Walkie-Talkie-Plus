package com.xiaomi.push.log;

import com.xiaomi.channel.commonutils.logger.LoggerInterface;

public class e implements LoggerInterface {
    private LoggerInterface a = null;
    private LoggerInterface b = null;

    public e(LoggerInterface loggerInterface, LoggerInterface loggerInterface2) {
        this.a = loggerInterface;
        this.b = loggerInterface2;
    }

    public void log(String str) {
        if (this.a != null) {
            this.a.log(str);
        }
        if (this.b != null) {
            this.b.log(str);
        }
    }

    public void log(String str, Throwable th) {
        if (this.a != null) {
            this.a.log(str, th);
        }
        if (this.b != null) {
            this.b.log(str, th);
        }
    }

    public void setTag(String str) {
    }
}
