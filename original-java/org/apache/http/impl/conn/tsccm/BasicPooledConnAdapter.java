package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

@Deprecated
public class BasicPooledConnAdapter extends AbstractPooledConnAdapter {
    protected BasicPooledConnAdapter(ThreadSafeClientConnManager threadSafeClientConnManager, AbstractPoolEntry abstractPoolEntry) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ClientConnectionManager getManager() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public AbstractPoolEntry getPoolEntry() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void detach() {
        throw new RuntimeException("Stub!");
    }
}
