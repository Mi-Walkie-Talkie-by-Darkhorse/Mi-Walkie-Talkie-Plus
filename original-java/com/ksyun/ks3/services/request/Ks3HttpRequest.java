package com.ksyun.ks3.services.request;

import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ksyun.ks3.a.e;
import com.ksyun.ks3.a.f;
import com.ksyun.ks3.auth.AuthEventCode;
import com.ksyun.ks3.auth.c;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.model.HttpHeaders;
import com.ksyun.ks3.model.HttpMethod;
import com.ksyun.ks3.model.a;
import com.ksyun.ks3.model.acl.b;
import com.ksyun.ks3.model.b.d;
import com.loopj.android.http.h;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpEntity;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.entity.StringEntity;

public abstract class Ks3HttpRequest implements Serializable {
    private static final Pattern p;
    private static final long serialVersionUID = -5871616471337887313L;
    private String a;
    private String b;
    private String c;
    private String d = "";
    private HttpEntity e;
    private InputStream f;
    private HttpMethod g;
    private Map<String, String> h = new HashMap();
    private Map<String, String> i = new HashMap();
    private b j;
    private a k;
    private com.ksyun.ks3.services.b l;
    private String m;
    private d n;
    private h o;

    /* access modifiers changed from: protected */
    public abstract void a() throws Ks3ClientException;

