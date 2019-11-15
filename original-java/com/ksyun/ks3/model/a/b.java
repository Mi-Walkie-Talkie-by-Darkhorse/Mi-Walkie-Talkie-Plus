package com.ksyun.ks3.model.a;

/* compiled from: InitiateMultipartUploadResult */
public class b {
    private String a;
    private String b;
    private String c;

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

    public String toString() {
        return "InitiateMultipartUploadResult[bucket=" + this.a + ";key=" + this.b + ";uploadId=" + this.c + "]";
    }
}
