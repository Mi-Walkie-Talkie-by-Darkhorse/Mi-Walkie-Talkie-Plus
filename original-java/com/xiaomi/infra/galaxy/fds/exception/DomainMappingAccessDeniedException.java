package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class DomainMappingAccessDeniedException extends GalaxyFDSException {
    private static final long serialVersionUID = 6765549983453165715L;

    public DomainMappingAccessDeniedException() {
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.DomainMappingAccessDenied;
    }

    public DomainMappingAccessDeniedException(String str, Throwable th) {
        super(str, th);
    }
}
