package com.amap.api.mapcore.util;

/* compiled from: Beacon */
public final class iu implements Comparable<iu> {
    public String a;
    public String b;
    public byte[] c;
    public String d;
    public String e;
    public int f;
    public int g;
    public long h;
    public int i;

    /* access modifiers changed from: private */
    /* renamed from: a */
    public int compareTo(iu iuVar) {
        if (this.g < iuVar.g) {
            return 1;
        }
        return (this.g == iuVar.g || this.g <= iuVar.g) ? 0 : -1;
    }

    public final String toString() {
        return "name = " + this.b + ",uuid = " + this.a + ",major = " + this.d + ",minor = " + this.e + ",TxPower = " + this.f + ",rssi = " + this.g + ",time = " + this.h;
    }
}
