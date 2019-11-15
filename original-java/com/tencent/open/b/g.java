package com.tencent.open.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.data.Const;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.d;
import com.tencent.open.utils.e;
import com.tencent.open.utils.h;
import com.tencent.open.utils.i;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class g {
    protected static g a;
    protected Random b = new Random();
    protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
    protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
    protected HandlerThread e = null;
    protected Handler f;
    protected Executor g = h.b();
    protected Executor h = h.b();

    public static synchronized g a() {
        g gVar;
        synchronized (g.class) {
            if (a == null) {
                a = new g();
            }
            gVar = a;
        }
        return gVar;
    }

    private g() {
        if (this.e == null) {
            this.e = new HandlerThread("opensdk.report.handlerthread", 10);
            this.e.start();
        }
        if (this.e.isAlive() && this.e.getLooper() != null) {
            this.f = new Handler(this.e.getLooper()) {
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 1000:
                            g.this.b();
                            break;
                        case 1001:
                            g.this.e();
                            break;
                    }
                    super.handleMessage(message);
                }
            };
        }
    }

    public void a(final Bundle bundle, String str, final boolean z) {
        if (bundle != null) {
            f.a("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + bundle.toString());
            if (a("report_via", str) || z) {
                this.g.execute(new Runnable() {
                    public void run() {
                        try {
                            Bundle bundle = new Bundle();
                            bundle.putString("uin", Constants.DEFAULT_UIN);
                            bundle.putString("imei", c.b(d.a()));
                            bundle.putString("imsi", c.c(d.a()));
                            bundle.putString("android_id", c.d(d.a()));
                            bundle.putString("mac", c.a());
                            bundle.putString(Constants.PARAM_PLATFORM, "1");
                            bundle.putString("os_ver", VERSION.RELEASE);
                            bundle.putString("position", i.c(d.a()));
                            bundle.putString("network", a.a(d.a()));
                            bundle.putString("language", c.b());
                            bundle.putString("resolution", c.a(d.a()));
                            bundle.putString("apn", a.b(d.a()));
                            bundle.putString("model_name", Build.MODEL);
                            bundle.putString("timezone", TimeZone.getDefault().getID());
                            bundle.putString("sdk_ver", Constants.SDK_VERSION);
                            bundle.putString("qz_ver", i.d(d.a(), Constants.PACKAGE_QZONE));
                            bundle.putString("qq_ver", i.c(d.a(), "com.tencent.mobileqq"));
                            bundle.putString("qua", i.e(d.a(), d.b()));
                            bundle.putString("packagename", d.b());
                            bundle.putString("app_ver", i.d(d.a(), d.b()));
                            if (bundle != null) {
                                bundle.putAll(bundle);
                            }
                            g.this.d.add(new b(bundle));
                            int size = g.this.d.size();
                            int a2 = e.a(d.a(), (String) null).a("Agent_ReportTimeInterval");
                            if (a2 == 0) {
                                a2 = 10000;
                            }
                            if (g.this.a("report_via", size) || z) {
                                g.this.e();
                                g.this.f.removeMessages(1001);
                            } else if (!g.this.f.hasMessages(1001)) {
                                Message obtain = Message.obtain();
                                obtain.what = 1001;
                                g.this.f.sendMessageDelayed(obtain, (long) a2);
                            }
                        } catch (Exception e) {
                            f.b("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", e);
                        }
                    }
                });
            }
        }
    }

    public void a(String str, long j, long j2, long j3, int i) {
        a(str, j, j2, j3, i, "", false);
    }

    public void a(String str, long j, long j2, long j3, int i, String str2, boolean z) {
        f.a("openSDK_LOG.ReportManager", "-->reportCgi, command: " + str + " | startTime: " + j + " | reqSize:" + j2 + " | rspSize: " + j3 + " | responseCode: " + i + " | detail: " + str2);
        if (a("report_cgi", "" + i) || z) {
            final long j4 = j;
            final String str3 = str;
            final String str4 = str2;
            final int i2 = i;
            final long j5 = j2;
            final long j6 = j3;
            final boolean z2 = z;
            this.h.execute(new Runnable() {
                public void run() {
                    int i = 1;
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - j4;
                        Bundle bundle = new Bundle();
                        String a2 = a.a(d.a());
                        bundle.putString("apn", a2);
                        bundle.putString("appid", "1000067");
                        bundle.putString("commandid", str3);
                        bundle.putString("detail", str4);
                        StringBuilder sb = new StringBuilder();
                        sb.append("network=").append(a2).append('&');
                        sb.append("sdcard=").append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0).append('&');
                        sb.append("wifi=").append(a.e(d.a()));
                        bundle.putString("deviceInfo", sb.toString());
                        int a3 = 100 / g.this.a(i2);
                        if (a3 > 0) {
                            if (a3 > 100) {
                                i = 100;
                            } else {
                                i = a3;
                            }
                        }
                        bundle.putString("frequency", i + "");
                        bundle.putString("reqSize", j5 + "");
                        bundle.putString("resultCode", i2 + "");
                        bundle.putString("rspSize", j6 + "");
                        bundle.putString("timeCost", elapsedRealtime + "");
                        bundle.putString("uin", Constants.DEFAULT_UIN);
                        g.this.c.add(new b(bundle));
                        int size = g.this.c.size();
                        int a4 = e.a(d.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (a4 == 0) {
                            a4 = 10000;
                        }
                        if (g.this.a("report_cgi", size) || z2) {
                            g.this.b();
                            g.this.f.removeMessages(1000);
                        } else if (!g.this.f.hasMessages(1000)) {
                            Message obtain = Message.obtain();
                            obtain.what = 1000;
                            g.this.f.sendMessageDelayed(obtain, (long) a4);
                        }
                    } catch (Exception e2) {
                        f.b("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", e2);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.h.execute(new Runnable() {
            /*  JADX ERROR: IF instruction can be used only in fallback mode
                jadx.core.utils.exceptions.CodegenException: IF instruction can be used only in fallback mode
                	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:568)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:474)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:193)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:138)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:299)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:68)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:661)
                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:595)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:773)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:713)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:76)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:32)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:20)
                	at jadx.core.ProcessClass.process(ProcessClass.java:36)
                	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
                	at jadx.api.JavaClass.decompile(JavaClass.java:62)
                	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
                */
            public void run() {
                /*
                    r8 = this;
                    r1 = 0
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b2 }
                    android.os.Bundle r4 = r0.c()     // Catch:{ Exception -> 0x00b2 }
                    if (r4 != 0) goto L_0x000a     // Catch:{ Exception -> 0x00b2 }
                L_0x0009:
                    return     // Catch:{ Exception -> 0x00b2 }
                L_0x000a:
                    android.content.Context r0 = com.tencent.open.utils.d.a()     // Catch:{ Exception -> 0x00b2 }
                    r2 = 0     // Catch:{ Exception -> 0x00b2 }
                    com.tencent.open.utils.e r0 = com.tencent.open.utils.e.a(r0, r2)     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r2 = "Common_HttpRetryCount"     // Catch:{ Exception -> 0x00b2 }
                    int r0 = r0.a(r2)     // Catch:{ Exception -> 0x00b2 }
                    if (r0 != 0) goto L_0x00bc     // Catch:{ Exception -> 0x00b2 }
                    r0 = 3     // Catch:{ Exception -> 0x00b2 }
                    r3 = r0     // Catch:{ Exception -> 0x00b2 }
                L_0x001d:
                    java.lang.String r0 = "openSDK_LOG.ReportManager"     // Catch:{ Exception -> 0x00b2 }
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00b2 }
                    r2.<init>()     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r5 = "-->doReportCgi, retryCount: "     // Catch:{ Exception -> 0x00b2 }
                    java.lang.StringBuilder r2 = r2.append(r5)     // Catch:{ Exception -> 0x00b2 }
                    java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00b2 }
                    com.tencent.open.a.f.b(r0, r2)     // Catch:{ Exception -> 0x00b2 }
                    r0 = r1
                L_0x0036:
                    int r0 = r0 + 1
                    android.content.Context r2 = com.tencent.open.utils.d.a()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5 = 0     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = "http://wspeed.qq.com/w.cgi"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    org.apache.http.client.HttpClient r2 = com.tencent.open.utils.HttpUtils.getHttpClient(r2, r5, r6)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    org.apache.http.client.methods.HttpPost r5 = new org.apache.http.client.methods.HttpPost     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = "http://wspeed.qq.com/w.cgi"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5.<init>(r6)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = "Accept-Encoding"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r7 = "gzip"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5.addHeader(r6, r7)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = "Content-Type"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r7 = "application/x-www-form-urlencoded"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5.setHeader(r6, r7)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = com.tencent.open.utils.HttpUtils.encodeUrl(r4)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    byte[] r6 = com.tencent.open.utils.i.i(r6)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    org.apache.http.entity.ByteArrayEntity r7 = new org.apache.http.entity.ByteArrayEntity     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r7.<init>(r6)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5.setEntity(r7)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    org.apache.http.HttpResponse r2 = r2.execute(r5)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    org.apache.http.StatusLine r2 = r2.getStatusLine()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    int r2 = r2.getStatusCode()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r5 = "openSDK_LOG.ReportManager"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r6.<init>()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r7 = "-->doReportCgi, statusCode: "     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.StringBuilder r6 = r6.append(r2)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r6 = r6.toString()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    com.tencent.open.a.f.b(r5, r6)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r5 = 200(0xc8, float:2.8E-43)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    if (r2 != r5) goto L_0x009a     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    com.tencent.open.b.f r2 = com.tencent.open.b.f.a()     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    java.lang.String r5 = "report_cgi"     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r2.b(r5)     // Catch:{ ConnectTimeoutException -> 0x00bf, SocketTimeoutException -> 0x00ca, Exception -> 0x00d3 }
                    r1 = 1
                L_0x009a:
                    if (r1 != 0) goto L_0x00a9
                    com.tencent.open.b.f r0 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r1 = "report_cgi"     // Catch:{ Exception -> 0x00b2 }
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b2 }
                    java.util.List<java.io.Serializable> r2 = r2.c     // Catch:{ Exception -> 0x00b2 }
                    r0.a(r1, r2)     // Catch:{ Exception -> 0x00b2 }
                L_0x00a9:
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b2 }
                    java.util.List<java.io.Serializable> r0 = r0.c     // Catch:{ Exception -> 0x00b2 }
                    r0.clear()     // Catch:{ Exception -> 0x00b2 }
                    goto L_0x0009
                L_0x00b2:
                    r0 = move-exception
                    java.lang.String r1 = "openSDK_LOG.ReportManager"
                    java.lang.String r2 = "-->doReportCgi, doupload exception out."
                    com.tencent.open.a.f.b(r1, r2, r0)
                    goto L_0x0009
                L_0x00bc:
                    r3 = r0
                    goto L_0x001d
                L_0x00bf:
                    r2 = move-exception
                    java.lang.String r5 = "openSDK_LOG.ReportManager"
                    java.lang.String r6 = "-->doReportCgi, doupload exception"
                    com.tencent.open.a.f.b(r5, r6, r2)     // Catch:{ Exception -> 0x00b2 }
                L_0x00c7:
                    if (r0 < r3) goto L_0x0036     // Catch:{ Exception -> 0x00b2 }
                    goto L_0x009a     // Catch:{ Exception -> 0x00b2 }
                L_0x00ca:
                    r2 = move-exception     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r5 = "openSDK_LOG.ReportManager"     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r6 = "-->doReportCgi, doupload exception"     // Catch:{ Exception -> 0x00b2 }
                    com.tencent.open.a.f.b(r5, r6, r2)     // Catch:{ Exception -> 0x00b2 }
                    goto L_0x00c7     // Catch:{ Exception -> 0x00b2 }
                L_0x00d3:
                    r0 = move-exception     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r2 = "openSDK_LOG.ReportManager"     // Catch:{ Exception -> 0x00b2 }
                    java.lang.String r3 = "-->doReportCgi, doupload exception"     // Catch:{ Exception -> 0x00b2 }
                    com.tencent.open.a.f.b(r2, r3, r0)     // Catch:{ Exception -> 0x00b2 }
                    goto L_0x009a
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass4.run():void");
            }
        });
    }

    /* access modifiers changed from: protected */
    public boolean a(String str, String str2) {
        int i;
        boolean z = true;
        boolean z2 = false;
        f.b("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + str + " | ext: " + str2);
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("report_cgi")) {
                try {
                    int a2 = a(Integer.parseInt(str2));
                    if (this.b.nextInt(100) >= a2) {
                        z = false;
                    }
                    z2 = z;
                    i = a2;
                } catch (Exception e2) {
                }
            } else if (str.equals("report_via")) {
                int a3 = e.a(str2);
                if (this.b.nextInt(100) < a3) {
                    z2 = true;
                    i = a3;
                } else {
                    i = a3;
                }
            } else {
                i = 100;
            }
            f.b("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z2 + " | frequency: " + i);
        }
        return z2;
    }

    /* access modifiers changed from: protected */
    public boolean a(String str, int i) {
        int i2 = 5;
        if (str.equals("report_cgi")) {
            int a2 = e.a(d.a(), (String) null).a("Common_CGIReportMaxcount");
            if (a2 != 0) {
                i2 = a2;
            }
        } else if (str.equals("report_via")) {
            int a3 = e.a(d.a(), (String) null).a("Agent_ReportBatchCount");
            if (a3 != 0) {
                i2 = a3;
            }
        } else {
            i2 = 0;
        }
        f.b("openSDK_LOG.ReportManager", "-->availableCount, report: " + str + " | dataSize: " + i + " | maxcount: " + i2);
        if (i >= i2) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public int a(int i) {
        if (i == 0) {
            int a2 = e.a(d.a(), (String) null).a("Common_CGIReportFrequencySuccess");
            if (a2 == 0) {
                return 10;
            }
            return a2;
        }
        int a3 = e.a(d.a(), (String) null).a("Common_CGIReportFrequencyFailed");
        if (a3 == 0) {
            return 100;
        }
        return a3;
    }

    /* access modifiers changed from: protected */
    public Bundle c() {
        if (this.c.size() == 0) {
            return null;
        }
        b bVar = (b) this.c.get(0);
        if (bVar == null) {
            f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
            return null;
        }
        String str = (String) bVar.a.get("appid");
        List a2 = f.a().a("report_cgi");
        if (a2 != null) {
            this.c.addAll(a2);
        }
        f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
        if (this.c.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString("appid", str);
            bundle.putString("releaseversion", Constants.SDK_VERSION_REPORT);
            bundle.putString("device", Build.DEVICE);
            bundle.putString("qua", Constants.SDK_QUA);
            bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
            for (int i = 0; i < this.c.size(); i++) {
                b bVar2 = (b) this.c.get(i);
                bundle.putString(i + "_1", (String) bVar2.a.get("apn"));
                bundle.putString(i + "_2", (String) bVar2.a.get("frequency"));
                bundle.putString(i + "_3", (String) bVar2.a.get("commandid"));
                bundle.putString(i + "_4", (String) bVar2.a.get("resultCode"));
                bundle.putString(i + "_5", (String) bVar2.a.get("timeCost"));
                bundle.putString(i + "_6", (String) bVar2.a.get("reqSize"));
                bundle.putString(i + "_7", (String) bVar2.a.get("rspSize"));
                bundle.putString(i + "_8", (String) bVar2.a.get("detail"));
                bundle.putString(i + "_9", (String) bVar2.a.get("uin"));
                bundle.putString(i + "_10", c.e(d.a()) + "&" + ((String) bVar2.a.get("deviceInfo")));
            }
            f.a("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + bundle.toString());
            return bundle;
        } catch (Exception e2) {
            f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", e2);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public Bundle d() {
        List a2 = f.a().a("report_via");
        if (a2 != null) {
            this.d.addAll(a2);
        }
        f.b("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.d.size());
        if (this.d.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Serializable serializable : this.d) {
            JSONObject jSONObject = new JSONObject();
            b bVar = (b) serializable;
            for (String str : bVar.a.keySet()) {
                try {
                    String str2 = (String) bVar.a.get(str);
                    if (str2 == null) {
                        str2 = "";
                    }
                    jSONObject.put(str, str2);
                } catch (JSONException e2) {
                    f.b("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e2);
                }
            }
            jSONArray.put(jSONObject);
        }
        f.a("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + jSONArray.toString());
        Bundle bundle = new Bundle();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(Const.PARAM_DATA, jSONArray);
            bundle.putString(Const.PARAM_DATA, jSONObject2.toString());
            return bundle;
        } catch (JSONException e3) {
            f.b("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e3);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        this.g.execute(new Runnable() {
            /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
                if (android.text.TextUtils.isEmpty(r15.a) == false) goto L_0x005a;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ae, code lost:
                r12 = -4;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b1, code lost:
                r2 = r10;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
                r8 = android.os.SystemClock.elapsedRealtime();
                r10 = r2;
                r2 = -7;
                r4 = 0;
                r6 = 0;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c1, code lost:
                r8 = android.os.SystemClock.elapsedRealtime();
                r6 = 0;
                r4 = 0;
                r2 = -8;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:40:0x00cc, code lost:
                r6 = 0;
                r4 = 0;
                r2 = -4;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d3, code lost:
                r18.a.d.clear();
                com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "doReportVia, NetworkUnavailableException.");
             */
            /* JADX WARNING: Code restructure failed: missing block: B:43:0x00e5, code lost:
                r10 = move-exception;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:44:0x00e6, code lost:
                r16 = r10;
                r10 = r3;
                r3 = r16;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
                r2 = java.lang.Integer.parseInt(r3.getMessage().replace(com.tencent.open.utils.HttpUtils.HttpStatusException.ERROR_INFO, ""));
             */
            /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fb, code lost:
                r13 = r10;
                r10 = r2;
                r16 = r8;
                r8 = r4;
                r4 = r16;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:48:0x0104, code lost:
                r2 = move-exception;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:49:0x0105, code lost:
                r6 = 0;
                r4 = 0;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
                r2 = com.tencent.open.utils.HttpUtils.getErrorCodeFromException(r2);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:53:0x0110, code lost:
                r6 = 0;
                r4 = 0;
                r2 = -6;
                r10 = r11;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:56:0x012b, code lost:
                r6 = move-exception;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:57:0x012c, code lost:
                r10 = r3;
                r3 = r6;
                r6 = r12;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:60:0x0061, code lost:
                continue;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:61:0x0061, code lost:
                continue;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:62:0x0061, code lost:
                continue;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:63:0x0061, code lost:
                continue;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:64:0x0061, code lost:
                continue;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
                return;
             */
            /* JADX WARNING: Failed to process nested try/catch */
            /* JADX WARNING: Removed duplicated region for block: B:27:0x0077 A[Catch:{ Exception -> 0x00a3 }] */
            /* JADX WARNING: Removed duplicated region for block: B:33:0x00b0 A[ExcHandler: ConnectTimeoutException (e org.apache.http.conn.ConnectTimeoutException), PHI: r3 r10 
  PHI: (r3v17 boolean) = (r3v6 boolean), (r3v6 boolean), (r3v6 boolean), (r3v26 boolean), (r3v26 boolean), (r3v6 boolean), (r3v6 boolean) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE]
  PHI: (r10v11 int) = (r10v2 int), (r10v2 int), (r10v2 int), (r10v16 int), (r10v16 int), (r10v2 int), (r10v2 int) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:37:0x00c0 A[Catch:{ Exception -> 0x00a3 }, ExcHandler: SocketTimeoutException (e java.net.SocketTimeoutException), PHI: r3 r10 
  PHI: (r3v16 boolean) = (r3v6 boolean), (r3v6 boolean), (r3v6 boolean), (r3v26 boolean), (r3v26 boolean), (r3v6 boolean), (r3v6 boolean) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE]
  PHI: (r10v10 int) = (r10v2 int), (r10v2 int), (r10v2 int), (r10v16 int), (r10v16 int), (r10v2 int), (r10v2 int) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:39:0x00cb A[Catch:{ Exception -> 0x00a3 }, ExcHandler: JSONException (e org.json.JSONException), PHI: r3 r10 
  PHI: (r3v15 boolean) = (r3v6 boolean), (r3v6 boolean), (r3v26 boolean), (r3v26 boolean), (r3v6 boolean) binds: [B:7:0x0038, B:8:?, B:18:0x005e, B:19:?, B:13:0x0052] A[DONT_GENERATE, DONT_INLINE]
  PHI: (r10v9 int) = (r10v2 int), (r10v2 int), (r10v16 int), (r10v16 int), (r10v2 int) binds: [B:7:0x0038, B:8:?, B:18:0x005e, B:19:?, B:13:0x0052] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:41:0x00d2 A[Catch:{ Exception -> 0x00a3 }, ExcHandler: NetworkUnavailableException (e com.tencent.open.utils.HttpUtils$NetworkUnavailableException), Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:43:0x00e5 A[ExcHandler: HttpStatusException (r10v7 'e' com.tencent.open.utils.HttpUtils$HttpStatusException A[CUSTOM_DECLARE]), Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:48:0x0104 A[ExcHandler: IOException (r2v7 'e' java.io.IOException A[CUSTOM_DECLARE]), PHI: r3 r10 
  PHI: (r3v8 boolean) = (r3v6 boolean), (r3v6 boolean), (r3v6 boolean), (r3v26 boolean), (r3v26 boolean), (r3v6 boolean), (r3v6 boolean) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE]
  PHI: (r10v4 int) = (r10v2 int), (r10v2 int), (r10v2 int), (r10v16 int), (r10v16 int), (r10v2 int), (r10v2 int) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:52:0x010f A[Catch:{ Exception -> 0x00a3 }, ExcHandler: Exception (e java.lang.Exception), PHI: r3 
  PHI: (r3v7 boolean) = (r3v6 boolean), (r3v6 boolean), (r3v6 boolean), (r3v26 boolean), (r3v26 boolean), (r3v6 boolean), (r3v6 boolean) binds: [B:7:0x0038, B:8:?, B:10:0x004c, B:18:0x005e, B:19:?, B:13:0x0052, B:11:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:54:0x0118 A[Catch:{ Exception -> 0x00a3 }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r18 = this;
                    r0 = r18
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00a3 }
                    android.os.Bundle r14 = r2.d()     // Catch:{ Exception -> 0x00a3 }
                    if (r14 != 0) goto L_0x000b
                L_0x000a:
                    return
                L_0x000b:
                    java.lang.String r2 = "openSDK_LOG.ReportManager"
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00a3 }
                    r3.<init>()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r4 = "-->doReportVia, params: "
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r4 = r14.toString()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00a3 }
                    com.tencent.open.a.f.a(r2, r3)     // Catch:{ Exception -> 0x00a3 }
                    int r11 = com.tencent.open.b.e.a()     // Catch:{ Exception -> 0x00a3 }
                    r10 = 0
                    r3 = 0
                    long r8 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00a3 }
                    r6 = 0
                    r4 = 0
                    r2 = 0
                L_0x0036:
                    int r10 = r10 + 1
                    android.content.Context r12 = com.tencent.open.utils.d.a()     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    java.lang.String r13 = "http://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report"
                    java.lang.String r15 = "POST"
                    com.tencent.open.utils.i$a r15 = com.tencent.open.utils.HttpUtils.openUrl2(r12, r13, r15, r14)     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    java.lang.String r12 = r15.a     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    org.json.JSONObject r12 = com.tencent.open.utils.i.d(r12)     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    java.lang.String r13 = "ret"
                    int r12 = r12.getInt(r13)     // Catch:{ JSONException -> 0x00ad, ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                L_0x0050:
                    if (r12 == 0) goto L_0x005a
                    java.lang.String r12 = r15.a     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    boolean r12 = android.text.TextUtils.isEmpty(r12)     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    if (r12 != 0) goto L_0x005c
                L_0x005a:
                    r3 = 1
                    r10 = r11
                L_0x005c:
                    long r12 = r15.b     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x00e5, IOException -> 0x0104, Exception -> 0x010f }
                    long r4 = r15.c     // Catch:{ ConnectTimeoutException -> 0x00b0, SocketTimeoutException -> 0x00c0, JSONException -> 0x00cb, NetworkUnavailableException -> 0x00d2, HttpStatusException -> 0x012b, IOException -> 0x0104, Exception -> 0x010f }
                    r6 = r12
                L_0x0061:
                    if (r10 < r11) goto L_0x0036
                    r10 = r2
                    r13 = r3
                    r16 = r8
                    r8 = r4
                    r4 = r16
                L_0x006a:
                    r0 = r18
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r3 = "mapp_apptrace_sdk"
                    r11 = 0
                    r12 = 0
                    r2.a(r3, r4, r6, r8, r10, r11, r12)     // Catch:{ Exception -> 0x00a3 }
                    if (r13 == 0) goto L_0x0118
                    com.tencent.open.b.f r2 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r3 = "report_via"
                    r2.b(r3)     // Catch:{ Exception -> 0x00a3 }
                L_0x0080:
                    r0 = r18
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00a3 }
                    java.util.List<java.io.Serializable> r2 = r2.d     // Catch:{ Exception -> 0x00a3 }
                    r2.clear()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r2 = "openSDK_LOG.ReportManager"
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00a3 }
                    r3.<init>()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r4 = "-->doReportVia, uploadSuccess: "
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.StringBuilder r3 = r3.append(r13)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00a3 }
                    com.tencent.open.a.f.b(r2, r3)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x000a
                L_0x00a3:
                    r2 = move-exception
                    java.lang.String r3 = "openSDK_LOG.ReportManager"
                    java.lang.String r4 = "-->doReportVia, exception in serial executor."
                    com.tencent.open.a.f.b(r3, r4, r2)
                    goto L_0x000a
                L_0x00ad:
                    r12 = move-exception
                    r12 = -4
                    goto L_0x0050
                L_0x00b0:
                    r2 = move-exception
                    r2 = r10
                    long r8 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00a3 }
                    r12 = 0
                    r6 = 0
                    r4 = -7
                    r10 = r2
                    r2 = r4
                    r4 = r6
                    r6 = r12
                    goto L_0x0061
                L_0x00c0:
                    r2 = move-exception
                    long r8 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00a3 }
                    r6 = 0
                    r4 = 0
                    r2 = -8
                    goto L_0x0061
                L_0x00cb:
                    r2 = move-exception
                    r6 = 0
                    r4 = 0
                    r2 = -4
                    goto L_0x0061
                L_0x00d2:
                    r2 = move-exception
                    r0 = r18
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00a3 }
                    java.util.List<java.io.Serializable> r2 = r2.d     // Catch:{ Exception -> 0x00a3 }
                    r2.clear()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r2 = "openSDK_LOG.ReportManager"
                    java.lang.String r3 = "doReportVia, NetworkUnavailableException."
                    com.tencent.open.a.f.b(r2, r3)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x000a
                L_0x00e5:
                    r10 = move-exception
                    r16 = r10
                    r10 = r3
                    r3 = r16
                L_0x00eb:
                    java.lang.String r3 = r3.getMessage()     // Catch:{ Exception -> 0x0129 }
                    java.lang.String r11 = "http status code error:"
                    java.lang.String r12 = ""
                    java.lang.String r3 = r3.replace(r11, r12)     // Catch:{ Exception -> 0x0129 }
                    int r2 = java.lang.Integer.parseInt(r3)     // Catch:{ Exception -> 0x0129 }
                L_0x00fb:
                    r13 = r10
                    r10 = r2
                    r16 = r8
                    r8 = r4
                    r4 = r16
                    goto L_0x006a
                L_0x0104:
                    r2 = move-exception
                    r6 = 0
                    r4 = 0
                    int r2 = com.tencent.open.utils.HttpUtils.getErrorCodeFromException(r2)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x0061
                L_0x010f:
                    r2 = move-exception
                    r6 = 0
                    r4 = 0
                    r2 = -6
                    r10 = r11
                    goto L_0x0061
                L_0x0118:
                    com.tencent.open.b.f r2 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r3 = "report_via"
                    r0 = r18
                    com.tencent.open.b.g r4 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00a3 }
                    java.util.List<java.io.Serializable> r4 = r4.d     // Catch:{ Exception -> 0x00a3 }
                    r2.a(r3, r4)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x0080
                L_0x0129:
                    r3 = move-exception
                    goto L_0x00fb
                L_0x012b:
                    r6 = move-exception
                    r10 = r3
                    r3 = r6
                    r6 = r12
                    goto L_0x00eb
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass5.run():void");
            }
        });
    }

    public void a(String str, String str2, Bundle bundle, boolean z) {
        final Bundle bundle2 = bundle;
        final String str3 = str;
        final boolean z2 = z;
        final String str4 = str2;
        h.a(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:22:0x00ac  */
            /* JADX WARNING: Removed duplicated region for block: B:47:0x0114 A[Catch:{ Exception -> 0x00b5 }] */
            /* JADX WARNING: Removed duplicated region for block: B:57:0x0101 A[SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r10 = this;
                    r2 = 1
                    r0 = 0
                    android.os.Bundle r1 = r2     // Catch:{ Exception -> 0x00b5 }
                    if (r1 != 0) goto L_0x000e
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r1 = "-->httpRequest, params is null!"
                    com.tencent.open.a.f.e(r0, r1)     // Catch:{ Exception -> 0x00b5 }
                L_0x000d:
                    return
                L_0x000e:
                    int r1 = com.tencent.open.b.e.a()     // Catch:{ Exception -> 0x00b5 }
                    if (r1 != 0) goto L_0x00bf
                    r1 = 3
                    r4 = r1
                L_0x0016:
                    java.lang.String r1 = "openSDK_LOG.ReportManager"
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00b5 }
                    r3.<init>()     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r5 = "-->httpRequest, retryCount: "
                    java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ Exception -> 0x00b5 }
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00b5 }
                    com.tencent.open.a.f.b(r1, r3)     // Catch:{ Exception -> 0x00b5 }
                    android.content.Context r1 = com.tencent.open.utils.d.a()     // Catch:{ Exception -> 0x00b5 }
                    r3 = 0
                    java.lang.String r5 = r3     // Catch:{ Exception -> 0x00b5 }
                    org.apache.http.client.HttpClient r5 = com.tencent.open.utils.HttpUtils.getHttpClient(r1, r3, r5)     // Catch:{ Exception -> 0x00b5 }
                    android.os.Bundle r1 = r2     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r1 = com.tencent.open.utils.HttpUtils.encodeUrl(r1)     // Catch:{ Exception -> 0x00b5 }
                    boolean r3 = r4     // Catch:{ Exception -> 0x00b5 }
                    if (r3 == 0) goto L_0x0126
                    java.lang.String r1 = java.net.URLEncoder.encode(r1)     // Catch:{ Exception -> 0x00b5 }
                    r3 = r1
                L_0x0048:
                    java.lang.String r1 = r5     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r1 = r1.toUpperCase()     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r6 = "GET"
                    boolean r1 = r1.equals(r6)     // Catch:{ Exception -> 0x00b5 }
                    if (r1 == 0) goto L_0x00c2
                    java.lang.StringBuffer r6 = new java.lang.StringBuffer     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r1 = r3     // Catch:{ Exception -> 0x00b5 }
                    r6.<init>(r1)     // Catch:{ Exception -> 0x00b5 }
                    r6.append(r3)     // Catch:{ Exception -> 0x00b5 }
                    org.apache.http.client.methods.HttpGet r1 = new org.apache.http.client.methods.HttpGet     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r3 = r6.toString()     // Catch:{ Exception -> 0x00b5 }
                    r1.<init>(r3)     // Catch:{ Exception -> 0x00b5 }
                    r3 = r1
                L_0x006a:
                    java.lang.String r1 = "Accept-Encoding"
                    java.lang.String r6 = "gzip"
                    r3.addHeader(r1, r6)     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r1 = "Content-Type"
                    java.lang.String r6 = "application/x-www-form-urlencoded"
                    r3.addHeader(r1, r6)     // Catch:{ Exception -> 0x00b5 }
                    r1 = r0
                L_0x0079:
                    int r1 = r1 + 1
                    org.apache.http.HttpResponse r6 = r5.execute(r3)     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    org.apache.http.StatusLine r6 = r6.getStatusLine()     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    int r6 = r6.getStatusCode()     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    java.lang.String r7 = "openSDK_LOG.ReportManager"
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    r8.<init>()     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    java.lang.String r9 = "-->httpRequest, statusCode: "
                    java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    java.lang.StringBuilder r8 = r8.append(r6)     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    java.lang.String r8 = r8.toString()     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    com.tencent.open.a.f.b(r7, r8)     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                    r7 = 200(0xc8, float:2.8E-43)
                    if (r6 == r7) goto L_0x00ee
                    java.lang.String r6 = "openSDK_LOG.ReportManager"
                    java.lang.String r7 = "-->ReportCenter httpRequest : HttpStatuscode != 200"
                    com.tencent.open.a.f.b(r6, r7)     // Catch:{ ConnectTimeoutException -> 0x00f7, SocketTimeoutException -> 0x0102, Exception -> 0x010b }
                L_0x00aa:
                    if (r0 != r2) goto L_0x0114
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r1 = "-->ReportCenter httpRequest Thread request success"
                    com.tencent.open.a.f.b(r0, r1)     // Catch:{ Exception -> 0x00b5 }
                    goto L_0x000d
                L_0x00b5:
                    r0 = move-exception
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r1 = "-->httpRequest, exception in serial executor."
                    com.tencent.open.a.f.b(r0, r1)
                    goto L_0x000d
                L_0x00bf:
                    r4 = r1
                    goto L_0x0016
                L_0x00c2:
                    java.lang.String r1 = r5     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r1 = r1.toUpperCase()     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r6 = "POST"
                    boolean r1 = r1.equals(r6)     // Catch:{ Exception -> 0x00b5 }
                    if (r1 == 0) goto L_0x00e5
                    org.apache.http.client.methods.HttpPost r1 = new org.apache.http.client.methods.HttpPost     // Catch:{ Exception -> 0x00b5 }
                    java.lang.String r6 = r3     // Catch:{ Exception -> 0x00b5 }
                    r1.<init>(r6)     // Catch:{ Exception -> 0x00b5 }
                    byte[] r3 = com.tencent.open.utils.i.i(r3)     // Catch:{ Exception -> 0x00b5 }
                    org.apache.http.entity.ByteArrayEntity r6 = new org.apache.http.entity.ByteArrayEntity     // Catch:{ Exception -> 0x00b5 }
                    r6.<init>(r3)     // Catch:{ Exception -> 0x00b5 }
                    r1.setEntity(r6)     // Catch:{ Exception -> 0x00b5 }
                    r3 = r1
                    goto L_0x006a
                L_0x00e5:
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r1 = "-->httpRequest unkonw request method return."
                    com.tencent.open.a.f.e(r0, r1)     // Catch:{ Exception -> 0x00b5 }
                    goto L_0x000d
                L_0x00ee:
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r6 = "-->ReportCenter httpRequest Thread success"
                    com.tencent.open.a.f.b(r0, r6)     // Catch:{ ConnectTimeoutException -> 0x0123, SocketTimeoutException -> 0x0120, Exception -> 0x011d }
                    r0 = r2
                    goto L_0x00aa
                L_0x00f7:
                    r6 = move-exception
                L_0x00f8:
                    java.lang.String r6 = "openSDK_LOG.ReportManager"
                    java.lang.String r7 = "-->ReportCenter httpRequest ConnectTimeoutException"
                    com.tencent.open.a.f.b(r6, r7)     // Catch:{ Exception -> 0x00b5 }
                L_0x00ff:
                    if (r1 < r4) goto L_0x0079
                    goto L_0x00aa
                L_0x0102:
                    r6 = move-exception
                L_0x0103:
                    java.lang.String r6 = "openSDK_LOG.ReportManager"
                    java.lang.String r7 = "-->ReportCenter httpRequest SocketTimeoutException"
                    com.tencent.open.a.f.b(r6, r7)     // Catch:{ Exception -> 0x00b5 }
                    goto L_0x00ff
                L_0x010b:
                    r1 = move-exception
                L_0x010c:
                    java.lang.String r1 = "openSDK_LOG.ReportManager"
                    java.lang.String r3 = "-->ReportCenter httpRequest Exception"
                    com.tencent.open.a.f.b(r1, r3)     // Catch:{ Exception -> 0x00b5 }
                    goto L_0x00aa
                L_0x0114:
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    java.lang.String r1 = "-->ReportCenter httpRequest Thread request failed"
                    com.tencent.open.a.f.b(r0, r1)     // Catch:{ Exception -> 0x00b5 }
                    goto L_0x000d
                L_0x011d:
                    r0 = move-exception
                    r0 = r2
                    goto L_0x010c
                L_0x0120:
                    r0 = move-exception
                    r0 = r2
                    goto L_0x0103
                L_0x0123:
                    r0 = move-exception
                    r0 = r2
                    goto L_0x00f8
                L_0x0126:
                    r3 = r1
                    goto L_0x0048
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass6.run():void");
            }
        });
    }
}
