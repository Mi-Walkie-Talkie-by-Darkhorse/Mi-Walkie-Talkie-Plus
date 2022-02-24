package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class AuthenticationFailedException extends GalaxyFDSException {
    private static final long serialVersionUID = -8636481540481787968L;

    public AuthenticationFailedException() {
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.AuthenticationFailed;
    }

    public AuthenticationFailedException(String str, Throwable th) {
        super(str, th);
    }
}
