package com.xiaomi.push;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class jy extends kb {

    /* renamed from: a  reason: collision with root package name */
    protected InputStream f9176a;

    /* renamed from: a  reason: collision with other field name */
    protected OutputStream f832a;

    protected jy() {
        this.f9176a = null;
        this.f832a = null;
    }

    public jy(OutputStream outputStream) {
        this.f9176a = null;
        this.f832a = null;
        this.f832a = outputStream;
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a */
    public int mo522a(byte[] bArr, int i, int i2) {
        InputStream inputStream = this.f9176a;
        if (inputStream != null) {
            try {
                int read = inputStream.read(bArr, i, i2);
                if (read >= 0) {
                    return read;
                }
                throw new kc(4);
            } catch (IOException e) {
                throw new kc(0, e);
            }
        } else {
            throw new kc(1, "Cannot read from null inputStream");
        }
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a  reason: collision with other method in class */
    public void mo522a(byte[] bArr, int i, int i2) {
        OutputStream outputStream = this.f832a;
        if (outputStream != null) {
            try {
                outputStream.write(bArr, i, i2);
            } catch (IOException e) {
                throw new kc(0, e);
            }
        } else {
            throw new kc(1, "Cannot write to null outputStream");
        }
    }
}
