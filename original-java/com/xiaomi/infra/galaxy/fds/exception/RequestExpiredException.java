package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class RequestExpiredException extends GalaxyFDSException {
    private static final long serialVersionUID = 8343726194793255836L;

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.RequestExpired;
    }
}
