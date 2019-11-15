package com.yalantis.ucrop.model;

/* compiled from: ExifInfo */
public class b {
    private int a;
    private int b;
    private int c;

    public b(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.a != bVar.a || this.b != bVar.b) {
            return false;
        }
        if (this.c != bVar.c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.c;
    }
}
