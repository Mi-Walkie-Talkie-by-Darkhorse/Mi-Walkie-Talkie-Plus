package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.LoggerInterface;

/* loaded from: classes2.dex */
public class dh implements LoggerInterface {

    /* renamed from: a  reason: collision with root package name */
    private LoggerInterface f8845a;

    /* renamed from: b  reason: collision with root package name */
    private LoggerInterface f8846b;

    public dh(LoggerInterface loggerInterface, LoggerInterface loggerInterface2) {
        this.f8845a = null;
        this.f8846b = null;
        this.f8845a = loggerInterface;
        this.f8846b = loggerInterface2;
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public void log(String str) {
        LoggerInterface loggerInterface = this.f8845a;
        if (loggerInterface != null) {
            loggerInterface.log(str);
        }
        LoggerInterface loggerInterface2 = this.f8846b;
        if (loggerInterface2 != null) {
            loggerInterface2.log(str);
        }
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public void log(String str, Throwable th) {
        LoggerInterface loggerInterface = this.f8845a;
        if (loggerInterface != null) {
            loggerInterface.log(str, th);
        }
        LoggerInterface loggerInterface2 = this.f8846b;
        if (loggerInterface2 != null) {
            loggerInterface2.log(str, th);
        }
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public void setTag(String str) {
    }
}
