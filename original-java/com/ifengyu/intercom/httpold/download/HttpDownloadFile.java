package com.ifengyu.intercom.httpold.download;

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

/* renamed from: com.ifengyu.intercom.httpold.download.a */
/* loaded from: classes2.dex */
public class HttpDownloadFile {

    /* renamed from: a */
    private int f13723a;

    /* renamed from: b */
    private String f13724b;

    /* renamed from: c */
    private boolean f13725c;

    /* compiled from: HttpDownloadFile.java */
    /* renamed from: com.ifengyu.intercom.httpold.download.a$a */
    /* loaded from: classes2.dex */
    class RunnableC3854a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f13726a;

        /* renamed from: b */
        final /* synthetic */ String f13727b;

        /* renamed from: c */
        final /* synthetic */ Handler f13728c;

        RunnableC3854a(String str, String str2, Handler handler) {
            this.f13726a = str;
            this.f13727b = str2;
            this.f13728c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpDownloadFile.this.m12388c(this.f13726a, this.f13727b, this.f13728c);
        }
    }

    public HttpDownloadFile(String str) {
        this.f13724b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m12388c(String str, String str2, Handler handler) {
        handler.sendEmptyMessage(5);
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f13724b).openConnection();
                httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
                httpURLConnection.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
                httpURLConnection.connect();
                httpURLConnection.getContentLength();
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
                    if (this.f13725c) {
                        break;
                    }
                    int read = inputStream.read(bArr);
                    this.f13723a += read;
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

    /* renamed from: b */
    public void m12389b(String str, String str2, Handler handler) {
        C3855b.m12387a().execute(new RunnableC3854a(str, str2, handler));
    }
}
