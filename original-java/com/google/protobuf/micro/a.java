package com.google.protobuf.micro;

public final class a {
    public static final a a = new a(new byte[0]);
    private final byte[] b;
    private volatile int c = 0;

    private a(byte[] bArr) {
        this.b = bArr;
    }

    public static a a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static a a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new a(bArr2);
    }

    public int a() {
        return this.b.length;
    }

    public byte[] b() {
        int length = this.b.length;
        byte[] bArr = new byte[length];
        System.arraycopy(this.b, 0, bArr, 0, length);
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int length = this.b.length;
        if (length != aVar.b.length) {
            return false;
        }
        byte[] bArr = this.b;
        byte[] bArr2 = aVar.b;
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.c;
        if (i == 0) {
            byte[] bArr = this.b;
            int length = this.b.length;
            int i2 = 0;
            i = length;
            while (i2 < length) {
                int i3 = bArr[i2] + (i * 31);
                i2++;
                i = i3;
            }
            if (i == 0) {
                i = 1;
            }
            this.c = i;
        }
        return i;
    }
}
