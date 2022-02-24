package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class BucketAlreadyExistException extends GalaxyFDSException {
    private static final long serialVersionUID = 4812830877449476201L;

    public BucketAlreadyExistException() {
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.BucketAlreadyExists;
    }

    public BucketAlreadyExistException(String str, Throwable th) {
        super(str, th);
    }
}
