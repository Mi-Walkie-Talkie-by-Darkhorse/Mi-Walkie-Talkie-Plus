package com.xiaomi.push;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.bh;
import com.xiaomi.push.service.bs;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes2.dex */
class dd {

    /* renamed from: a  reason: collision with root package name */
    private static String f8833a = "/MiPushLog";

    /* renamed from: a  reason: collision with other field name */
    private int f191a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f194a;

    /* renamed from: b  reason: collision with other field name */
    private String f195b;

    /* renamed from: c  reason: collision with root package name */
    private String f8835c;
    @SuppressLint({"SimpleDateFormat"})

    /* renamed from: a  reason: collision with other field name */
    private final SimpleDateFormat f192a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: b  reason: collision with root package name */
    private int f8834b = PKIFailureInfo.badSenderNonce;

    /* renamed from: a  reason: collision with other field name */
    private ArrayList<File> f193a = new ArrayList<>();

    private void a(BufferedReader bufferedReader, BufferedWriter bufferedWriter, Pattern pattern) {
        char[] cArr = new char[4096];
        int read = bufferedReader.read(cArr);
        boolean z = false;
        while (read != -1 && !z) {
            String str = new String(cArr, 0, read);
            Matcher matcher = pattern.matcher(str);
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= read || !matcher.find(i)) {
                    break;
                }
                int start = matcher.start();
                String substring = str.substring(start, this.f195b.length() + start);
                if (this.f194a) {
                    if (substring.compareTo(this.f8835c) > 0) {
                        read = start;
                        z = true;
                        break;
                    }
                } else if (substring.compareTo(this.f195b) >= 0) {
                    this.f194a = true;
                    i2 = start;
                }
                int indexOf = str.indexOf(10, start);
                if (indexOf == -1) {
                    indexOf = this.f195b.length();
                }
                i = start + indexOf;
            }
            if (this.f194a) {
                int i3 = read - i2;
                this.f191a += i3;
                bufferedWriter.write(cArr, i2, i3);
                if (z || this.f191a > this.f8834b) {
                    return;
                }
            }
            read = bufferedReader.read(cArr);
        }
    }

    private void a(File file) {
        Throwable th;
        String str;
        FileNotFoundException e;
        IOException e2;
        Pattern compile = Pattern.compile("\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}");
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
                try {
                    bufferedWriter.write("model :" + Build.MODEL + "; os :" + Build.VERSION.INCREMENTAL + "; uid :" + bs.m625a() + "; lng :" + Locale.getDefault().toString() + "; sdk :47; andver :" + Build.VERSION.SDK_INT + "\n");
                    this.f191a = 0;
                    Iterator<File> it = this.f193a.iterator();
                    while (it.hasNext()) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(it.next())));
                        try {
                            a(bufferedReader, bufferedWriter, compile);
                            bufferedReader.close();
                            bufferedReader = bufferedReader;
                        } catch (FileNotFoundException e3) {
                            e = e3;
                            bufferedReader = bufferedWriter;
                            str = "LOG: filter error = " + e.getMessage();
                            b.c(str);
                            aa.a(bufferedReader);
                            aa.a(bufferedReader);
                            return;
                        } catch (IOException e4) {
                            e2 = e4;
                            bufferedReader = bufferedWriter;
                            str = "LOG: filter error = " + e2.getMessage();
                            b.c(str);
                            aa.a(bufferedReader);
                            aa.a(bufferedReader);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedWriter;
                            aa.a(bufferedReader);
                            aa.a(bufferedReader);
                            throw th;
                        }
                    }
                    bufferedWriter.write(cu.a().c());
                    aa.a(bufferedWriter);
                    aa.a(bufferedReader);
                } catch (FileNotFoundException e5) {
                    e = e5;
                } catch (IOException e6) {
                    e2 = e6;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            bufferedReader = null;
        } catch (IOException e8) {
            e2 = e8;
            bufferedReader = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    dd m160a(File file) {
        if (file.exists()) {
            this.f193a.add(file);
        }
        return this;
    }

    dd a(Date date, Date date2) {
        String str;
        if (date.after(date2)) {
            this.f195b = this.f192a.format(date2);
            str = this.f192a.format(date);
        } else {
            this.f195b = this.f192a.format(date);
            str = this.f192a.format(date2);
        }
        this.f8835c = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File a(Context context, Date date, Date date2, File file) {
        File file2;
        File file3;
        if ("com.xiaomi.xmsf".equalsIgnoreCase(context.getPackageName())) {
            file3 = new File(context.getExternalFilesDir(null), bh.O);
            if (!file3.exists()) {
                file3 = new File(context.getFilesDir(), bh.O);
            }
            if (!file3.exists()) {
                file3 = context.getFilesDir();
            }
            m160a(new File(file3, "xmsf.log.1"));
            file2 = new File(file3, "xmsf.log");
        } else {
            file3 = new File(context.getExternalFilesDir(null) + f8833a);
            m160a(new File(file3, "log0.txt"));
            file2 = new File(file3, "log1.txt");
        }
        m160a(file2);
        if (!file3.isDirectory()) {
            return null;
        }
        File file4 = new File(file, date.getTime() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + date2.getTime() + ".zip");
        if (file4.exists()) {
            return null;
        }
        a(date, date2);
        long currentTimeMillis = System.currentTimeMillis();
        File file5 = new File(file, "log.txt");
        a(file5);
        b.c("LOG: filter cost = " + (System.currentTimeMillis() - currentTimeMillis));
        if (file5.exists()) {
            long currentTimeMillis2 = System.currentTimeMillis();
            aa.a(file4, file5);
            b.c("LOG: zip cost = " + (System.currentTimeMillis() - currentTimeMillis2));
            file5.delete();
            if (file4.exists()) {
                return file4;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (i != 0) {
            this.f8834b = i;
        }
    }
}