    /* access modifiers changed from: protected */
    public abstract void b() throws Ks3ClientException;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(Pattern.quote("+")).append("|").append(Pattern.quote("*")).append("|").append(Pattern.quote("%7E")).append("|");
        p = Pattern.compile(sb.toString());
    }

    public String c() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    public String d() {
        return this.b;
    }

    public HttpEntity e() {
        return this.e;
    }

    public void a(HttpEntity httpEntity) {
        this.e = httpEntity;
    }

    public String f() {
        return (String) this.h.get(HttpHeaders.Host.toString());
    }

    public void c(String str) {
        a(HttpHeaders.Host.toString(), str);
    }

    public void d(String str) {
        this.c = str;
    }

    public String g() {
        return this.c;
    }

    public void a(b bVar) {
        this.j = bVar;
    }

    public InputStream h() {
        return this.f;
    }

    public void a(InputStream inputStream) {
        this.f = inputStream;
    }

    public void a(String str, String str2) {
        this.h.put(str, str2);
    }

    /* access modifiers changed from: protected */
    public void a(HttpHeaders httpHeaders, String str) {
        a(httpHeaders.toString(), str);
    }

    public Map<String, String> i() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    public void e(String str) {
        this.d = str;
    }

    public String j() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void b(String str, String str2) {
        this.i.put(str, str2);
    }

    public void a(HttpMethod httpMethod) {
        this.g = httpMethod;
    }

    public HttpMethod k() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public void f(String str) {
        a(HttpHeaders.ContentMD5.toString(), str);
    }

    public String l() {
        String str = (String) this.h.get(HttpHeaders.ContentMD5.toString());
        return str == null ? "" : str;
    }

    public void g(String str) {
        this.h.put(HttpHeaders.ContentType.toString(), str);
    }

    public String m() {
        String str = (String) this.h.get(HttpHeaders.ContentType.toString());
        return str == null ? "" : str;
    }

    public String n() {
        String str = (String) this.h.get(HttpHeaders.Date.toString());
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    /* access modifiers changed from: protected */
    public void h(String str) {
        a(HttpHeaders.Date.toString(), str);
    }

    public a o() {
        return this.k;
    }

    public void a(com.ksyun.ks3.services.d dVar, com.loopj.android.http.d dVar2) throws Ks3ClientException {
        b();
        q();
        a();
        if (f.a(m())) {
            g("text/plain");
        }
        if (dVar2 instanceof d) {
            this.n = (d) dVar2;
        }
        this.k = a(dVar);
        if (this.l != null && dVar.a) {
            if (!TextUtils.isEmpty(this.m)) {
                com.ksyun.ks3.auth.a aVar = new com.ksyun.ks3.auth.a();
                aVar.a(AuthEventCode.Success);
                aVar.a(this.m);
                Log.d("ks3_android_sdk", "retrieve auth string success :" + this.m);
                Log.d("ks3_android_sdk", "make requset complete");
                dVar.a(aVar);
            } else {
                com.ksyun.ks3.auth.a aVar2 = new com.ksyun.ks3.auth.a();
                aVar2.a(AuthEventCode.Failure);
                aVar2.a("failure reason : authorizaion is not correct :" + this.m);
                Log.d("ks3_android_sdk", "make requset failed");
                dVar.b(aVar2);
            }
        }
        Log.d("ks3_android_sdk", "make requset complete");
    }

    private void q() {
        this.a = f().toString();
        if (this.a.startsWith(Http.PROTOCOL_PREFIX) || this.a.startsWith("https://")) {
            this.a = this.a.replace(Http.PROTOCOL_PREFIX, "").replace("https://", "");
        }
        this.g = HttpMethod.POST;
        f("");
        a(HttpHeaders.UserAgent, "ks3-kss-android-sdk");
        h(com.ksyun.ks3.a.b.a());
    }

    private a a(com.ksyun.ks3.services.d dVar) throws Ks3ClientException {
        String encode;
        if ((this instanceof a) && h() != null && !(h() instanceof com.ksyun.ks3.model.b.b)) {
            a((InputStream) new com.ksyun.ks3.model.b.b(h()));
        }
        String r = r();
        if (f.a(this.c)) {
            encode = "";
        } else {
            encode = URLEncoder.encode(this.c);
        }
        this.a = new StringBuffer(Http.PROTOCOL_PREFIX).append(this.a).append("/").append(encode).toString();
        this.a = i(this.a);
        if (!TextUtils.isEmpty(r)) {
            this.a += "?" + r;
        }
        a(this.a);
        if (k() == HttpMethod.POST) {
            if (this.f != null || this.i == null) {
                try {
                    a((HttpEntity) new BufferedHttpEntity(new com.ksyun.ks3.auth.d(this.f, (String) i().get(HttpHeaders.ContentLength.toString()))));
                } catch (IOException e2) {
                    ThrowableExtension.printStackTrace(e2);
                    throw new Ks3ClientException("init http request error(" + e2 + ")", e2);
                }
            } else {
                try {
                    a((HttpEntity) new StringEntity(r));
                } catch (UnsupportedEncodingException e3) {
                    throw new Ks3ClientException("Unable to create HTTP entity:" + e3, e3);
                }
            }
        } else if (k() != HttpMethod.GET) {
            if (k() == HttpMethod.PUT) {
                if (this.f != null) {
                    String str = (String) i().get(HttpHeaders.ContentLength.toString());
                    if (str == null) {
                        throw new Ks3ClientException("content-length can not be null when put request");
                    }
                    com.ksyun.ks3.auth.d dVar2 = new com.ksyun.ks3.auth.d(this.f, str);
                    dVar2.a(this.n);
                    a((HttpEntity) dVar2);
                }
            } else if (!(k() == HttpMethod.DELETE || k() == HttpMethod.HEAD)) {
                throw new Ks3ClientException("Unknow http method : " + k());
            }
        }
        if (!f.a((String) this.h.get(HttpHeaders.ContentLength.toString()))) {
            this.h.remove(HttpHeaders.ContentLength.toString());
        }
        if (this.l != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(k().toString()).append("\n");
            stringBuffer.append(l()).append("\n");
            stringBuffer.append(m()).append("\n");
            stringBuffer.append(n()).append("\n");
            stringBuffer.append(com.ksyun.ks3.auth.b.b(this)).append("\n");
            stringBuffer.append(com.ksyun.ks3.auth.b.a(this));
            Log.i("ks3_android_sdk", "the correct StringToSign should be :" + stringBuffer.toString());
            if (this.j != null) {
                Log.i("ks3_android_sdk", "the correct auth string should be " + new c().a(this.j, this).trim());
            }
            if (this.l instanceof com.ksyun.ks3.services.h) {
                com.ksyun.ks3.services.c onCalculateAuthWithServerDate = ((com.ksyun.ks3.services.h) this.l).onCalculateAuthWithServerDate(k().toString(), m(), n(), l(), com.ksyun.ks3.auth.b.a(this), com.ksyun.ks3.auth.b.b(this));
                this.m = onCalculateAuthWithServerDate.b();
                h(onCalculateAuthWithServerDate.a());
            } else {
                this.m = this.l.onCalculateAuth(k().toString(), m(), n(), l(), com.ksyun.ks3.auth.b.a(this), com.ksyun.ks3.auth.b.b(this));
            }
            if (this.m == null) {
                this.m = "";
            }
            Log.i("ks3_android_sdk", "app server return auth string is  :" + this.m.trim());
            a(HttpHeaders.Authorization.toString(), this.m.trim());
        } else {
            a(HttpHeaders.Authorization.toString(), new c().a(this.j, this).trim());
        }
        if (this.e != null) {
            return new a(this.a, m(), this.h, this.i, this.e);
        }
        return new a(this.a, this.h, this.i);
    }

    private String r() {
        String str;
        ArrayList<Entry> arrayList = new ArrayList<>(this.i.entrySet());
        Collections.sort(arrayList, new Comparator<Entry<String, String>>() {
            /* renamed from: a */
            public int compare(Entry<String, String> entry, Entry<String, String> entry2) {
                return com.ksyun.ks3.a.a.a(((String) entry.getKey()).toString().getBytes(), ((String) entry2.getKey()).toString().getBytes());
            }
        });
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Entry entry : arrayList) {
            String replace = ((String) entry.getKey()).replace(String.valueOf(8203), "");
            if (!f.a((String) entry.getValue())) {
                str = URLEncoder.encode((String) entry.getValue());
            } else {
                str = null;
            }
            if (e.a.contains(entry.getKey())) {
                if (str == null || str.equals("")) {
                    arrayList2.add(replace);
                } else {
                    arrayList2.add(replace + "=" + str);
                }
            }
            if (str != null && !str.equals("")) {
                arrayList3.add(replace + "=" + str);
            } else if (e.a.contains(replace)) {
                arrayList3.add(replace);
            }
        }
        String join = TextUtils.join("&", arrayList3.toArray());
        e(TextUtils.join("&", arrayList2.toArray()));
        return join;
    }

    public void a(com.ksyun.ks3.services.b bVar) {
        this.l = bVar;
    }

    public void a(h hVar) {
        if (this.o != null) {
            Log.e("ks3_android_sdk", "method : setRequestHandler , is an internal method, and the handler is already set up , ingnore ! ");
        } else {
            this.o = hVar;
        }
    }

    public boolean p() {
        if (this.o != null) {
            return this.o.a(true);
        }
        Log.e("ks3_android_sdk", "the request is on RUNNING status , or the request is on sync mode , igonre abort request ! ");
        return false;
    }

    public static String i(String str) {
        if (str == null) {
            return "";
        }
        Matcher matcher = p.matcher(str);
        StringBuffer stringBuffer = new StringBuffer(str.length());
        while (matcher.find()) {
            String group = matcher.group(0);
            if ("+".equals(group)) {
                group = "%20";
            } else if ("*".equals(group)) {
                group = "%2A";
            } else if ("%7E".equals(group)) {
                group = "~";
            }
            matcher.appendReplacement(stringBuffer, group);
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        Log.d("Ks3HttpRequest", "Ks3HttpRequest finalize:" + this);
        super.finalize();
    }
}
