package com.sina.weibo.sdk.net;

import android.text.TextUtils;
import com.sina.weibo.sdk.utils.c;
import java.net.URI;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

/* compiled from: CustomRedirectHandler */
public abstract class b implements RedirectHandler {
    private static final String c = b.class.getCanonicalName();
    int a;
    String b;
    private String d;

    public abstract void a();

    public abstract boolean a(String str);

    public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        c.a(c, "CustomRedirectHandler getLocationURI getRedirectUrl : " + this.d);
        if (!TextUtils.isEmpty(this.d)) {
            return URI.create(this.d);
        }
        return null;
    }

    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (statusCode == 301 || statusCode == 302) {
            this.d = httpResponse.getFirstHeader(Names.LOCATION).getValue();
            if (!TextUtils.isEmpty(this.d) && this.a < 15 && a(this.d)) {
                this.a++;
                return true;
            }
        } else if (statusCode == 200) {
            this.b = this.d;
        } else {
            a();
        }
        return false;
    }

    public String b() {
        return this.b;
    }
}
