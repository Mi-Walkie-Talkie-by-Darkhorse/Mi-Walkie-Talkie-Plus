package com.amap.api.col.sl;

import com.xiaomi.mipush.sdk.Constants;

/* compiled from: LogJsonDataStrategy */
public final class eh extends ek {
    private StringBuilder a = new StringBuilder();
    private boolean b = true;

    public eh() {
    }

    public eh(ek ekVar) {
        super(ekVar);
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) {
        byte[] a2 = ca.a(this.a.toString());
        this.d = a2;
        this.b = true;
        this.a.delete(0, this.a.length());
        return a2;
    }

    public final void b(byte[] bArr) {
        String a2 = ca.a(bArr);
        if (this.b) {
            this.b = false;
        } else {
            this.a.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        }
        this.a.append("{\"log\":\"").append(a2).append("\"}");
    }
}
