package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public class aa {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f8731a = {"jpg", "png", "bmp", "gif", "webp"};

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:20:0x0062 */
    public static String a(File file) {
        Throwable th;
        IOException e;
        InputStreamReader inputStreamReader;
        StringWriter stringWriter = new StringWriter();
        Closeable closeable = null;
        try {
            try {
                inputStreamReader = new InputStreamReader(new BufferedInputStream(new FileInputStream(file)));
                try {
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            stringWriter.write(cArr, 0, read);
                        } else {
                            String stringWriter2 = stringWriter.toString();
                            a(inputStreamReader);
                            a(stringWriter);
                            return stringWriter2;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    b.c("read file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
                    a(inputStreamReader);
                    a(stringWriter);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                a(closeable);
                a(stringWriter);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            a(closeable);
            a(stringWriter);
            throw th;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(File file, File file2) {
        Throwable th;
        IOException e;
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        try {
            try {
                zipOutputStream = new ZipOutputStream(new FileOutputStream(file, false));
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                a(zipOutputStream, file2, null, null);
                a(zipOutputStream);
            } catch (FileNotFoundException unused) {
                zipOutputStream2 = zipOutputStream;
                a(zipOutputStream2);
            } catch (IOException e2) {
                e = e2;
                zipOutputStream2 = zipOutputStream;
                b.m1a("zip file failure + " + e.getMessage());
                a(zipOutputStream2);
            } catch (Throwable th3) {
                th = th3;
                zipOutputStream2 = zipOutputStream;
                a(zipOutputStream2);
                throw th;
            }
        } catch (FileNotFoundException unused2) {
            a(zipOutputStream2);
        } catch (IOException e3) {
            e = e3;
        }
    }

    public static void a(File file, String str) {
        Throwable th;
        IOException e;
        BufferedWriter bufferedWriter;
        if (!file.exists()) {
            b.c("mkdir " + file.getAbsolutePath());
            file.getParentFile().mkdirs();
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            bufferedWriter.write(str);
            a(bufferedWriter);
        } catch (IOException e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            b.c("write file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
            a(bufferedWriter2);
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            a(bufferedWriter2);
            throw th;
        }
    }

    public static void a(ZipOutputStream zipOutputStream, File file, String str, FileFilter fileFilter) {
        IOException e;
        ZipEntry zipEntry;
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                if (file.isDirectory()) {
                    File[] listFiles = fileFilter != null ? file.listFiles(fileFilter) : file.listFiles();
                    zipOutputStream.putNextEntry(new ZipEntry(str + File.separator));
                    if (!TextUtils.isEmpty(str)) {
                        str2 = str + File.separator;
                    }
                    for (int i = 0; i < listFiles.length; i++) {
                        a(zipOutputStream, listFiles[i], str2 + listFiles[i].getName(), null);
                    }
                    File[] listFiles2 = file.listFiles(new ab());
                    if (listFiles2 != null) {
                        for (File file2 : listFiles2) {
                            a(zipOutputStream, file2, str2 + File.separator + file2.getName(), fileFilter);
                        }
                    }
                } else {
                    if (!TextUtils.isEmpty(str)) {
                        zipEntry = new ZipEntry(str);
                    } else {
                        Date date = new Date();
                        zipEntry = new ZipEntry(String.valueOf(date.getTime()) + ".txt");
                    }
                    zipOutputStream.putNextEntry(zipEntry);
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            zipOutputStream.write(bArr, 0, read);
                        }
                        fileInputStream = fileInputStream2;
                    } catch (IOException e2) {
                        e = e2;
                        fileInputStream = fileInputStream2;
                        b.d("zipFiction failed with exception:" + e.toString());
                        a(fileInputStream);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        a(fileInputStream);
                        throw th;
                    }
                }
            } catch (IOException e3) {
                e = e3;
            }
            a(fileInputStream);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m65a(File file) {
        try {
            if (file.isDirectory()) {
                return false;
            }
            if (file.exists()) {
                return true;
            }
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                return file.createNewFile();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static byte[] a(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception unused) {
            return bArr;
        }
    }

    public static void b(File file, File file2) {
        Throwable th;
        FileOutputStream fileOutputStream;
        if (!file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read >= 0) {
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                fileInputStream2.close();
                                fileOutputStream.close();
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        }
    }
}
