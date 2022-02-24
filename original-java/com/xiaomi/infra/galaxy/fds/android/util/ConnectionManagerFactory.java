package com.xiaomi.infra.galaxy.fds.android.util;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public class ConnectionManagerFactory {
    public static ClientConnectionManager create(HttpParams httpParams) {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(httpParams, schemeRegistry);
        new IdleConnectionReaper(threadSafeClientConnManager).start();
        return threadSafeClientConnManager;
    }
}
