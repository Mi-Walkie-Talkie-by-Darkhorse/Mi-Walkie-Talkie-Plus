package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class ChecksumDoesNotMatchException extends GalaxyFDSException {
    private static final long serialVersionUID = -5962238757745947478L;

    public ChecksumDoesNotMatchException() {
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.ChecksumDoesNotMatch;
    }

    public ChecksumDoesNotMatchException(String str, Throwable th) {
        super(str, th);
    }
}
