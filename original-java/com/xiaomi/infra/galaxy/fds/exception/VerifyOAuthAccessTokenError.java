package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class VerifyOAuthAccessTokenError extends GalaxyFDSException {
    private static final long serialVersionUID = 1673791846160068073L;

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.VerifyOAuthAccessTokenError;
    }
}
