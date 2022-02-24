package com.ifengyu.intercom.network.d;

import com.just.agentweb.DefaultWebClient;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* compiled from: HttpGetMap.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f5825a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f5826b;

    /* compiled from: HttpGetMap.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f5827a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f5828b;

        a(d dVar, a aVar) {
            this.f5827a = dVar;
            this.f5828b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = this.f5827a;
            if (dVar != null) {
                dVar.sendEmptyMessage(this.f5828b.a(c.this.a()) ? 1 : 2);
            }
        }
    }

    public c(String str, Map<String, String> map) {
        if (!str.contains(DefaultWebClient.HTTP_SCHEME) && !str.contains(DefaultWebClient.HTTPS_SCHEME)) {
            str = "https://api.ifengyu.com" + str;
        }
        this.f5825a = str;
        this.f5826b = map;
    }

    public void a(a aVar, d dVar) {
        e.a().execute(new a(dVar, aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        StringBuilder sb = new StringBuilder();
        try {
            if (this.f5826b != null && this.f5826b.size() > 0) {
                StringBuilder sb2 = new StringBuilder();
                if (!this.f5825a.endsWith("?")) {
                    sb2.append("?");
                }
                for (Map.Entry<String, String> entry : this.f5826b.entrySet()) {
                    sb2.append("&" + entry.getKey() + "=" + entry.getValue());
                }
                this.f5825a += sb2.toString();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f5825a).openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sb.toString();
    }
}
