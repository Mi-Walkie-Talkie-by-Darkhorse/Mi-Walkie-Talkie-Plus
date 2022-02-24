package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class InvalidBucketNameException extends GalaxyFDSException {
    private static final long serialVersionUID = 436771419220254068L;
    private String message;

    public InvalidBucketNameException(String str) {
        this.message = str;
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.InvalidBucketName;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
