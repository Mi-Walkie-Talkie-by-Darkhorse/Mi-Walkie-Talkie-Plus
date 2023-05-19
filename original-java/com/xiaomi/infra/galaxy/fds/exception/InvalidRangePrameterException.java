package com.xiaomi.infra.galaxy.fds.exception;

import com.xiaomi.infra.galaxy.fds.FDSError;

/* loaded from: classes2.dex */
public class InvalidRangePrameterException extends GalaxyFDSException {
    private final long[] range;

    public InvalidRangePrameterException(long[] jArr) {
        this.range = jArr;
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException
    public FDSError getError() {
        return FDSError.InvalidRequestRange;
    }

    @Override // com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException, java.lang.Throwable
    public String toString() {
        String galaxyFDSException = super.toString();
        if (this.range != null) {
            return galaxyFDSException + ", range in the request:[" + this.range[0] + ", " + this.range[1] + "]";
        }
        return galaxyFDSException;
    }
}
