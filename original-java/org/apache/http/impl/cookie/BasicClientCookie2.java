package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.cookie.SetCookie2;

@Deprecated
public class BasicClientCookie2 extends BasicClientCookie implements SetCookie2 {
    public BasicClientCookie2(String str, String str2) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    public int[] getPorts() {
        throw new RuntimeException("Stub!");
    }

    public void setPorts(int[] iArr) {
        throw new RuntimeException("Stub!");
    }

    public String getCommentURL() {
        throw new RuntimeException("Stub!");
    }

    public void setCommentURL(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setDiscard(boolean z) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPersistent() {
        throw new RuntimeException("Stub!");
    }

    public boolean isExpired(Date date) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
