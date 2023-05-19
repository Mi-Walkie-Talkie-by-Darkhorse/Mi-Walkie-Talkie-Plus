package com.xiaomi.push;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: com.xiaomi.push.jy */
/* loaded from: classes2.dex */
public class C6300jy extends AbstractC6304kb {

    /* renamed from: a */
    protected InputStream f22817a;

    /* renamed from: a */
    protected OutputStream f22818a;

    protected C6300jy() {
        this.f22817a = null;
        this.f22818a = null;
    }

    public C6300jy(OutputStream outputStream) {
        this.f22817a = null;
        this.f22818a = null;
        this.f22818a = outputStream;
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public int mo1860a(byte[] bArr, int i, int i2) {
        InputStream inputStream = this.f22817a;
        if (inputStream != null) {
            try {
                int read = inputStream.read(bArr, i, i2);
                if (read >= 0) {
                    return read;
                }
                throw new C6305kc(4);
            } catch (IOException e) {
                throw new C6305kc(0, e);
            }
        }
        throw new C6305kc(1, "Cannot read from null inputStream");
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public void mo1859a(byte[] bArr, int i, int i2) {
        OutputStream outputStream = this.f22818a;
        if (outputStream == null) {
            throw new C6305kc(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i, i2);
        } catch (IOException e) {
            throw new C6305kc(0, e);
        }
    }
}
