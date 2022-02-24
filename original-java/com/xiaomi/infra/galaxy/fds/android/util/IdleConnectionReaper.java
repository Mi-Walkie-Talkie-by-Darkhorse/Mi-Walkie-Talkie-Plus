package com.xiaomi.infra.galaxy.fds.android.util;

import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionManager;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public final class IdleConnectionReaper extends Thread {
    private static final int PERIOD_MILLISECONDS = 60000;
    private final ClientConnectionManager connectionManager;

    public IdleConnectionReaper(ClientConnectionManager clientConnectionManager) {
        super("java-sdk-http-connection-reaper");
        this.connectionManager = clientConnectionManager;
        setDaemon(true);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Thread.sleep(OpenStreetMapTileProviderConstants.ONE_MINUTE);
                this.connectionManager.closeIdleConnections(60L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }
}
