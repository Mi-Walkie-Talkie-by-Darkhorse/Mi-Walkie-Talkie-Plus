package com.tbruyelle.rxpermissions2;

/* compiled from: Permission */
public class a {
    public final String a;
    public final boolean b;
    public final boolean c;

    public a(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.b == aVar.b && this.c == aVar.c) {
            return this.a.equals(aVar.a);
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2 = 1;
        int hashCode = this.a.hashCode() * 31;
        if (this.b) {
            i = 1;
        } else {
            i = 0;
        }
        int i3 = (i + hashCode) * 31;
        if (!this.c) {
            i2 = 0;
        }
        return i3 + i2;
    }

    public String toString() {
        return "Permission{name='" + this.a + '\'' + ", granted=" + this.b + ", shouldShowRequestPermissionRationale=" + this.c + '}';
    }
}
