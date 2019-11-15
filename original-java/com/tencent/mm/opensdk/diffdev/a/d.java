package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.Base64;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import java.io.File;
import org.json.JSONObject;

public final class d extends AsyncTask<Void, Void, a> {
    /* access modifiers changed from: private */
    public static final boolean h = (Environment.getExternalStorageState().equals("mounted") && new File(Environment.getExternalStorageDirectory().getAbsolutePath()).canWrite());
    /* access modifiers changed from: private */
    public static final String i = (Environment.getExternalStorageDirectory().getAbsolutePath() + "/tencent/MicroMsg/oauth_qrcode.png");
    private static String j;
    private String appId;
    private String k;
    private String l;
    private OAuthListener m;
    private f n;
    private String scope;
    private String signature;

    static class a {
        public OAuthErrCode o;
        public String p;
        public String q;
        public String r;
        public int s;
        public String t;
        public byte[] u;

        private a() {
        }

        public static a a(byte[] bArr) {
            a aVar = new a();
            if (bArr == null || bArr.length == 0) {
                Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, buf is null");
                aVar.o = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        int i = jSONObject.getInt("errcode");
                        if (i != 0) {
                            Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("resp errcode = %d", new Object[]{Integer.valueOf(i)}));
                            aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                            aVar.s = i;
                            aVar.t = jSONObject.optString("errmsg");
                        } else {
                            String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                            if (string == null || string.length() == 0) {
                                Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBase64 is null");
                                aVar.o = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                            } else {
                                byte[] decode = Base64.decode(string, 0);
                                if (decode == null || decode.length == 0) {
                                    Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBuf is null");
                                    aVar.o = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                                } else if (d.h) {
                                    File file = new File(d.i);
                                    file.mkdirs();
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                    if (!a(d.i, decode)) {
                                        Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("writeToFile fail, qrcodeBuf length = %d", new Object[]{Integer.valueOf(decode.length)}));
                                        aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                                    } else {
                                        aVar.o = OAuthErrCode.WechatAuth_Err_OK;
                                        aVar.r = d.i;
                                        aVar.p = jSONObject.getString("uuid");
                                        aVar.q = jSONObject.getString("appname");
                                        Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in external storage, uuid = %s, appname = %s, imgPath = %s", new Object[]{aVar.p, aVar.q, aVar.r}));
                                    }
                                } else {
                                    aVar.o = OAuthErrCode.WechatAuth_Err_OK;
                                    aVar.u = decode;
                                    aVar.p = jSONObject.getString("uuid");
                                    aVar.q = jSONObject.getString("appname");
                                    Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", new Object[]{aVar.p, aVar.q, Integer.valueOf(aVar.u.length)}));
                                }
                            }
                        }
                    } catch (Exception e) {
                        Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("parse json fail, ex = %s", new Object[]{e.getMessage()}));
                        aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                } catch (Exception e2) {
                    Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("parse fail, build String fail, ex = %s", new Object[]{e2.getMessage()}));
                    aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                }
            }
            return aVar;
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x004e A[SYNTHETIC, Splitter:B:16:0x004e] */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x0071 A[SYNTHETIC, Splitter:B:24:0x0071] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static boolean a(java.lang.String r5, byte[] r6) {
            /*
                r2 = 0
                java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0032, all -> 0x006d }
                r1.<init>(r5)     // Catch:{ Exception -> 0x0032, all -> 0x006d }
                r1.write(r6)     // Catch:{ Exception -> 0x0091 }
                r1.flush()     // Catch:{ Exception -> 0x0091 }
                r1.close()     // Catch:{ IOException -> 0x0018 }
            L_0x000f:
                java.lang.String r0 = "MicroMsg.SDK.GetQRCodeResult"
                java.lang.String r1 = "writeToFile ok!"
                com.tencent.mm.opensdk.utils.Log.d(r0, r1)
                r0 = 1
            L_0x0017:
                return r0
            L_0x0018:
                r0 = move-exception
                java.lang.String r1 = "MicroMsg.SDK.GetQRCodeResult"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "fout.close() exception:"
                r2.<init>(r3)
                java.lang.String r0 = r0.getMessage()
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r0 = r0.toString()
                com.tencent.mm.opensdk.utils.Log.e(r1, r0)
                goto L_0x000f
            L_0x0032:
                r0 = move-exception
                r1 = r2
            L_0x0034:
                java.lang.String r2 = "MicroMsg.SDK.GetQRCodeResult"
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x008f }
                java.lang.String r4 = "write to file error, exception:"
                r3.<init>(r4)     // Catch:{ all -> 0x008f }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x008f }
                java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x008f }
                java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x008f }
                com.tencent.mm.opensdk.utils.Log.w(r2, r0)     // Catch:{ all -> 0x008f }
                if (r1 == 0) goto L_0x0051
                r1.close()     // Catch:{ IOException -> 0x0053 }
            L_0x0051:
                r0 = 0
                goto L_0x0017
            L_0x0053:
                r0 = move-exception
                java.lang.String r1 = "MicroMsg.SDK.GetQRCodeResult"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "fout.close() exception:"
                r2.<init>(r3)
                java.lang.String r0 = r0.getMessage()
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r0 = r0.toString()
                com.tencent.mm.opensdk.utils.Log.e(r1, r0)
                goto L_0x0051
            L_0x006d:
                r0 = move-exception
                r1 = r2
            L_0x006f:
                if (r1 == 0) goto L_0x0074
                r1.close()     // Catch:{ IOException -> 0x0075 }
            L_0x0074:
                throw r0
            L_0x0075:
                r1 = move-exception
                java.lang.String r2 = "MicroMsg.SDK.GetQRCodeResult"
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = "fout.close() exception:"
                r3.<init>(r4)
                java.lang.String r1 = r1.getMessage()
                java.lang.StringBuilder r1 = r3.append(r1)
                java.lang.String r1 = r1.toString()
                com.tencent.mm.opensdk.utils.Log.e(r2, r1)
                goto L_0x0074
            L_0x008f:
                r0 = move-exception
                goto L_0x006f
            L_0x0091:
                r0 = move-exception
                goto L_0x0034
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.mm.opensdk.diffdev.a.d.a.a(java.lang.String, byte[]):boolean");
        }
    }

    static {
        j = null;
        j = "http://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s";
    }

    public d(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.appId = str;
        this.scope = str2;
        this.k = str3;
        this.l = str4;
        this.signature = str5;
        this.m = oAuthListener;
    }

    public final boolean a() {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        return this.n == null ? cancel(true) : this.n.cancel(true);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "external storage available = " + h);
        String format = String.format(j, new Object[]{this.appId, this.k, this.l, this.scope, this.signature});
        long currentTimeMillis = System.currentTimeMillis();
        byte[] a2 = e.a(format, -1);
        Log.d("MicroMsg.SDK.GetQRCodeTask", String.format("doInBackground, url = %s, time consumed = %d(ms)", new Object[]{format, Long.valueOf(System.currentTimeMillis() - currentTimeMillis)}));
        return a.a(a2);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        a aVar = (a) obj;
        if (aVar.o == OAuthErrCode.WechatAuth_Err_OK) {
            Log.d("MicroMsg.SDK.GetQRCodeTask", "onPostExecute, get qrcode success");
            this.m.onAuthGotQrcode(aVar.r, aVar.u);
            this.n = new f(aVar.p, this.m);
            f fVar = this.n;
            if (VERSION.SDK_INT >= 11) {
                fVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                fVar.execute(new Void[0]);
            }
        } else {
            Log.e("MicroMsg.SDK.GetQRCodeTask", String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", new Object[]{aVar.o}));
            this.m.onAuthFinish(aVar.o, null);
        }
    }
}
