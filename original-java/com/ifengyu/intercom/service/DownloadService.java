package com.ifengyu.intercom.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.g.b;
import com.ifengyu.intercom.g.c.a;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.g;
import com.ifengyu.intercom.i.r;
import com.ifengyu.intercom.i.z;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class DownloadService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private final String f5985a = DownloadService.class.getSimpleName();

    public DownloadService() {
        super("DownloadService");
    }

    public static void a(Context context, AdModel adModel) {
        Intent intent = new Intent(context, DownloadService.class);
        intent.setAction("com.ifengyu.intercom.service.action.DOWNLOAD_FILE");
        intent.putExtra("com.ifengyu.intercom.service.extra.AD_MODEL", adModel);
        context.startService(intent);
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(@Nullable Intent intent) {
        AdModel adModel;
        if (intent != null && "com.ifengyu.intercom.service.action.DOWNLOAD_FILE".equals(intent.getAction()) && (adModel = (AdModel) intent.getSerializableExtra("com.ifengyu.intercom.service.extra.AD_MODEL")) != null && !TextUtils.isEmpty(adModel.imageUrl)) {
            File a2 = r.a(getApplicationContext(), "adcache");
            String b2 = a0.b(adModel.imageUrl);
            adModel.imagePath = new File(a2, b2).getAbsolutePath();
            z.a(this.f5985a, "download start...");
            File a3 = a(adModel, a2, b2);
            if (a3 != null) {
                g.a(a3.getParentFile()).a("admodel", adModel);
                z.a(this.f5985a, "download success!");
            }
        }
    }

    @Nullable
    private File a(AdModel adModel, File file, String str) {
        try {
            a c2 = b.c();
            c2.a(adModel.imageUrl);
            Response b2 = c2.a().b();
            if (!b2.isSuccessful()) {
                String str2 = this.f5985a;
                z.b(str2, "request failed , reponse's code is : " + b2.code());
                return null;
            }
            String header = b2.header("Content-MD5");
            String str3 = this.f5985a;
            z.a(str3, "image md5:" + header);
            adModel.md5 = header;
            return a(b2, file, str);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public File a(Response response, File file, String str) throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th;
        byte[] bArr = new byte[2048];
        InputStream inputStream = null;
        try {
            InputStream byteStream = response.body().byteStream();
            try {
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, str);
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = byteStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = byteStream;
                        fileOutputStream = fileOutputStream2;
                        try {
                            response.body().close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                fileOutputStream2.flush();
                try {
                    response.body().close();
                    if (byteStream != null) {
                        byteStream.close();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return file2;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                inputStream = byteStream;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }
}
