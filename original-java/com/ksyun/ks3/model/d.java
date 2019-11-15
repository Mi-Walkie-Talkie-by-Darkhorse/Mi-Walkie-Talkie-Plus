package com.ksyun.ks3.model;

import com.ksyun.ks3.a.f;

/* compiled from: PartETag */
public class d {
    private int a;
    private String b;

    public int a() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public String toString() {
        return f.a((Object) this);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d) || this.a != ((d) obj).a || !this.b.equals(((d) obj).b())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b.hashCode() + this.a;
    }
}
