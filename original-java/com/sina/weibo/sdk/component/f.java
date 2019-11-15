package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Const;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.MusicObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.VideoObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.utils.d;
import com.sina.weibo.sdk.utils.i;
import com.tencent.open.SocialConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ShareRequestParam */
public class f extends d {
    private b e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private com.sina.weibo.sdk.api.share.b k;
    private String l;
    private byte[] m;

    /* compiled from: ShareRequestParam */
    public static class a {
        private int a = -2;
        private String b;

        private a() {
        }

        public int a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            a aVar = new a();
            try {
                JSONObject jSONObject = new JSONObject(str);
                aVar.a = jSONObject.optInt("code", -2);
                aVar.b = jSONObject.optString(Const.PARAM_DATA, "");
                return aVar;
            } catch (JSONException e) {
                return aVar;
            }
        }
    }

    public f(Context context) {
        super(context);
        this.c = BrowserLauncher.SHARE;
    }

    /* access modifiers changed from: protected */
    public void a(Bundle bundle) {
        this.i = bundle.getString(SocialConstants.PARAM_SOURCE);
        this.g = bundle.getString("packagename");
        this.j = bundle.getString("key_hash");
        this.h = bundle.getString("access_token");
        this.f = bundle.getString("key_listener");
        if (!TextUtils.isEmpty(this.f)) {
            this.e = h.a(this.a).a(this.f);
        }
        d(bundle);
        this.b = c("");
    }

    private void d(Bundle bundle) {
        com.sina.weibo.sdk.api.b bVar = new com.sina.weibo.sdk.api.b();
        bVar.b(bundle);
        StringBuilder sb = new StringBuilder();
        if (bVar.a instanceof TextObject) {
            sb.append(bVar.a.g);
        }
        if (bVar.b instanceof ImageObject) {
            ImageObject imageObject = bVar.b;
            a(imageObject.h, imageObject.g);
        }
        if (bVar.c instanceof TextObject) {
            sb.append(((TextObject) bVar.c).g);
        }
        if (bVar.c instanceof ImageObject) {
            ImageObject imageObject2 = (ImageObject) bVar.c;
            a(imageObject2.h, imageObject2.g);
        }
        if (bVar.c instanceof WebpageObject) {
            sb.append(Token.SEPARATOR).append(((WebpageObject) bVar.c).a);
        }
        if (bVar.c instanceof MusicObject) {
            sb.append(Token.SEPARATOR).append(((MusicObject) bVar.c).a);
        }
        if (bVar.c instanceof VideoObject) {
            sb.append(Token.SEPARATOR).append(((VideoObject) bVar.c).a);
        }
        if (bVar.c instanceof VoiceObject) {
            sb.append(Token.SEPARATOR).append(((VoiceObject) bVar.c).a);
        }
        this.l = sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0041 A[SYNTHETIC, Splitter:B:21:0x0041] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0053 A[SYNTHETIC, Splitter:B:29:0x0053] */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.String r8, byte[] r9) {
        /*
            r7 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r8)     // Catch:{ SecurityException -> 0x0057 }
            if (r0 != 0) goto L_0x0044
            java.io.File r2 = new java.io.File     // Catch:{ SecurityException -> 0x0057 }
            r2.<init>(r8)     // Catch:{ SecurityException -> 0x0057 }
            boolean r0 = r2.exists()     // Catch:{ SecurityException -> 0x0057 }
            if (r0 == 0) goto L_0x0044
            boolean r0 = r2.canRead()     // Catch:{ SecurityException -> 0x0057 }
            if (r0 == 0) goto L_0x0044
            long r0 = r2.length()     // Catch:{ SecurityException -> 0x0057 }
            r4 = 0
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x0044
            long r0 = r2.length()     // Catch:{ SecurityException -> 0x0057 }
            int r0 = (int) r0     // Catch:{ SecurityException -> 0x0057 }
            byte[] r3 = new byte[r0]     // Catch:{ SecurityException -> 0x0057 }
            r1 = 0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch:{ IOException -> 0x003d, all -> 0x0050 }
            r0.<init>(r2)     // Catch:{ IOException -> 0x003d, all -> 0x0050 }
            r0.read(r3)     // Catch:{ IOException -> 0x0064, all -> 0x005f }
            byte[] r1 = com.sina.weibo.sdk.utils.b.b(r3)     // Catch:{ IOException -> 0x0064, all -> 0x005f }
            r7.m = r1     // Catch:{ IOException -> 0x0064, all -> 0x005f }
            if (r0 == 0) goto L_0x003c
            r0.close()     // Catch:{ Exception -> 0x0059 }
        L_0x003c:
            return
        L_0x003d:
            r0 = move-exception
            r0 = r1
        L_0x003f:
            if (r0 == 0) goto L_0x0044
            r0.close()     // Catch:{ Exception -> 0x005b }
        L_0x0044:
            if (r9 == 0) goto L_0x003c
            int r0 = r9.length
            if (r0 <= 0) goto L_0x003c
            byte[] r0 = com.sina.weibo.sdk.utils.b.b(r9)
            r7.m = r0
            goto L_0x003c
        L_0x0050:
            r0 = move-exception
        L_0x0051:
            if (r1 == 0) goto L_0x0056
            r1.close()     // Catch:{ Exception -> 0x005d }
        L_0x0056:
            throw r0     // Catch:{ SecurityException -> 0x0057 }
        L_0x0057:
            r0 = move-exception
            goto L_0x0044
        L_0x0059:
            r0 = move-exception
            goto L_0x003c
        L_0x005b:
            r0 = move-exception
            goto L_0x0044
        L_0x005d:
            r1 = move-exception
            goto L_0x0056
        L_0x005f:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0051
        L_0x0064:
            r1 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.component.f.a(java.lang.String, byte[]):void");
    }

    public void b(Bundle bundle) {
        if (this.k != null) {
            this.k.a(bundle);
        }
        if (!TextUtils.isEmpty(this.g)) {
            this.j = d.a(i.a(this.a, this.g));
        }
        bundle.putString("access_token", this.h);
        bundle.putString(SocialConstants.PARAM_SOURCE, this.i);
        bundle.putString("packagename", this.g);
        bundle.putString("key_hash", this.j);
        bundle.putString("_weibo_appPackage", this.g);
        bundle.putString("_weibo_appKey", this.i);
        bundle.putInt("_weibo_flag", 538116905);
        bundle.putString("_weibo_sign", this.j);
        if (this.e != null) {
            h a2 = h.a(this.a);
            this.f = a2.a();
            a2.a(this.f, this.e);
            bundle.putString("key_listener", this.f);
        }
    }

    public void a(Activity activity, int i2) {
        if (i2 == 3) {
            a(activity);
            WeiboSdkBrowser.a(activity, this.f, (String) null);
        }
    }

    public boolean a() {
        if (this.m == null || this.m.length <= 0) {
            return false;
        }
        return true;
    }

    public com.sina.weibo.sdk.net.f a(com.sina.weibo.sdk.net.f fVar) {
        if (a()) {
            fVar.a(SocialConstants.PARAM_IMG_URL, new String(this.m));
        }
        return fVar;
    }

    public String c(String str) {
        Builder buildUpon = Uri.parse("http://service.weibo.com/share/mobilesdk.php").buildUpon();
        buildUpon.appendQueryParameter("title", this.l);
        buildUpon.appendQueryParameter("version", "0031405000");
        if (!TextUtils.isEmpty(this.i)) {
            buildUpon.appendQueryParameter(SocialConstants.PARAM_SOURCE, this.i);
        }
        if (!TextUtils.isEmpty(this.h)) {
            buildUpon.appendQueryParameter("access_token", this.h);
        }
        String b = i.b(this.a, this.i);
        if (!TextUtils.isEmpty(b)) {
            buildUpon.appendQueryParameter("aid", b);
        }
        if (!TextUtils.isEmpty(this.g)) {
            buildUpon.appendQueryParameter("packagename", this.g);
        }
        if (!TextUtils.isEmpty(this.j)) {
            buildUpon.appendQueryParameter("key_hash", this.j);
        }
        if (!TextUtils.isEmpty(str)) {
            buildUpon.appendQueryParameter("picinfo", str);
        }
        return buildUpon.build().toString();
    }

    private void a(Activity activity, int i2, String str) {
        Bundle extras = activity.getIntent().getExtras();
        if (extras != null) {
            Intent intent = new Intent("com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY");
            intent.setFlags(131072);
            intent.setPackage(extras.getString("_weibo_appPackage"));
            intent.putExtras(extras);
            intent.putExtra("_weibo_appPackage", activity.getPackageName());
            intent.putExtra("_weibo_resp_errcode", i2);
            intent.putExtra("_weibo_resp_errstr", str);
            try {
                activity.startActivityForResult(intent, 765);
            } catch (ActivityNotFoundException e2) {
            }
        }
    }

    public void a(Activity activity) {
        a(activity, 1, "send cancel!!!");
    }

    public void b(Activity activity) {
        a(activity, 0, "send ok!!!");
    }

    public void a(Activity activity, String str) {
        a(activity, 2, str);
    }

    public String b() {
        return this.i;
    }

    public b c() {
        return this.e;
    }

    public String h() {
        return this.f;
    }
}
