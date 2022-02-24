package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class SignatureDoesNotMatchException extends GalaxyFDSException {
    private static final long serialVersionUID = -5360663813945173831L;

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.SignatureDoesNotMatch;
    }
}
