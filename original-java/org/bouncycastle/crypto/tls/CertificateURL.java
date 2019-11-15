package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public class CertificateURL {
    protected short type;
    protected Vector urlAndHashList;

    class ListBuffer16 extends ByteArrayOutputStream {
        ListBuffer16() throws IOException {
            TlsUtils.writeUint16(0, this);
        }

        /* access modifiers changed from: 0000 */
        public void encodeTo(OutputStream outputStream) throws IOException {
            int i = this.count - 2;
            TlsUtils.checkUint16(i);
            TlsUtils.writeUint16(i, this.buf, 0);
            outputStream.write(this.buf, 0, this.count);
            this.buf = null;
        }
    }

    public CertificateURL(short s, Vector vector) {
        if (!CertChainType.isValid(s)) {
            throw new IllegalArgumentException("'type' is not a valid CertChainType value");
        } else if (vector == null || vector.isEmpty()) {
            throw new IllegalArgumentException("'urlAndHashList' must have length > 0");
        } else {
            this.type = s;
            this.urlAndHashList = vector;
        }
    }

    public static CertificateURL parse(TlsContext tlsContext, InputStream inputStream) throws IOException {
        short readUint8 = TlsUtils.readUint8(inputStream);
        if (!CertChainType.isValid(readUint8)) {
            throw new TlsFatalAlert(50);
        }
        int readUint16 = TlsUtils.readUint16(inputStream);
        if (readUint16 < 1) {
            throw new TlsFatalAlert(50);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(TlsUtils.readFully(readUint16, inputStream));
        Vector vector = new Vector();
        while (byteArrayInputStream.available() > 0) {
            vector.addElement(URLAndHash.parse(tlsContext, byteArrayInputStream));
        }
        return new CertificateURL(readUint8, vector);
    }

    public void encode(OutputStream outputStream) throws IOException {
        TlsUtils.writeUint8(this.type, outputStream);
        ListBuffer16 listBuffer16 = new ListBuffer16();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.urlAndHashList.size()) {
                ((URLAndHash) this.urlAndHashList.elementAt(i2)).encode(listBuffer16);
                i = i2 + 1;
            } else {
                listBuffer16.encodeTo(outputStream);
                return;
            }
        }
    }

    public short getType() {
        return this.type;
    }

    public Vector getURLAndHashList() {
        return this.urlAndHashList;
    }
}
