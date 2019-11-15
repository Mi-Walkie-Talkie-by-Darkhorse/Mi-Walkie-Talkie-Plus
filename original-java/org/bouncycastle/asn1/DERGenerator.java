package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class DERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    protected DERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public DERGenerator(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this._tagged = false;
        this._tagged = true;
        this._isExplicit = z;
        this._tagNo = i;
    }

    private void writeLength(OutputStream outputStream, int i) throws IOException {
        if (i > 127) {
            int i2 = 1;
            int i3 = i;
            while (true) {
                i3 >>>= 8;
                if (i3 == 0) {
                    break;
                }
                i2++;
            }
            outputStream.write((byte) (i2 | 128));
            for (int i4 = (i2 - 1) * 8; i4 >= 0; i4 -= 8) {
                outputStream.write((byte) (i >> i4));
            }
            return;
        }
        outputStream.write((byte) i);
    }

    /* access modifiers changed from: 0000 */
    public void writeDEREncoded(int i, byte[] bArr) throws IOException {
        if (this._tagged) {
            int i2 = this._tagNo | 128;
            if (this._isExplicit) {
                int i3 = this._tagNo | 32 | 128;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                writeDEREncoded(byteArrayOutputStream, i, bArr);
                writeDEREncoded(this._out, i3, byteArrayOutputStream.toByteArray());
            } else if ((i & 32) != 0) {
                writeDEREncoded(this._out, i2 | 32, bArr);
            } else {
                writeDEREncoded(this._out, i2, bArr);
            }
        } else {
            writeDEREncoded(this._out, i, bArr);
        }
    }

    /* access modifiers changed from: 0000 */
    public void writeDEREncoded(OutputStream outputStream, int i, byte[] bArr) throws IOException {
        outputStream.write(i);
        writeLength(outputStream, bArr.length);
        outputStream.write(bArr);
    }
}
