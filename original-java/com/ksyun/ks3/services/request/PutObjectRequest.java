package com.ksyun.ks3.services.request;

import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ksyun.ks3.a.f;
import com.ksyun.ks3.auth.e;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.HttpMethod;
import com.ksyun.ks3.model.ObjectMetadata;
import com.ksyun.ks3.model.ObjectMetadata.Meta;
import com.ksyun.ks3.model.acl.CannedAccessControlList;
import com.ksyun.ks3.model.acl.Permission;
import com.ksyun.ks3.model.acl.a;
import com.ksyun.ks3.model.b;
import com.ksyun.ks3.model.b.c;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class PutObjectRequest extends Ks3HttpRequest implements a {
    private static final long serialVersionUID = 8398633676278496457L;
    private File a;
    private ObjectMetadata b = new ObjectMetadata();
    private CannedAccessControlList c;
    private a d = new a();
    private String e;
    private String f;
    private String g;
    private Map<String, String> h;

    public PutObjectRequest(String str, String str2, File file) {
        b(str);
        d(str2);
        a(file);
    }

    /* access modifiers changed from: protected */
    public void a() throws Ks3ClientException {
        try {
            a((InputStream) new c(this.a));
            if (f.a(m())) {
                this.b.a(b.a().a(this.a));
            }
            this.b.b(String.valueOf(this.a.length()));
            a(HttpHeaders.ContentLength, String.valueOf(this.a.length()));
            try {
                a(HttpHeaders.ContentMD5.toString(), com.ksyun.ks3.a.c.b(this.a));
                if (f.a(this.f) || f.a(this.g)) {
                    Log.d("ks3_android_sdk", "the callbacurl or callbackbody is null , ignore set the callback");
                } else {
                    a(HttpHeaders.XKssCallBackUrl, this.f);
                    a(HttpHeaders.XKssCallBackBody, this.g);
                    if (this.h == null || this.h.size() <= 0) {
                        Log.d("ks3_android_sdk", "the callbackheaders is null");
                    } else {
                        for (Entry entry : this.h.entrySet()) {
                            String str = (String) entry.getKey();
                            String str2 = (String) entry.getValue();
                            if (f.a(str) || !str.startsWith("kss-") || f.a(str2)) {
                                Log.e("ks3_android_sdk", "the header:" + str + "-" + str2 + " is not correct ,this head will be ignored");
                            } else {
                                a(str, str2);
                            }
                        }
                    }
                }
                for (Entry entry2 : this.b.a().entrySet()) {
                    if (!((Meta) entry2.getKey()).equals(Meta.ContentLength.toString())) {
                        a(((Meta) entry2.getKey()).toString(), (String) entry2.getValue());
                    }
                }
                for (Entry entry3 : this.b.b().entrySet()) {
                    if (((String) entry3.getKey()).startsWith("x-kss-meta-")) {
                        a((String) entry3.getKey(), (String) entry3.getValue());
                    }
                }
                if (this.c != null) {
                    a(HttpHeaders.CannedAcl.toString(), this.c.toString());
                }
                if (this.d != null) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = this.d.a().iterator();
                    while (it.hasNext()) {
                        com.ksyun.ks3.model.acl.c cVar = (com.ksyun.ks3.model.acl.c) it.next();
                        if (cVar.b().equals(Permission.FullControl)) {
                            arrayList.add("id=\"" + cVar.a().a() + "\"");
                        } else if (cVar.b().equals(Permission.Read)) {
                            arrayList2.add("id=\"" + cVar.a().a() + "\"");
                        } else if (cVar.b().equals(Permission.Write)) {
                            arrayList3.add("id=\"" + cVar.a().a() + "\"");
                        }
                    }
                    if (arrayList.size() > 0) {
                        a(HttpHeaders.GrantFullControl, TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, arrayList));
                    }
                    if (arrayList2.size() > 0) {
                        a(HttpHeaders.GrantRead, TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, arrayList2));
                    }
                    if (arrayList3.size() > 0) {
                        a(HttpHeaders.GrantWrite, TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, arrayList3));
                    }
                }
                if (this.e != null) {
                    a(HttpHeaders.XKssWebsiteRedirectLocation, this.e);
                }
                a(HttpMethod.PUT);
            } catch (FileNotFoundException e2) {
                ThrowableExtension.printStackTrace(e2);
                throw new Ks3ClientException((Throwable) e2);
            } catch (IOException e3) {
                ThrowableExtension.printStackTrace(e3);
                throw new Ks3ClientException("calculate file md5 error (" + e3 + ")", e3);
            }
        } catch (FileNotFoundException e4) {
            ThrowableExtension.printStackTrace(e4);
            throw new Ks3ClientException((Throwable) e4);
        }
    }

    /* access modifiers changed from: protected */
    public void b() throws Ks3ClientException {
        if (e.a(d()) == null) {
            throw new Ks3ClientException("bucket name is not correct");
        } else if (f.a(g())) {
            throw new Ks3ClientException("object key can not be null");
        } else if (this.a == null) {
            throw new Ks3ClientException("upload object can not be null");
        } else {
            if (!(this.d == null || this.d.a() == null)) {
                Iterator it = this.d.a().iterator();
                while (it.hasNext()) {
                    com.ksyun.ks3.model.acl.c cVar = (com.ksyun.ks3.model.acl.c) it.next();
                    if (cVar.b() == null) {
                        throw new Ks3ClientException("grant :" + cVar.a() + ",permission can not be null");
                    }
                }
            }
            if (this.e != null && !this.e.startsWith("/") && !this.e.startsWith(Http.PROTOCOL_PREFIX) && !this.e.startsWith("https://")) {
                throw new Ks3ClientException("redirectLocation should start with / http:// or https://");
            }
        }
    }

    private void a(File file) {
        this.a = file;
    }

    public void a(CannedAccessControlList cannedAccessControlList) {
        this.c = cannedAccessControlList;
    }
}
