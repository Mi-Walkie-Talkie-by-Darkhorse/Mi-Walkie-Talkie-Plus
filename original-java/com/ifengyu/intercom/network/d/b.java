package com.ifengyu.intercom.network.d;

import android.os.Environment;
import android.os.Handler;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* compiled from: HttpDownloadFile.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f5819a;

    /* renamed from: b  reason: collision with root package name */
    private int f5820b = 1;

    /* renamed from: c  reason: collision with root package name */
    private String f5821c;
    private boolean d;

    /* compiled from: HttpDownloadFile.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f5822a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f5823b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Handler f5824c;

        a(String str, String str2, Handler handler) {
            this.f5822a = str;
            this.f5823b = str2;
            this.f5824c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b(this.f5822a, this.f5823b, this.f5824c);
        }
    }

    public b(String str) {
        this.f5821c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, String str2, Handler handler) {
        handler.sendEmptyMessage(5);
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f5821c).openConnection();
                httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
                httpURLConnection.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
                httpURLConnection.connect();
                this.f5820b = httpURLConnection.getContentLength();
                InputStream inputStream = httpURLConnection.getInputStream();
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdir();
                }
                File file2 = new File(str + "/" + str2);
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                while (true) {
                    if (this.d) {
                        break;
                    }
                    int read = inputStream.read(bArr);
                    this.f5819a += read;
                    handler.sendEmptyMessage(6);
                    if (read <= 1) {
                        handler.sendEmptyMessage(7);
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                inputStream.close();
            }
        } catch (MalformedURLException e) {
            handler.sendEmptyMessage(8);
            e.printStackTrace();
        } catch (IOException e2) {
            handler.sendEmptyMessage(8);
            e2.printStackTrace();
        }
    }

    public void a(String str, String str2, Handler handler) {
        e.a().execute(new a(str, str2, handler));
    }

    public int a() {
        return this.f5820b;
    }

    public int b() {
        return this.f5819a;
    }
}
