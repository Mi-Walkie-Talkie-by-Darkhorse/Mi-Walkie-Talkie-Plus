package com.shenma.speechrecognition;

import android.os.Bundle;
import android.os.Process;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.zip.GZIPInputStream;
import org.apache.http.util.ByteArrayBuffer;
import org.json.JSONException;
import org.json.JSONObject;

class p extends Thread {
    private final BlockingQueue a;
    private volatile boolean b = false;
    private final ae c;
    private final UUID d;
    private final l e;
    private final v f;

    public p(UUID uuid, l lVar, v vVar, BlockingQueue blockingQueue, ae aeVar) {
        this.a = blockingQueue;
        this.c = aeVar;
        this.d = uuid;
        this.e = lVar;
        this.f = vVar;
    }

    private void a(int i, String str) {
        JSONObject jSONObject = new JSONObject(str);
        int optInt = jSONObject.optInt("code", -1);
        if (optInt != 0) {
            this.c.a(this.d, optInt);
            aa.a("server return code[%d]", Integer.valueOf(optInt));
        } else if (!jSONObject.has("nbest")) {
            this.c.a(this.d, 7);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("results_recognition", str);
            if (i < 0) {
                this.c.b(this.d, bundle);
                return;
            }
            this.c.c(this.d, bundle);
            if (jSONObject.has("sig")) {
                int optInt2 = jSONObject.optInt("sig", -1);
                aa.a("server return sig[%d]", Integer.valueOf(optInt2));
                if (optInt2 == 1) {
                    this.c.c(this.d);
                }
            }
        }
    }

    private void a(int i, HttpURLConnection httpURLConnection, DataOutputStream dataOutputStream, byte[] bArr) {
        long currentTimeMillis = System.currentTimeMillis();
        if (bArr != null) {
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(bArr.length);
            byteArrayBuffer.append(bArr, 0, bArr.length);
            dataOutputStream.write(byteArrayBuffer.toByteArray());
            aa.a("The %d-th packet was written for %dms.", Integer.valueOf(i), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
        dataOutputStream.flush();
        dataOutputStream.close();
        aa.a("Ready to send %d-th packet data.", Integer.valueOf(i));
        long currentTimeMillis2 = System.currentTimeMillis();
        try {
            int responseCode = httpURLConnection.getResponseCode();
            aa.a("Response %d-th packets request %dms. %d", Integer.valueOf(i), Long.valueOf(System.currentTimeMillis() - currentTimeMillis2), Integer.valueOf(responseCode));
            if (responseCode != 200) {
                this.c.a(this.d, 4);
                return;
            }
            String headerField = httpURLConnection.getHeaderField("Content-Encoding");
            boolean z = false;
            if (headerField != null && headerField.toLowerCase().contains("gzip")) {
                z = true;
                aa.a("gzip found.", new Object[0]);
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            InputStream inputStream2 = z ? new GZIPInputStream(inputStream) : inputStream;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
            inputStream2.close();
            String sb2 = sb.toString();
            if ((i < 0 || this.e.c()) && sb2.length() > 0) {
                a(i, sb2);
            }
            aa.a("The %d-th partial response result: %s", Integer.valueOf(i), sb2);
        } catch (IOException e2) {
            this.c.a(this.d, 4);
        }
    }

    public synchronized void a() {
        this.b = true;
        interrupt();
    }

    public void run() {
        aa.a("start uploader.", new Object[0]);
        Process.setThreadPriority(-20);
        try {
            String encode = URLEncoder.encode(this.e.a(), "ISO-8859-1");
            String encode2 = URLEncoder.encode(this.f.a(), "UTF-8");
            String encode3 = URLEncoder.encode("" + this.d, "ISO-8859-1");
            while (true) {
                try {
                    f fVar = (f) this.a.take();
                    aa.a("The %d-th packet length[%d] take %dms.", fVar.a(), fVar.c(), Long.valueOf(System.currentTimeMillis() - System.currentTimeMillis()));
                    long currentTimeMillis = System.currentTimeMillis();
                    HttpURLConnection httpURLConnection = null;
                    try {
                        httpURLConnection = fVar.d();
                        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("reqid=" + encode3);
                        stringBuffer.append("&appid=" + encode);
                        stringBuffer.append("&sequence=" + fVar.a());
                        stringBuffer.append("&property=" + encode2);
                        dataOutputStream.write(stringBuffer.toString().getBytes("ISO-8859-1"));
                        String str = new String(fVar.b(), "ISO-8859-1");
                        ArrayList<String> arrayList = new ArrayList<>();
                        arrayList.add(encode);
                        arrayList.add(fVar.a().toString());
                        arrayList.add(encode3);
                        arrayList.add(encode2);
                        arrayList.add(str);
                        Collections.sort(arrayList);
                        StringBuffer stringBuffer2 = new StringBuffer();
                        for (String append : arrayList) {
                            stringBuffer2.append(append);
                        }
                        stringBuffer2.append(this.e.b());
                        String a2 = u.a(stringBuffer2.toString());
                        aa.a("Signature is %s", a2);
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append("&sign=" + a2);
                        stringBuffer3.append("\u0001\u0002");
                        stringBuffer3.append(str);
                        aa.a("The %d-th request length is %d", fVar.a(), Integer.valueOf(stringBuffer3.toString().length()));
                        a(fVar.a().intValue(), httpURLConnection, dataOutputStream, stringBuffer3.toString().getBytes("ISO-8859-1"));
                        if (!af.a().c()) {
                            af.a().a(httpURLConnection.getHeaderField("Set-Cookie"));
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (IOException e2) {
                        aa.a(e2, "IOException in upload data", new Object[0]);
                        if (e2 instanceof SocketTimeoutException) {
                            this.c.a(this.d, 1);
                        } else {
                            this.c.a(this.d, 2);
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (JSONException e3) {
                        aa.a(e3, "JSONException in upload data", new Object[0]);
                        this.c.a(this.d, 5);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Throwable th) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                    aa.a("The %d-th packet uploaded %dms.", fVar.a(), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                } catch (InterruptedException e4) {
                    if (this.b) {
                        return;
                    }
                }
            }
        } catch (UnsupportedEncodingException e5) {
            aa.a(e5, "Fail to encode params for reqid:%s", this.d);
        }
    }
}
