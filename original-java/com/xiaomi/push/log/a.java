package com.xiaomi.push.log;

import android.annotation.SuppressLint;
import android.content.Context;
import com.mi.milinkforgame.sdk.util.FileUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class a {
    private static String b = "/MiPushLog";
    @SuppressLint({"SimpleDateFormat"})
    private final SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private String c;
    private String d;
    private boolean e;
    private int f;
    private int g = 2097152;
    private ArrayList<File> h = new ArrayList<>();

    a() {
    }

    private void a(BufferedReader bufferedReader, BufferedWriter bufferedWriter, Pattern pattern) {
        int i;
        boolean z;
        char[] cArr = new char[4096];
        int read = bufferedReader.read(cArr);
        boolean z2 = false;
        while (read != -1 && !z2) {
            String str = new String(cArr, 0, read);
            Matcher matcher = pattern.matcher(str);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= read || !matcher.find(i2)) {
                    i = read;
                    z = z2;
                } else {
                    i = matcher.start();
                    String substring = str.substring(i, this.c.length() + i);
                    if (this.e) {
                        if (substring.compareTo(this.d) > 0) {
                            z = true;
                            break;
                        }
                    } else if (substring.compareTo(this.c) >= 0) {
                        this.e = true;
                        i3 = i;
                    }
                    int indexOf = str.indexOf(10, i);
                    i2 = indexOf != -1 ? i + indexOf : i + this.c.length();
                }
            }
            i = read;
            z = z2;
            if (this.e) {
                int i4 = i - i3;
                this.f += i4;
                if (z) {
                    bufferedWriter.write(cArr, i3, i4);
                    return;
                }
                bufferedWriter.write(cArr, i3, i4);
                if (this.f > this.g) {
                    return;
                }
            }
            z2 = z;
            read = bufferedReader.read(cArr);
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x00a9=Splitter:B:15:0x00a9, B:20:0x00cc=Splitter:B:20:0x00cc} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(java.io.File r9) {
        /*
            r8 = this;
            r2 = 0
            java.lang.String r0 = "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"
            java.lang.String r0 = "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r0)
            java.io.BufferedWriter r1 = new java.io.BufferedWriter     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            r3.<init>(r9)     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            r0.<init>(r3)     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            r1.<init>(r0)     // Catch:{ FileNotFoundException -> 0x00a7, IOException -> 0x00ca, all -> 0x00ed }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r0.<init>()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "model :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r5 = android.os.Build.MODEL     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "; os :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r5 = android.os.Build.VERSION.INCREMENTAL     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "; uid :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r5 = com.xiaomi.push.service.av.e()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "; lng :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.util.Locale r5 = java.util.Locale.getDefault()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r5 = r5.toString()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "; sdk :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r5 = 27
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "; andver :"
            java.lang.StringBuilder r3 = r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r3 = "\n"
            r0.append(r3)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.lang.String r0 = r0.toString()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r1.write(r0)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r0 = 0
            r8.f = r0     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.util.ArrayList<java.io.File> r0 = r8.h     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            java.util.Iterator r5 = r0.iterator()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3 = r2
        L_0x007d:
            boolean r0 = r5.hasNext()     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            if (r0 == 0) goto L_0x00a0
            java.lang.Object r0 = r5.next()     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            java.io.File r0 = (java.io.File) r0     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            r7.<init>(r0)     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            r6.<init>(r7)     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            r2.<init>(r6)     // Catch:{ FileNotFoundException -> 0x0102, IOException -> 0x00fd, all -> 0x00f8 }
            r8.a(r2, r1, r4)     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r2.close()     // Catch:{ FileNotFoundException -> 0x0100, IOException -> 0x00fb }
            r3 = r2
            goto L_0x007d
        L_0x00a0:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            com.xiaomi.channel.commonutils.file.a.a(r3)
        L_0x00a6:
            return
        L_0x00a7:
            r0 = move-exception
            r1 = r2
        L_0x00a9:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00f6 }
            r3.<init>()     // Catch:{ all -> 0x00f6 }
            java.lang.String r4 = "LOG: filter error = "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00f6 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00f6 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x00f6 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00f6 }
            com.xiaomi.channel.commonutils.logger.b.c(r0)     // Catch:{ all -> 0x00f6 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            com.xiaomi.channel.commonutils.file.a.a(r2)
            goto L_0x00a6
        L_0x00ca:
            r0 = move-exception
            r1 = r2
        L_0x00cc:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00f6 }
            r3.<init>()     // Catch:{ all -> 0x00f6 }
            java.lang.String r4 = "LOG: filter error = "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00f6 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00f6 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x00f6 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00f6 }
            com.xiaomi.channel.commonutils.logger.b.c(r0)     // Catch:{ all -> 0x00f6 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            com.xiaomi.channel.commonutils.file.a.a(r2)
            goto L_0x00a6
        L_0x00ed:
            r0 = move-exception
            r1 = r2
        L_0x00ef:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            com.xiaomi.channel.commonutils.file.a.a(r2)
            throw r0
        L_0x00f6:
            r0 = move-exception
            goto L_0x00ef
        L_0x00f8:
            r0 = move-exception
            r2 = r3
            goto L_0x00ef
        L_0x00fb:
            r0 = move-exception
            goto L_0x00cc
        L_0x00fd:
            r0 = move-exception
            r2 = r3
            goto L_0x00cc
        L_0x0100:
            r0 = move-exception
            goto L_0x00a9
        L_0x0102:
            r0 = move-exception
            r2 = r3
            goto L_0x00a9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.log.a.b(java.io.File):void");
    }

    /* access modifiers changed from: 0000 */
    public a a(File file) {
        if (file.exists()) {
            this.h.add(file);
        }
        return this;
    }

    /* access modifiers changed from: 0000 */
    public a a(Date date, Date date2) {
        if (date.after(date2)) {
            this.c = this.a.format(date2);
            this.d = this.a.format(date);
        } else {
            this.c = this.a.format(date);
            this.d = this.a.format(date2);
        }
        return this;
    }

    /* access modifiers changed from: 0000 */
    public File a(Context context, Date date, Date date2, File file) {
        File file2;
        if ("com.xiaomi.xmsf".equalsIgnoreCase(context.getPackageName())) {
            file2 = context.getFilesDir();
            a(new File(file2, "xmsf.log.1"));
            a(new File(file2, "xmsf.log"));
        } else {
            file2 = new File(context.getExternalFilesDir(null) + b);
            a(new File(file2, "log0.txt"));
            a(new File(file2, "log1.txt"));
        }
        if (!file2.isDirectory()) {
            return null;
        }
        File file3 = new File(file, date.getTime() + "-" + date2.getTime() + FileUtils.ZIP_FILE_EXT);
        if (file3.exists()) {
            return null;
        }
        a(date, date2);
        long currentTimeMillis = System.currentTimeMillis();
        File file4 = new File(file, "log.txt");
        b(file4);
        b.c("LOG: filter cost = " + (System.currentTimeMillis() - currentTimeMillis));
        if (file4.exists()) {
            long currentTimeMillis2 = System.currentTimeMillis();
            com.xiaomi.channel.commonutils.file.a.a(file3, file4);
            b.c("LOG: zip cost = " + (System.currentTimeMillis() - currentTimeMillis2));
            file4.delete();
            if (file3.exists()) {
                return file3;
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void a(int i) {
        if (i != 0) {
            this.g = i;
        }
    }
}
