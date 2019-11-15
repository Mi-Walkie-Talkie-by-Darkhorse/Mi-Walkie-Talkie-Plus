package com.shenma.speechrecognition;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class l implements Parcelable {
    public static final Creator CREATOR = new s();
    /* access modifiers changed from: private */
    public String a;
    /* access modifiers changed from: private */
    public String b;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public boolean d = true;
    /* access modifiers changed from: private */
    public String e;
    /* access modifiers changed from: private */
    public String f;
    /* access modifiers changed from: private */
    public String g;
    private boolean h;
    /* access modifiers changed from: private */
    public float i = 0.0f;
    /* access modifiers changed from: private */
    public String j;
    /* access modifiers changed from: private */
    public int k = 4;
    /* access modifiers changed from: private */
    public String l;

    l() {
    }

    /* access modifiers changed from: 0000 */
    public String a() {
        return this.a;
    }

    /* access modifiers changed from: 0000 */
    public void a(String str) {
        this.a = str;
    }

    /* access modifiers changed from: 0000 */
    public void a(boolean z) {
        this.c = z;
    }

    /* access modifiers changed from: 0000 */
    public String b() {
        return this.b;
    }

    /* access modifiers changed from: 0000 */
    public void b(String str) {
        this.b = str;
    }

    /* access modifiers changed from: 0000 */
    public void b(boolean z) {
        this.d = z;
    }

    /* access modifiers changed from: 0000 */
    public void c(String str) {
        this.j = str;
    }

    /* access modifiers changed from: 0000 */
    public void c(boolean z) {
        this.h = z;
    }

    /* access modifiers changed from: 0000 */
    public boolean c() {
        return this.c;
    }

    /* access modifiers changed from: 0000 */
    public boolean d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public int e() {
        return this.k;
    }

    /* access modifiers changed from: 0000 */
    public String f() {
        return this.e;
    }

    /* access modifiers changed from: 0000 */
    public String g() {
        return this.f;
    }

    /* access modifiers changed from: 0000 */
    public String h() {
        return this.g;
    }

    /* access modifiers changed from: 0000 */
    public String i() {
        return this.h ? "map".equals("cloud".toLowerCase()) ? "http://temp-asr.sm.cn/gaode/" : "uc".equals("cloud".toLowerCase()) ? "http://temp-asr.sm.cn/" : "http://temp-asr.sm.cn/cloud" : "map".equals("cloud".toLowerCase()) ? "http://asr.sm.cn/gaode" : "uc".equals("cloud".toLowerCase()) ? "http://asr.sm.cn/" : "http://asr.sm.cn/cloud";
    }

    /* access modifiers changed from: 0000 */
    public String j() {
        return this.j;
    }

    /* access modifiers changed from: 0000 */
    public String k() {
        return this.l;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int i3 = 1;
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeByte((byte) (this.c ? 1 : 0));
        if (!this.d) {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeFloat(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k);
        parcel.writeString(this.l);
    }
}
