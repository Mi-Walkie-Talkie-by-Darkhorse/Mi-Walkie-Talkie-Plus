package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.a.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;
    private final b f;

    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(InputStream inputStream, b bVar) {
        this(inputStream, bVar, 65536);
    }

    RecyclableBufferedInputStream(InputStream inputStream, b bVar, int i) {
        super(inputStream);
        this.d = -1;
        this.f = bVar;
        this.a = (byte[]) bVar.a(i, byte[].class);
    }

    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.in;
        if (this.a == null || inputStream == null) {
            throw c();
        }
        return inputStream.available() + (this.b - this.e);
    }

    private static IOException c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public synchronized void a() {
        this.c = this.a.length;
    }

    public synchronized void b() {
        if (this.a != null) {
            this.f.a(this.a, byte[].class);
            this.a = null;
        }
    }

    public void close() throws IOException {
        if (this.a != null) {
            this.f.a(this.a, byte[].class);
            this.a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        if (this.d == -1 || this.e - this.d >= this.c) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return read;
            }
            this.d = -1;
            this.e = 0;
            this.b = read;
            return read;
        }
        if (this.d == 0 && this.c > bArr.length && this.b == bArr.length) {
            int length = bArr.length * 2;
            if (length > this.c) {
                length = this.c;
            }
            byte[] bArr2 = (byte[]) this.f.a(length, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.a = bArr2;
            this.f.a(bArr, byte[].class);
            bArr = bArr2;
        } else if (this.d > 0) {
            System.arraycopy(bArr, this.d, bArr, 0, bArr.length - this.d);
        }
        this.e -= this.d;
        this.d = 0;
        this.b = 0;
        int read2 = inputStream.read(bArr, this.e, bArr.length - this.e);
        this.b = read2 <= 0 ? this.e : this.e + read2;
        return read2;
    }

    public synchronized void mark(int i) {
        this.c = Math.max(this.c, i);
        this.d = this.e;
    }

    public boolean markSupported() {
        return true;
    }

    public synchronized int read() throws IOException {
        byte b2 = -1;
        synchronized (this) {
            byte[] bArr = this.a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw c();
            } else if (this.e < this.b || a(inputStream, bArr) != -1) {
                if (bArr != this.a) {
                    bArr = this.a;
                    if (bArr == null) {
                        throw c();
                    }
                }
                if (this.b - this.e > 0) {
                    int i = this.e;
                    this.e = i + 1;
                    b2 = bArr[i] & 255;
                }
            }
        }
        return b2;
    }

    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5 = -1;
        synchronized (this) {
            byte[] bArr2 = this.a;
            if (bArr2 == null) {
                throw c();
            } else if (i2 == 0) {
                i5 = 0;
            } else {
                InputStream inputStream = this.in;
                if (inputStream == null) {
                    throw c();
                }
                if (this.e < this.b) {
                    int i6 = this.b - this.e >= i2 ? i2 : this.b - this.e;
                    System.arraycopy(bArr2, this.e, bArr, i, i6);
                    this.e += i6;
                    if (i6 == i2 || inputStream.available() == 0) {
                        i5 = i6;
                    } else {
                        i += i6;
                        i3 = i2 - i6;
                    }
                } else {
                    i3 = i2;
                }
                while (true) {
                    if (this.d == -1 && i3 >= bArr2.length) {
                        i4 = inputStream.read(bArr, i, i3);
                        if (i4 == -1) {
                            if (i3 != i2) {
                                i5 = i2 - i3;
                            }
                        }
                    } else if (a(inputStream, bArr2) != -1) {
                        if (bArr2 != this.a) {
                            bArr2 = this.a;
                            if (bArr2 == null) {
                                throw c();
                            }
                        }
                        i4 = this.b - this.e >= i3 ? i3 : this.b - this.e;
                        System.arraycopy(bArr2, this.e, bArr, i, i4);
                        this.e += i4;
                    } else if (i3 != i2) {
                        i5 = i2 - i3;
                    }
                    i3 -= i4;
                    if (i3 == 0) {
                        i5 = i2;
                        break;
                    } else if (inputStream.available() == 0) {
                        i5 = i2 - i3;
                        break;
                    } else {
                        i += i4;
                    }
                }
            }
        }
        return i5;
    }

    public synchronized void reset() throws IOException {
        if (this.a == null) {
            throw new IOException("Stream is closed");
        } else if (-1 == this.d) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.e + " markLimit: " + this.c);
        } else {
            this.e = this.d;
        }
    }

    public synchronized long skip(long j) throws IOException {
        byte[] bArr = this.a;
        InputStream inputStream = this.in;
        if (bArr == null) {
            throw c();
        } else if (j < 1) {
            j = 0;
        } else if (inputStream == null) {
            throw c();
        } else if (((long) (this.b - this.e)) >= j) {
            this.e = (int) (((long) this.e) + j);
        } else {
            long j2 = (long) (this.b - this.e);
            this.e = this.b;
            if (this.d == -1 || j > ((long) this.c)) {
                j = j2 + inputStream.skip(j - j2);
            } else if (a(inputStream, bArr) == -1) {
                j = j2;
            } else if (((long) (this.b - this.e)) >= j - j2) {
                this.e = (int) ((j - j2) + ((long) this.e));
            } else {
                j = (j2 + ((long) this.b)) - ((long) this.e);
                this.e = this.b;
            }
        }
        return j;
    }
}
