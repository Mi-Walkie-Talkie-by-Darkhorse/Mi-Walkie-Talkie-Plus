package com.xiaomi.push;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.C6404bs;
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

/* renamed from: com.xiaomi.push.dd */
/* loaded from: classes2.dex */
class C6075dd {

    /* renamed from: a */
    private static String f21232a = "/MiPushLog";

    /* renamed from: a */
    private int f21233a;

    /* renamed from: a */
    private boolean f21236a;

    /* renamed from: b */
    private String f21238b;

    /* renamed from: c */
    private String f21239c;
    @SuppressLint({"SimpleDateFormat"})

    /* renamed from: a */
    private final SimpleDateFormat f21234a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: b */
    private int f21237b = PKIFailureInfo.badSenderNonce;

    /* renamed from: a */
    private ArrayList<File> f21235a = new ArrayList<>();

    /* renamed from: a */
    private void m3396a(BufferedReader bufferedReader, BufferedWriter bufferedWriter, Pattern pattern) {
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
                String substring = str.substring(start, this.f21238b.length() + start);
                if (this.f21236a) {
                    if (substring.compareTo(this.f21239c) > 0) {
                        read = start;
                        z = true;
                        break;
                    }
                } else if (substring.compareTo(this.f21238b) >= 0) {
                    this.f21236a = true;
                    i2 = start;
                }
                int indexOf = str.indexOf(10, start);
                if (indexOf == -1) {
                    indexOf = this.f21238b.length();
                }
                i = start + indexOf;
            }
            if (this.f21236a) {
                int i3 = read - i2;
                this.f21233a += i3;
                bufferedWriter.write(cArr, i2, i3);
                if (z || this.f21233a > this.f21237b) {
                    return;
                }
            }
            read = bufferedReader.read(cArr);
        }
    }

    /* renamed from: a */
    private void m3394a(File file) {
        BufferedReader bufferedReader;
        String str;
        Pattern compile = Pattern.compile("\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}");
        BufferedReader bufferedReader2 = null;
        try {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
                try {
                    bufferedWriter.write("model :" + Build.MODEL + "; os :" + Build.VERSION.INCREMENTAL + "; uid :" + C6404bs.m1446a() + "; lng :" + Locale.getDefault().toString() + "; sdk :47; andver :" + Build.VERSION.SDK_INT + "\n");
                    this.f21233a = 0;
                    Iterator<File> it2 = this.f21235a.iterator();
                    while (it2.hasNext()) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(it2.next())));
                        try {
                            m3396a(bufferedReader, bufferedWriter, compile);
                            bufferedReader.close();
                            bufferedReader2 = bufferedReader;
                        } catch (FileNotFoundException e) {
                            e = e;
                            bufferedReader2 = bufferedWriter;
                            str = "LOG: filter error = " + e.getMessage();
                            AbstractC5876b.m4139c(str);
                            C5968aa.m3810a(bufferedReader2);
                            C5968aa.m3810a(bufferedReader);
                            return;
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader2 = bufferedWriter;
                            str = "LOG: filter error = " + e.getMessage();
                            AbstractC5876b.m4139c(str);
                            C5968aa.m3810a(bufferedReader2);
                            C5968aa.m3810a(bufferedReader);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader2 = bufferedWriter;
                            C5968aa.m3810a(bufferedReader2);
                            C5968aa.m3810a(bufferedReader);
                            throw th;
                        }
                    }
                    bufferedWriter.write(C6062cu.m3459a().m3441c());
                    C5968aa.m3810a(bufferedWriter);
                    C5968aa.m3810a(bufferedReader2);
                } catch (FileNotFoundException e3) {
                    e = e3;
                    bufferedReader = bufferedReader2;
                } catch (IOException e4) {
                    e = e4;
                    bufferedReader = bufferedReader2;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                bufferedReader = null;
            } catch (IOException e6) {
                e = e6;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: a */
    C6075dd m3395a(File file) {
        if (file.exists()) {
            this.f21235a.add(file);
        }
        return this;
    }

    /* renamed from: a */
    C6075dd m3393a(Date date, Date date2) {
        String format;
        if (date.after(date2)) {
            this.f21238b = this.f21234a.format(date2);
            format = this.f21234a.format(date);
        } else {
            this.f21238b = this.f21234a.format(date);
            format = this.f21234a.format(date2);
        }
        this.f21239c = format;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public File m3397a(Context context, Date date, Date date2, File file) {
        File file2;
        File file3;
        if ("com.xiaomi.xmsf".equalsIgnoreCase(context.getPackageName())) {
            file2 = new File(context.getExternalFilesDir(null), AbstractC6391bh.f23074O);
            if (!file2.exists()) {
                file2 = new File(context.getFilesDir(), AbstractC6391bh.f23074O);
            }
            if (!file2.exists()) {
                file2 = context.getFilesDir();
            }
            m3395a(new File(file2, "xmsf.log.1"));
            file3 = new File(file2, "xmsf.log");
        } else {
            file2 = new File(context.getExternalFilesDir(null) + f21232a);
            m3395a(new File(file2, "log0.txt"));
            file3 = new File(file2, "log1.txt");
        }
        m3395a(file3);
        if (file2.isDirectory()) {
            File file4 = new File(file, date.getTime() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + date2.getTime() + ".zip");
            if (file4.exists()) {
                return null;
            }
            m3393a(date, date2);
            long currentTimeMillis = System.currentTimeMillis();
            File file5 = new File(file, "log.txt");
            m3394a(file5);
            AbstractC5876b.m4139c("LOG: filter cost = " + (System.currentTimeMillis() - currentTimeMillis));
            if (file5.exists()) {
                long currentTimeMillis2 = System.currentTimeMillis();
                C5968aa.m3807a(file4, file5);
                AbstractC5876b.m4139c("LOG: zip cost = " + (System.currentTimeMillis() - currentTimeMillis2));
                file5.delete();
                if (file4.exists()) {
                    return file4;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m3398a(int i) {
        if (i != 0) {
            this.f21237b = i;
        }
    }
}
