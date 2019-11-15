package com.amap.api.col.sl;

/* compiled from: ADDNumEncryptProcessor */
public final class cb extends cd {
    cb() {
    }

    public cb(cd cdVar) {
        super(cdVar);
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(ca.a(bArr)).append("||1");
        return ca.a(sb.toString());
    }
}
