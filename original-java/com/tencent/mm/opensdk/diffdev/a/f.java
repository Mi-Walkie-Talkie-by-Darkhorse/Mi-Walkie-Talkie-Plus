package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;

final class f extends AsyncTask<Void, Void, a> {
    private OAuthListener m;
    private String p;
    private String url;
    private int v;

    static class a {
        public OAuthErrCode o;
        public String w;
        public int x;

        a() {
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static com.tencent.mm.opensdk.diffdev.a.f.a b(byte[] r9) {
            /*
                r8 = 1
                r7 = 0
                com.tencent.mm.opensdk.diffdev.a.f$a r0 = new com.tencent.mm.opensdk.diffdev.a.f$a
                r0.<init>()
                if (r9 == 0) goto L_0x000c
                int r1 = r9.length
                if (r1 != 0) goto L_0x0018
            L_0x000c:
                java.lang.String r1 = "MicroMsg.SDK.NoopingResult"
                java.lang.String r2 = "parse fail, buf is null"
                com.tencent.mm.opensdk.utils.Log.e(r1, r2)
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_NetworkErr
                r0.o = r1
            L_0x0017:
                return r0
            L_0x0018:
                java.lang.String r1 = new java.lang.String     // Catch:{ Exception -> 0x0066 }
                java.lang.String r2 = "utf-8"
                r1.<init>(r9, r2)     // Catch:{ Exception -> 0x0066 }
                org.json.JSONObject r2 = new org.json.JSONObject     // Catch:{ Exception -> 0x004d }
                r2.<init>(r1)     // Catch:{ Exception -> 0x004d }
                java.lang.String r1 = "wx_errcode"
                int r1 = r2.getInt(r1)     // Catch:{ Exception -> 0x004d }
                r0.x = r1     // Catch:{ Exception -> 0x004d }
                java.lang.String r1 = "MicroMsg.SDK.NoopingResult"
                java.lang.String r3 = "nooping uuidStatusCode = %d"
                r4 = 1
                java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Exception -> 0x004d }
                r5 = 0
                int r6 = r0.x     // Catch:{ Exception -> 0x004d }
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ Exception -> 0x004d }
                r4[r5] = r6     // Catch:{ Exception -> 0x004d }
                java.lang.String r3 = java.lang.String.format(r3, r4)     // Catch:{ Exception -> 0x004d }
                com.tencent.mm.opensdk.utils.Log.d(r1, r3)     // Catch:{ Exception -> 0x004d }
                int r1 = r0.x     // Catch:{ Exception -> 0x004d }
                switch(r1) {
                    case 402: goto L_0x0096;
                    case 403: goto L_0x009c;
                    case 404: goto L_0x008c;
                    case 405: goto L_0x007f;
                    case 408: goto L_0x0091;
                    case 500: goto L_0x00a2;
                    default: goto L_0x0048;
                }     // Catch:{ Exception -> 0x004d }
            L_0x0048:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_NormalErr     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x004d:
                r1 = move-exception
                java.lang.String r2 = "MicroMsg.SDK.NoopingResult"
                java.lang.String r3 = "parse json fail, ex = %s"
                java.lang.Object[] r4 = new java.lang.Object[r8]
                java.lang.String r1 = r1.getMessage()
                r4[r7] = r1
                java.lang.String r1 = java.lang.String.format(r3, r4)
                com.tencent.mm.opensdk.utils.Log.e(r2, r1)
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_NormalErr
                r0.o = r1
                goto L_0x0017
            L_0x0066:
                r1 = move-exception
                java.lang.String r2 = "MicroMsg.SDK.NoopingResult"
                java.lang.String r3 = "parse fail, build String fail, ex = %s"
                java.lang.Object[] r4 = new java.lang.Object[r8]
                java.lang.String r1 = r1.getMessage()
                r4[r7] = r1
                java.lang.String r1 = java.lang.String.format(r3, r4)
                com.tencent.mm.opensdk.utils.Log.e(r2, r1)
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_NormalErr
                r0.o = r1
                goto L_0x0017
            L_0x007f:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_OK     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                java.lang.String r1 = "wx_code"
                java.lang.String r1 = r2.getString(r1)     // Catch:{ Exception -> 0x004d }
                r0.w = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x008c:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_OK     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x0091:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_OK     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x0096:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_Timeout     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x009c:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_Cancel     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            L_0x00a2:
                com.tencent.mm.opensdk.diffdev.OAuthErrCode r1 = com.tencent.mm.opensdk.diffdev.OAuthErrCode.WechatAuth_Err_NormalErr     // Catch:{ Exception -> 0x004d }
                r0.o = r1     // Catch:{ Exception -> 0x004d }
                goto L_0x0017
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.mm.opensdk.diffdev.a.f.a.b(byte[]):com.tencent.mm.opensdk.diffdev.a.f$a");
        }
    }

    public f(String str, OAuthListener oAuthListener) {
        this.p = str;
        this.m = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", new Object[]{str});
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        if (this.p == null || this.p.length() == 0) {
            Log.e("MicroMsg.SDK.NoopingTask", "run fail, uuid is null");
            a aVar = new a();
            aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
            return aVar;
        }
        while (!isCancelled()) {
            String str = this.url + (this.v == 0 ? "" : "&last=" + this.v);
            long currentTimeMillis = System.currentTimeMillis();
            byte[] a2 = e.a(str, 60000);
            long currentTimeMillis2 = System.currentTimeMillis();
            a b = a.b(a2);
            Log.d("MicroMsg.SDK.NoopingTask", String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", new Object[]{str, b.o.toString(), Integer.valueOf(b.x), Long.valueOf(currentTimeMillis2 - currentTimeMillis)}));
            if (b.o == OAuthErrCode.WechatAuth_Err_OK) {
                this.v = b.x;
                if (b.x == g.UUID_SCANED.getCode()) {
                    this.m.onQrcodeScanned();
                } else if (b.x != g.UUID_KEEP_CONNECT.getCode() && b.x == g.UUID_CONFIRM.getCode()) {
                    if (b.w != null && b.w.length() != 0) {
                        return b;
                    }
                    Log.e("MicroMsg.SDK.NoopingTask", "nooping fail, confirm with an empty code!!!");
                    b.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                    return b;
                }
            } else {
                Log.e("MicroMsg.SDK.NoopingTask", String.format("nooping fail, errCode = %s, uuidStatusCode = %d", new Object[]{b.o.toString(), Integer.valueOf(b.x)}));
                return b;
            }
        }
        Log.i("MicroMsg.SDK.NoopingTask", "IDiffDevOAuth.stopAuth / detach invoked");
        a aVar2 = new a();
        aVar2.o = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        return aVar2;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        a aVar = (a) obj;
        this.m.onAuthFinish(aVar.o, aVar.w);
    }
}
