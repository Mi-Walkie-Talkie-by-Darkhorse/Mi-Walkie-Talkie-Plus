package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class InvalidOAuthParameters extends GalaxyFDSException {
    private static final long serialVersionUID = 702036202632771699L;

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.InvalidOAuthParameters;
    }
}
