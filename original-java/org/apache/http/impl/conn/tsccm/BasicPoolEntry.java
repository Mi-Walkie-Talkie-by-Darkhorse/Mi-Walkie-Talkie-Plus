package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.AbstractPoolEntry;

@Deprecated
public class BasicPoolEntry extends AbstractPoolEntry {
    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, ReferenceQueue<Object> referenceQueue) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final OperatedClientConnection getConnection() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final HttpRoute getPlannedRoute() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final BasicPoolEntryRef getWeakRef() {
        throw new RuntimeException("Stub!");
    }
}
