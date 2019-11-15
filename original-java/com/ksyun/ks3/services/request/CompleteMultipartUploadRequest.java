package com.ksyun.ks3.services.request;

import android.util.Log;
import android.util.Xml;
import com.ksyun.ks3.a.f;
import com.ksyun.ks3.auth.e;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.HttpMethod;
import com.ksyun.ks3.model.a.c;
import com.ksyun.ks3.model.d;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.xmlpull.v1.XmlSerializer;

public class CompleteMultipartUploadRequest extends Ks3HttpRequest {
    private static final long serialVersionUID = -7600788989122388243L;
    private String a;
    private List<d> b = new ArrayList();
    private String c;
    private String d;
    private Map<String, String> e;

    public CompleteMultipartUploadRequest(c cVar) {
        if (cVar != null) {
            b(cVar.a());
            d(cVar.b());
            this.a = cVar.c();
            for (com.ksyun.ks3.model.c cVar2 : cVar.d()) {
                d dVar = new d();
                dVar.a(cVar2.b());
                dVar.a(cVar2.a());
                this.b.add(dVar);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a() throws Ks3ClientException {
        try {
            XmlSerializer newSerializer = Xml.newSerializer();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            newSerializer.setOutput(byteArrayOutputStream, "UTF-8");
            newSerializer.startDocument("UTF-8", Boolean.valueOf(true));
            newSerializer.startTag(null, "CompleteMultipartUpload");
            for (d dVar : this.b) {
                newSerializer.startTag(null, "Part").startTag(null, "PartNumber").text(String.valueOf(dVar.a())).endTag(null, "PartNumber").startTag(null, Names.ETAG).text(dVar.b()).endTag(null, Names.ETAG).endTag(null, "Part");
            }
            newSerializer.endTag(null, "CompleteMultipartUpload");
            newSerializer.endDocument();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            a((InputStream) new ByteArrayInputStream(byteArray));
            a(HttpHeaders.ContentLength, String.valueOf(byteArray.length));
            a(HttpMethod.POST);
            b("uploadId", this.a);
            if (f.a(this.c) || f.a(this.d)) {
                Log.d("ks3_android_sdk", "the callbacurl or callbackbody is null , ignore set the callback");
                return;
            }
            a(HttpHeaders.XKssCallBackUrl, this.c);
            a(HttpHeaders.XKssCallBackBody, this.d);
            if (this.e == null || this.e.size() <= 0) {
                Log.d("ks3_android_sdk", "the callbackheaders is null");
                return;
            }
            for (Entry entry : this.e.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (f.a(str) || !str.startsWith("kss-") || f.a(str2)) {
                    Log.e("ks3_android_sdk", "the header:" + str + "-" + str2 + " is not correct ,this head will be ignored");
                } else {
                    a(str, str2);
                }
            }
        } catch (IllegalStateException e2) {
            throw new Ks3ClientException((Throwable) e2);
        } catch (IOException e3) {
            throw new Ks3ClientException((Throwable) e3);
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
            throw new Ks3ClientException("partETags can not be null");
        }
    }
}
