package org.bouncycastle.jcajce.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

public class CipherOutputStream extends FilterOutputStream {
    private final Cipher cipher;
    private final byte[] oneByte = new byte[1];

    public CipherOutputStream(OutputStream outputStream, Cipher cipher2) {
        super(outputStream);
        this.cipher = cipher2;
    }

    public void close() throws IOException {
        IOException iOException = null;
        try {
            byte[] doFinal = this.cipher.doFinal();
            if (doFinal != null) {
                this.out.write(doFinal);
            }
        } catch (GeneralSecurityException e) {
            iOException = new InvalidCipherTextIOException("Error during cipher finalisation", e);
        } catch (Exception e2) {
            iOException = new IOException("Error closing stream: " + e2);
        }
        try {
            flush();
            this.out.close();
            e = iOException;
        } catch (IOException e3) {
            e = e3;
            if (iOException != null) {
                e = iOException;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public void flush() throws IOException {
        this.out.flush();
    }

    public void write(int i) throws IOException {
        this.oneByte[0] = (byte) i;
        write(this.oneByte, 0, 1);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] update = this.cipher.update(bArr, i, i2);
        if (update != null) {
            this.out.write(update);
        }
    }
}
