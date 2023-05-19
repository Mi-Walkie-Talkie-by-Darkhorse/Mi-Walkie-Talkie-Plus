package p048b.p076e.p077a;

/* renamed from: b.e.a.a */
/* loaded from: classes2.dex */
public class Permission {

    /* renamed from: a */
    public final String f5357a;

    /* renamed from: b */
    public final boolean f5358b;

    /* renamed from: c */
    public final boolean f5359c;

    public Permission(String str, boolean z, boolean z2) {
        this.f5357a = str;
        this.f5358b = z;
        this.f5359c = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Permission.class != obj.getClass()) {
            return false;
        }
        Permission permission = (Permission) obj;
        if (this.f5358b == permission.f5358b && this.f5359c == permission.f5359c) {
            return this.f5357a.equals(permission.f5357a);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f5357a.hashCode() * 31) + (this.f5358b ? 1 : 0)) * 31) + (this.f5359c ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f5357a + "', granted=" + this.f5358b + ", shouldShowRequestPermissionRationale=" + this.f5359c + '}';
    }
}
