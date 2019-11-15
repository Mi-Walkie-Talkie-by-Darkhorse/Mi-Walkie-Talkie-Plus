package com.ifengyu.intercom.network.a;

import android.os.Environment;
import android.os.Handler;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* compiled from: HttpDownloadFile */
public class b {
    private int a;
    private int b = 1;
    private String c;
    private boolean d;

    public b(String str) {
        this.c = str;
    }

    public void a(final String str, final String str2, final Handler handler) {
        e.b().execute(new Runnable() {
            public void run() {
                b.this.b(str, str2, handler);
            }
        });
    }

    /* access modifiers changed from: private */
    public void b(String str, String str2, Handler handler) {
        handler.sendEmptyMessage(5);
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.connect();
                this.b = httpURLConnection.getContentLength();
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
                    this.a += read;
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
            ThrowableExtension.printStackTrace(e);
        } catch (IOException e2) {
            handler.sendEmptyMessage(8);
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }
}
