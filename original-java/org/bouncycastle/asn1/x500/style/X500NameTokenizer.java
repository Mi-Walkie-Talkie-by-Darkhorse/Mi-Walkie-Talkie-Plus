package org.bouncycastle.asn1.x500.style;

public class X500NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X500NameTokenizer(String str) {
        this(str, ',');
    }

    public X500NameTokenizer(String str, char c) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.separator = c;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    public String nextToken() {
        if (this.index == this.value.length()) {
            return null;
        }
        int i = this.index + 1;
        this.buf.setLength(0);
        boolean z = false;
        int i2 = i;
        boolean z2 = false;
        while (i2 != this.value.length()) {
            char charAt = this.value.charAt(i2);
            if (charAt == '\"') {
                boolean z3 = !z2 ? !z : z;
                this.buf.append(charAt);
                z = z3;
                z2 = false;
            } else if (z2 || z) {
                this.buf.append(charAt);
                z2 = false;
            } else if (charAt == '\\') {
                this.buf.append(charAt);
                z2 = true;
            } else if (charAt == this.separator) {
                break;
            } else {
                this.buf.append(charAt);
            }
            i2++;
        }
        this.index = i2;
        return this.buf.toString();
    }
}
