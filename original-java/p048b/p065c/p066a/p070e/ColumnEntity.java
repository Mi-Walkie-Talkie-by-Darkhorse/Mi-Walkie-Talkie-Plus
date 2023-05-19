package p048b.p065c.p066a.p070e;

/* renamed from: b.c.a.e.c */
/* loaded from: classes2.dex */
public class ColumnEntity {

    /* renamed from: a */
    public String f5339a;

    /* renamed from: b */
    public String f5340b;

    /* renamed from: c */
    public String[] f5341c;

    /* renamed from: d */
    public boolean f5342d;

    /* renamed from: e */
    public boolean f5343e;

    /* renamed from: f */
    public boolean f5344f;

    public ColumnEntity(String... strArr) {
        this.f5341c = strArr;
    }

    public ColumnEntity(String str, String str2) {
        this(str, str2, false, false, false);
    }

    public ColumnEntity(String str, String str2, boolean z, boolean z2) {
        this(str, str2, z, z2, false);
    }

    public ColumnEntity(String str, String str2, boolean z, boolean z2, boolean z3) {
        this.f5339a = str;
        this.f5340b = str2;
        this.f5342d = z;
        this.f5343e = z2;
        this.f5344f = z3;
    }
}
