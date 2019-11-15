package com.ifengyu.intercom.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.a.b;
import com.ifengyu.intercom.b.a;
import com.ifengyu.intercom.b.n;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.bean.AdModel;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import okhttp3.Response;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public class DownloadService extends IntentService {
    private final String a = DownloadService.class.getSimpleName();

    public static void a(Context context, AdModel adModel) {
        Intent intent = new Intent(context, DownloadService.class);
        intent.setAction("com.ifengyu.intercom.service.action.DOWNLOAD_FILE");
        intent.putExtra("com.ifengyu.intercom.service.extra.AD_MODEL", adModel);
        context.startService(intent);
    }

    public DownloadService() {
        super("DownloadService");
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(@Nullable Intent intent) {
        if (intent != null) {
            if ("com.ifengyu.intercom.service.action.DOWNLOAD_FILE".equals(intent.getAction())) {
                AdModel adModel = (AdModel) intent.getSerializableExtra("com.ifengyu.intercom.service.extra.AD_MODEL");
                if (adModel != null && !TextUtils.isEmpty(adModel.imageUrl)) {
                    File a2 = n.a(getApplicationContext(), "adcache");
                    String a3 = t.a(adModel.imageUrl);
                    adModel.imagePath = new File(a2, a3).getAbsolutePath();
                    s.b(this.a, "download start...");
                    File a4 = a(adModel, a2, a3);
                    if (a4 != null) {
                        a.a(a4.getParentFile()).a("admodel", (Serializable) adModel);
                        s.b(this.a, "download success!");
                    }
                }
            }
        }
    }

    @Nullable
    private File a(AdModel adModel, File file, String str) {
        try {
            Response c = ((com.ifengyu.intercom.a.a.a) b.d().a(adModel.imageUrl)).a().c();
            if (!c.isSuccessful()) {
                s.e(this.a, "request failed , reponse's code is : " + c.code());
                return null;
            }
            String header = c.header(Names.CONTENT_MD5);
            s.b(this.a, "image md5:" + header);
            adModel.md5 = header;
            return a(c, file, str);
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0038 A[Catch:{ IOException -> 0x0060 }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003d A[SYNTHETIC, Splitter:B:19:0x003d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.io.File a(okhttp3.Response r7, java.io.File r8, java.lang.String r9) throws java.io.IOException {
        /*
            r6 = this;
            r1 = 0
            r0 = 2048(0x800, float:2.87E-42)
            byte[] r0 = new byte[r0]
            okhttp3.ResponseBody r2 = r7.body()     // Catch:{ all -> 0x006a }
            java.io.InputStream r3 = r2.byteStream()     // Catch:{ all -> 0x006a }
            boolean r2 = r8.exists()     // Catch:{ all -> 0x006d }
            if (r2 != 0) goto L_0x0016
            r8.mkdirs()     // Catch:{ all -> 0x006d }
        L_0x0016:
            java.io.File r4 = new java.io.File     // Catch:{ all -> 0x006d }
            r4.<init>(r8, r9)     // Catch:{ all -> 0x006d }
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ all -> 0x006d }
            r2.<init>(r4)     // Catch:{ all -> 0x006d }
        L_0x0020:
            int r1 = r3.read(r0)     // Catch:{ all -> 0x002c }
            r5 = -1
            if (r1 == r5) goto L_0x0041
            r5 = 0
            r2.write(r0, r5, r1)     // Catch:{ all -> 0x002c }
            goto L_0x0020
        L_0x002c:
            r0 = move-exception
            r1 = r2
            r2 = r3
        L_0x002f:
            okhttp3.ResponseBody r3 = r7.body()     // Catch:{ IOException -> 0x0060 }
            r3.close()     // Catch:{ IOException -> 0x0060 }
            if (r2 == 0) goto L_0x003b
            r2.close()     // Catch:{ IOException -> 0x0060 }
        L_0x003b:
            if (r1 == 0) goto L_0x0040
            r1.close()     // Catch:{ IOException -> 0x0065 }
        L_0x0040:
            throw r0
        L_0x0041:
            r2.flush()     // Catch:{ all -> 0x002c }
            okhttp3.ResponseBody r0 = r7.body()     // Catch:{ IOException -> 0x0056 }
            r0.close()     // Catch:{ IOException -> 0x0056 }
            if (r3 == 0) goto L_0x0050
            r3.close()     // Catch:{ IOException -> 0x0056 }
        L_0x0050:
            if (r2 == 0) goto L_0x0055
            r2.close()     // Catch:{ IOException -> 0x005b }
        L_0x0055:
            return r4
        L_0x0056:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0050
        L_0x005b:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0055
        L_0x0060:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x003b
        L_0x0065:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0040
        L_0x006a:
            r0 = move-exception
            r2 = r1
            goto L_0x002f
        L_0x006d:
            r0 = move-exception
            r2 = r3
            goto L_0x002f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.service.DownloadService.a(okhttp3.Response, java.io.File, java.lang.String):java.io.File");
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
