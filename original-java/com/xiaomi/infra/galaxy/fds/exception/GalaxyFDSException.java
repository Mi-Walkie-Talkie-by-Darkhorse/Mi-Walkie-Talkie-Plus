package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class GalaxyFDSException extends Exception {
    private static final long serialVersionUID = -7688381775178948719L;

    public GalaxyFDSException() {
    }

    public FDSError getError() {
        return FDSError.InternalServerError;
    }

    @Override // java.lang.Throwable
    public String toString() {
        String str = "Galaxy FDS Error: " + getError().description();
        if (getMessage() == null) {
            return str;
        }
        return str + " " + getMessage();
    }

    public GalaxyFDSException(String str, Throwable th) {
        super(str, th);
    }

    public GalaxyFDSException(String str) {
        super(str, null);
    }

    public GalaxyFDSException(Throwable th) {
        super(null, th);
    }
}
