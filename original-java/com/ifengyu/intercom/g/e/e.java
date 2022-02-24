package com.ifengyu.intercom.g.e;

import com.ifengyu.intercom.g.c.d;
import com.ifengyu.intercom.g.d.b;
import com.ifengyu.intercom.g.e.a;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: PutFormRequest.java */
/* loaded from: classes2.dex */
public class e extends c {
    private List<d.a> g;

    /* compiled from: PutFormRequest.java */
    /* loaded from: classes2.dex */
    class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f5273a;

        /* compiled from: PutFormRequest.java */
        /* renamed from: com.ifengyu.intercom.g.e.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0149a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ long f5275a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f5276b;

            RunnableC0149a(long j, long j2) {
                this.f5275a = j;
                this.f5276b = j2;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                b bVar = aVar.f5273a;
                long j = this.f5276b;
                bVar.a((((float) this.f5275a) * 1.0f) / ((float) j), j, e.this.e);
            }
        }

        a(b bVar) {
            this.f5273a = bVar;
        }

        @Override // com.ifengyu.intercom.g.e.a.b
        public void a(long j, long j2) {
            com.ifengyu.intercom.g.b.d().a().execute(new RunnableC0149a(j, j2));
        }
    }

    public e(String str, Object obj, Map<String, String> map, Map<String, String> map2, List<d.a> list, int i) {
        super(str, obj, map, map2, i);
        this.g = list;
    }

    @Override // com.ifengyu.intercom.g.e.c
    protected RequestBody a(RequestBody requestBody, b bVar) {
        return bVar == null ? requestBody : new a(requestBody, new a(bVar));
    }

    @Override // com.ifengyu.intercom.g.e.c
    protected RequestBody c() {
        List<d.a> list = this.g;
        if (list == null || list.isEmpty()) {
            FormBody.Builder builder = new FormBody.Builder();
            a(builder);
            return builder.build();
        }
        MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
        a(type);
        for (int i = 0; i < this.g.size(); i++) {
            d.a aVar = this.g.get(i);
            type.addFormDataPart(aVar.f5251a, aVar.f5252b, RequestBody.create(MediaType.parse(a(aVar.f5252b)), aVar.f5253c));
        }
        return type.build();
    }

    @Override // com.ifengyu.intercom.g.e.c
    protected Request a(RequestBody requestBody) {
        return this.f.put(requestBody).build();
    }

    private String a(String str) {
        String str2;
        try {
            str2 = URLConnection.getFileNameMap().getContentTypeFor(URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            str2 = null;
        }
        return str2 == null ? "application/octet-stream" : str2;
    }

    private void a(MultipartBody.Builder builder) {
        Map<String, String> map = this.f5267c;
        if (!(map == null || map.isEmpty())) {
            for (String str : this.f5267c.keySet()) {
                builder.addPart(Headers.of("Content-Disposition", "form-data; name=\"" + str + "\""), RequestBody.create((MediaType) null, this.f5267c.get(str)));
            }
        }
    }

    private void a(FormBody.Builder builder) {
        Map<String, String> map = this.f5267c;
        if (map != null) {
            for (String str : map.keySet()) {
                builder.add(str, this.f5267c.get(str));
            }
        }
    }
}
