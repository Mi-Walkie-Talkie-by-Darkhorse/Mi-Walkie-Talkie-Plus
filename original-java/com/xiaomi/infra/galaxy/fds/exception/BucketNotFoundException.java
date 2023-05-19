package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class BucketNotFoundException extends GalaxyFDSException {
    private static final long serialVersionUID = 5814749308983510510L;

    public BucketNotFoundException() {
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.BucketNotFound;
    }

    public BucketNotFoundException(String str, Throwable th) {
        super(str, th);
    }
}
