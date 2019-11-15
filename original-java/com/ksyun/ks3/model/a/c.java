package com.ksyun.ks3.model.a;

import com.ksyun.ks3.model.Owner;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ListPartsResult */
public class c {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private String h;
    private Owner i = new Owner();
    private Owner j = new Owner();
    private List<com.ksyun.ks3.model.c> k = new ArrayList();

    public String toString() {
        return "ListPartsResult[bucket=" + this.a + ";key=" + this.b + ";uploadId=" + this.c + ";partNumberMarker=" + this.d + ";nextPartNumberMarker=" + this.e + ";maxParts=" + this.f + ";isTruncated=" + this.g + ";initiator=" + this.i + ";owner=" + this.j + "]";
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.e = str;
    }

    public void f(String str) {
        this.f = str;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void a(Owner owner) {
        this.i = owner;
    }

    public void b(Owner owner) {
        this.j = owner;
    }

    public List<com.ksyun.ks3.model.c> d() {
        return this.k;
    }

    public void g(String str) {
        this.h = str;
    }
}
