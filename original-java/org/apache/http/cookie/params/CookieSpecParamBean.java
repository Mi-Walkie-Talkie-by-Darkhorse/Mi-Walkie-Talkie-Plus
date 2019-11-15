package org.apache.http.cookie.params;

import java.util.Collection;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@Deprecated
public class CookieSpecParamBean extends HttpAbstractParamBean {
    public CookieSpecParamBean(HttpParams httpParams) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public void setDatePatterns(Collection<String> collection) {
        throw new RuntimeException("Stub!");
    }

    public void setSingleHeader(boolean z) {
        throw new RuntimeException("Stub!");
    }
}
