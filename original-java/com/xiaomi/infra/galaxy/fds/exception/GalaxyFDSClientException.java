package com.xiaomi.infra.galaxy.fds.exception;

/* loaded from: classes2.dex */
public class GalaxyFDSClientException extends GalaxyFDSException {
    private static final long serialVersionUID = -1734780212731437463L;

    public GalaxyFDSClientException() {
    }

    public GalaxyFDSClientException(String str) {
        super(str, null);
    }

    public GalaxyFDSClientException(Throwable th) {
        super(null, th);
    }

    public GalaxyFDSClientException(String str, Throwable th) {
        super(str, th);
    }
}
