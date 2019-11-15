package com.amap.api.maps.model;

import android.os.RemoteException;

public final class RuntimeRemoteException extends RuntimeException {
    public RuntimeRemoteException(String str) {
        super(str);
    }

    public RuntimeRemoteException(RemoteException remoteException) {
        super(remoteException);
    }
}
