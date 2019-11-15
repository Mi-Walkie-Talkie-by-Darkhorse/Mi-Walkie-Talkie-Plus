package com.tencent.connect.auth;

/* compiled from: ProGuard */
public class QQToken {
    public static final int AUTH_QQ = 2;
    public static final int AUTH_QZONE = 3;
    public static final int AUTH_WEB = 1;
    private String a;
    private String b;
    private String c;
    private int d = 1;
    private long e = -1;

    public QQToken(String str) {
        this.a = str;
    }

    public boolean isSessionValid() {
        return this.b != null && System.currentTimeMillis() < this.e;
    }

    public String getAppId() {
        return this.a;
    }

    public void setAppId(String str) {
        this.a = str;
    }

    public String getAccessToken() {
        return this.b;
    }

    public void setAccessToken(String str, String str2) throws NumberFormatException {
        this.b = str;
        this.e = 0;
        if (str2 != null) {
            this.e = System.currentTimeMillis() + (Long.parseLong(str2) * 1000);
        }
    }

    public String getOpenId() {
        return this.c;
    }

    public void setOpenId(String str) {
        this.c = str;
    }

    public int getAuthSource() {
        return this.d;
    }

    public void setAuthSource(int i) {
        this.d = i;
    }

    public long getExpireTimeInSecond() {
        return this.e;
    }
}
