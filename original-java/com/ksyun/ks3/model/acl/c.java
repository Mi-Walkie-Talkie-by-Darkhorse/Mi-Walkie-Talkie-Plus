package com.ksyun.ks3.model.acl;

/* compiled from: Grant */
public class c {
    private d a = null;
    private Permission b = null;

    public d a() {
        return this.a;
    }

    public Permission b() {
        return this.b;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.a == null ? 0 : this.a.hashCode()) + 31) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.a == null) {
            if (cVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(cVar.a)) {
            return false;
        }
        if (this.b != cVar.b) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "Grant [grantee=" + this.a + ", permission=" + this.b + "]";
    }
}
