package p084c.p085a.p086a.p087a.p088a;

/* renamed from: c.a.a.a.a.a */
/* loaded from: classes3.dex */
public class Cubic implements InterfaceC1165b {
    @Override // p084c.p085a.p086a.p087a.p088a.InterfaceC1165b
    /* renamed from: a */
    public double mo20967a(double d, double d2, double d3, double d4) {
        double d5;
        double d6 = d / (d4 / 2.0d);
        if (d6 < 1.0d) {
            d5 = (d3 / 2.0d) * d6 * d6 * d6;
        } else {
            double d7 = d6 - 2.0d;
            d5 = (d3 / 2.0d) * ((d7 * d7 * d7) + 2.0d);
        }
        return d5 + d2;
    }

    @Override // p084c.p085a.p086a.p087a.p088a.InterfaceC1165b
    /* renamed from: b */
    public double mo20966b(double d, double d2, double d3, double d4) {
        double d5 = (d / d4) - 1.0d;
        return (d3 * ((d5 * d5 * d5) + 1.0d)) + d2;
    }
}
