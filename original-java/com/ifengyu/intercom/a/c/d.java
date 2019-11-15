package com.ifengyu.intercom.a.c;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.a.a.c.a;
import com.ifengyu.intercom.a.b.b;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import okhttp3.FormBody.Builder;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: PostFormRequest */
public class d extends c {
    private List<a> g;

    public d(String str, Object obj, Map<String, String> map, Map<String, String> map2, List<a> list, int i) {
        super(str, obj, map, map2, i);
        this.g = list;
    }

    /* access modifiers changed from: protected */
    public RequestBody a() {
        if (this.g == null || this.g.isEmpty()) {
            Builder builder = new Builder();
            a(builder);
            return builder.build();
        }
        MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
        a(type);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.g.size()) {
                return type.build();
            }
            a aVar = (a) this.g.get(i2);
            type.addFormDataPart(aVar.a, aVar.b, RequestBody.create(MediaType.parse(a(aVar.b)), aVar.c));
            i = i2 + 1;
        }
    }

    /* access modifiers changed from: protected */
    public RequestBody a(RequestBody requestBody, final b bVar) {
        return bVar == null ? requestBody : new a(requestBody, new a.b() {
            public void a(long j, long j2) {
                final long j3 = j;
                final long j4 = j2;
                com.ifengyu.intercom.a.b.a().b().execute(new Runnable() {
                    public void run() {
                        bVar.a((((float) j3) * 1.0f) / ((float) j4), j4, d.this.e);
                    }
                });
            }
        });
    }

    /* access modifiers changed from: protected */
    public Request a(RequestBody requestBody) {
        return this.f.post(requestBody).build();
    }

    private String a(String str) {
        String str2;
        try {
            str2 = URLConnection.getFileNameMap().getContentTypeFor(URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
            str2 = null;
        }
        if (str2 == null) {
            return "application/octet-stream";
        }
        return str2;
    }

    private void a(MultipartBody.Builder builder) {
        if (this.c != null && !this.c.isEmpty()) {
            for (String str : this.c.keySet()) {
                builder.addPart(Headers.of(HttpPostBodyUtil.CONTENT_DISPOSITION, "form-data; name=\"" + str + "\""), RequestBody.create((MediaType) null, (String) this.c.get(str)));
            }
        }
    }

    private void a(Builder builder) {
        if (this.c != null) {
            for (String str : this.c.keySet()) {
                builder.add(str, (String) this.c.get(str));
            }
        }
    }
}
