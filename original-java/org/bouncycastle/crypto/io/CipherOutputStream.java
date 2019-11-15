package org.bouncycastle.crypto.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.modes.AEADBlockCipher;

public class CipherOutputStream extends FilterOutputStream {
    private AEADBlockCipher aeadBlockCipher;
    private byte[] buf;
    private BufferedBlockCipher bufferedBlockCipher;
    private final byte[] oneByte = new byte[1];
    private StreamCipher streamCipher;

    public CipherOutputStream(OutputStream outputStream, BufferedBlockCipher bufferedBlockCipher2) {
        super(outputStream);
        this.bufferedBlockCipher = bufferedBlockCipher2;
    }

    public CipherOutputStream(OutputStream outputStream, StreamCipher streamCipher2) {
        super(outputStream);
        this.streamCipher = streamCipher2;
    }

    public CipherOutputStream(OutputStream outputStream, AEADBlockCipher aEADBlockCipher) {
        super(outputStream);
        this.aeadBlockCipher = aEADBlockCipher;
    }

    private void ensureCapacity(int i, boolean z) {
        if (z) {
            if (this.bufferedBlockCipher != null) {
                i = this.bufferedBlockCipher.getOutputSize(i);
            } else if (this.aeadBlockCipher != null) {
                i = this.aeadBlockCipher.getOutputSize(i);
            }
        } else if (this.bufferedBlockCipher != null) {
            i = this.bufferedBlockCipher.getUpdateOutputSize(i);
        } else if (this.aeadBlockCipher != null) {
            i = this.aeadBlockCipher.getUpdateOutputSize(i);
        }
        if (this.buf == null || this.buf.length < i) {
            this.buf = new byte[i];
        }
    }

    public void close() throws IOException {
        ensureCapacity(0, true);
        IOException iOException = null;
        try {
            if (this.bufferedBlockCipher != null) {
                int doFinal = this.bufferedBlockCipher.doFinal(this.buf, 0);
                if (doFinal != 0) {
                    this.out.write(this.buf, 0, doFinal);
                }
            } else if (this.aeadBlockCipher != null) {
                int doFinal2 = this.aeadBlockCipher.doFinal(this.buf, 0);
                if (doFinal2 != 0) {
                    this.out.write(this.buf, 0, doFinal2);
                }
            } else if (this.streamCipher != null) {
                this.streamCipher.reset();
            }
        } catch (InvalidCipherTextException e) {
            iOException = new InvalidCipherTextIOException("Error finalising cipher data", e);
        } catch (Exception e2) {
            iOException = new CipherIOException("Error closing stream: ", e2);
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
        if (this.streamCipher != null) {
            this.out.write(this.streamCipher.returnByte((byte) i));
        } else {
            write(this.oneByte, 0, 1);
        }
    }

    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        ensureCapacity(i2, false);
        if (this.bufferedBlockCipher != null) {
            int processBytes = this.bufferedBlockCipher.processBytes(bArr, i, i2, this.buf, 0);
            if (processBytes != 0) {
                this.out.write(this.buf, 0, processBytes);
            }
        } else if (this.aeadBlockCipher != null) {
            int processBytes2 = this.aeadBlockCipher.processBytes(bArr, i, i2, this.buf, 0);
            if (processBytes2 != 0) {
                this.out.write(this.buf, 0, processBytes2);
            }
        } else {
            this.streamCipher.processBytes(bArr, i, i2, this.buf, 0);
            this.out.write(this.buf, 0, i2);
        }
    }
}
