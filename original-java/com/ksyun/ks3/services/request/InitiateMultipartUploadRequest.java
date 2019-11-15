package com.ksyun.ks3.services.request;

import com.ksyun.ks3.a.f;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.HttpMethod;
import com.ksyun.ks3.model.ObjectMetadata;
import com.ksyun.ks3.model.ObjectMetadata.Meta;
import com.ksyun.ks3.model.acl.CannedAccessControlList;
import com.ksyun.ks3.model.acl.Permission;
import com.ksyun.ks3.model.acl.a;
import com.ksyun.ks3.model.acl.c;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public class InitiateMultipartUploadRequest extends Ks3HttpRequest {
    private static final long serialVersionUID = 7282026856520472721L;
    private ObjectMetadata a = new ObjectMetadata();
    private a b = new a();
    private CannedAccessControlList c;

    public InitiateMultipartUploadRequest(String str, String str2) {
        b(str);
        d(str2);
    }

    /* access modifiers changed from: protected */
    public void a() throws Ks3ClientException {
        a(HttpMethod.POST);
        b("uploads", null);
        if (f.a(m())) {
            a(HttpHeaders.ContentType, "application/octet-stream");
        }
        for (Entry entry : this.a.a().entrySet()) {
            if (!((Meta) entry.getKey()).equals(Meta.ContentLength)) {
                a(((Meta) entry.getKey()).toString(), (String) entry.getValue());
            }
        }
        for (Entry entry2 : this.a.b().entrySet()) {
            if (((String) entry2.getKey()).startsWith("x-kss-meta-")) {
                a((String) entry2.getKey(), (String) entry2.getValue());
            }
        }
        if (this.c != null) {
            a(HttpHeaders.CannedAcl.toString(), this.c.toString());
        }
        if (this.b != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator it = this.b.a().iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.b().equals(Permission.FullControl)) {
                    arrayList.add("id=\"" + cVar.a().a() + "\"");
                } else if (cVar.b().equals(Permission.Read)) {
                    arrayList2.add("id=\"" + cVar.a().a() + "\"");
                } else if (cVar.b().equals(Permission.Write)) {
                    arrayList3.add("id=\"" + cVar.a().a() + "\"");
                }
            }
            if (arrayList.size() > 0) {
                a(HttpHeaders.GrantFullControl, f.a((List<String>) arrayList, Constants.ACCEPT_TIME_SEPARATOR_SP));
            }
            if (arrayList2.size() > 0) {
                a(HttpHeaders.GrantRead, f.a((List<String>) arrayList2, Constants.ACCEPT_TIME_SEPARATOR_SP));
            }
            if (arrayList3.size() > 0) {
                a(HttpHeaders.GrantWrite, f.a((List<String>) arrayList3, Constants.ACCEPT_TIME_SEPARATOR_SP));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b() throws Ks3ClientException {
        if (f.b(d()) == null) {
            throw new Ks3ClientException("bucket name is not correct");
        } else if (f.a(g())) {
            throw new Ks3ClientException("object key can not be null");
        }
    }

    public void a(CannedAccessControlList cannedAccessControlList) {
        this.c = cannedAccessControlList;
    }
}
