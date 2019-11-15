package com.amap.api.col.sl;

import java.util.Locale;

/* compiled from: Beacon */
public final class ex implements Comparable<ex> {
    public String a = null;
    public String b = null;
    public byte[] c = null;
    public String d = null;
    public String e = null;
    public int f = 0;
    public int g = 0;
    public String h = null;
    public long i = 0;
    public int j = 0;

    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        ex exVar = (ex) obj;
        if (this.g < exVar.g) {
            return 1;
        }
        return (this.g == exVar.g || this.g <= exVar.g) ? 0 : -1;
    }

    public ex(String str, String str2, byte[] bArr, String str3, int i2, int i3, int i4, int i5, long j2) {
        this.a = str;
        this.b = str2;
        this.c = bArr;
        this.d = Integer.toHexString(i2).trim().toUpperCase(Locale.CHINA);
        if (this.d.length() < 4) {
            this.d += "00000";
            this.d = this.d.substring(0, 4);
        }
        this.e = Integer.toHexString(i3).trim().toUpperCase(Locale.CHINA);
        if (this.e.length() < 4) {
            this.e += "00000";
            this.e = this.e.substring(0, 4);
        }
        this.f = i4;
        this.g = i5;
        this.i = j2;
        this.h = str3;
    }

    public final String toString() {
        return "name = " + this.b + ",uuid = " + this.a + ",major = " + this.d + ",minor = " + this.e + ",TxPower = " + this.f + ",rssi = " + this.g + ",time = " + this.i;
    }
}
