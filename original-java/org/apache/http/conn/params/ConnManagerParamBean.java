package org.apache.http.conn.params;

import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@Deprecated
public class ConnManagerParamBean extends HttpAbstractParamBean {
    public ConnManagerParamBean(HttpParams httpParams) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public void setTimeout(long j) {
        throw new RuntimeException("Stub!");
    }

    public void setMaxTotalConnections(int i) {
        throw new RuntimeException("Stub!");
    }

    public void setConnectionsPerRoute(ConnPerRouteBean connPerRouteBean) {
        throw new RuntimeException("Stub!");
    }
}
