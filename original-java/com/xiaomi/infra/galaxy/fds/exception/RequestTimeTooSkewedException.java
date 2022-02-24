package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class RequestTimeTooSkewedException extends GalaxyFDSException {
    private static final long serialVersionUID = -8352893688045280710L;

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.RequestTimeTooSkewed;
    }
}
