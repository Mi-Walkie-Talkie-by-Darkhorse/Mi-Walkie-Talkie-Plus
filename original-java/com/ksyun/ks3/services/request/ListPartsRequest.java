package com.ksyun.ks3.services.request;

import com.ksyun.ks3.a.f;
import com.ksyun.ks3.auth.e;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpMethod;

public class ListPartsRequest extends Ks3HttpRequest {
    private static final long serialVersionUID = -4078058209726379593L;
    private String a;
    private Integer b = Integer.valueOf(1000);
    private Integer c = Integer.valueOf(-1);
    private String d;

    public ListPartsRequest(String str, String str2, String str3) {
        super.b(str);
        super.d(str2);
        j(str3);
    }

    /* access modifiers changed from: protected */
    public void a() throws Ks3ClientException {
        a(HttpMethod.GET);
        b("max-parts", String.valueOf(this.b));
        b("uploadId", this.a);
        if (this.c != null && this.c.intValue() >= 0) {
            b("part-number-marker", String.valueOf(this.c));
        }
        if (!f.a(this.d)) {
            b("encoding-type", this.d);
        }
    }

    /* access modifiers changed from: protected */
    public void b() throws Ks3ClientException {
        if (e.a(d()) == null) {
            throw new Ks3ClientException("bucket name is not correct");
        } else if (f.a(g())) {
            throw new Ks3ClientException("object key can not be null");
        } else if (f.a(this.a)) {
            throw new Ks3ClientException("uploadId can not be null");
        } else if (this.b == null) {
        } else {
            if (this.b.intValue() > 1000 || this.b.intValue() < 1) {
                throw new Ks3ClientException("maxParts should between 1 and 1000");
            }
        }
    }

    public void j(String str) {
        this.a = str;
    }
}
