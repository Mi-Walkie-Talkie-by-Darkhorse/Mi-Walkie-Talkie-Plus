package com.ksyun.ks3.model;

import java.io.Serializable;

public class Owner implements Serializable {
    private static final long serialVersionUID = -8916731456944569115L;
    private String a;
    private String b;

    public String toString() {
        return "S3Owner [name=" + b() + ",id=" + a() + "]";
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public String b() {
        return this.a;
    }

    public void b(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof Owner)) {
            return false;
        }
        Owner owner = (Owner) obj;
        String a2 = owner.a();
        String b2 = owner.b();
        String a3 = a();
        String b3 = b();
        if (a2 == null) {
            a2 = "";
        }
        if (b2 == null) {
            b2 = "";
        }
        if (a3 == null) {
            a3 = "";
        }
        if (b3 == null) {
            b3 = "";
        }
        if (!a2.equals(a3) || !b2.equals(b3)) {
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        if (this.b != null) {
            return this.b.hashCode();
        }
        return 0;
    }
}
