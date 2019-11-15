package com.ifengyu.intercom.network.a;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.network.d;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: HttpGetMap */
public class c {
    private String a;
    private Map<String, String> b;

    public c(String str, Map<String, String> map) {
        if (!str.contains(Http.PROTOCOL_PREFIX) && !str.contains("https://")) {
            str = d.c + str;
        }
        this.a = str;
        this.b = map;
    }

    public void a(final a aVar, final d dVar) {
        e.b().execute(new Runnable() {
            public void run() {
                if (dVar != null) {
                    dVar.sendEmptyMessage(aVar.a(c.this.a()) ? 1 : 2);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public String a() {
        StringBuilder sb = new StringBuilder();
        try {
            if (this.b != null && this.b.size() > 0) {
                StringBuilder sb2 = new StringBuilder();
                if (!this.a.endsWith("?")) {
                    sb2.append("?");
                }
                for (Entry entry : this.b.entrySet()) {
                    sb2.append("&" + ((String) entry.getKey()) + "=" + ((String) entry.getValue()));
                }
                this.a += sb2.toString();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.a).openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setRequestMethod("GET");
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
            ThrowableExtension.printStackTrace(e);
        }
        return sb.toString();
    }
}
