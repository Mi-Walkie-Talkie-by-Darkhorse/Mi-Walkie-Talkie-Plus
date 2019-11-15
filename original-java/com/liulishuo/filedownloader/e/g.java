package com.liulishuo.filedownloader.e;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.d.a;
import com.liulishuo.filedownloader.download.c;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

/* compiled from: FileDownloadUtils */
public class g {
    private static int a = 65536;
    private static long b = 2000;
    private static String c;
    private static Boolean d;
    private static Boolean e = null;
    private static final Pattern f = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");
    private static final Pattern g = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");

    public static void a(int i) throws IllegalAccessException {
        if (a(c.a())) {
            a = i;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-step'.");
    }

    public static void a(long j) throws IllegalAccessException {
        if (a(c.a())) {
            b = j;
            return;
        }
        throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-time'.");
    }

    public static int a() {
        return a;
    }

    public static long b() {
        return b;
    }

    public static boolean a(String str) {
        return true;
    }

    public static String c() {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        if (c.a().getExternalCacheDir() == null) {
            return Environment.getDownloadCacheDirectory().getAbsolutePath();
        }
        return c.a().getExternalCacheDir().getAbsolutePath();
    }

    public static String b(String str) {
        return a(c(), c(str));
    }

    public static String c(String str) {
        return e(str);
    }

    public static String a(String str, String str2) {
        if (str2 == null) {
            throw new IllegalStateException("can't generate real path, the file name is null");
        } else if (str == null) {
            throw new IllegalStateException("can't generate real path, the directory is null");
        } else {
            return a("%s%s%s", str, File.separator, str2);
        }
    }

    public static String d(String str) {
        return a("%s.temp", str);
    }

    public static int b(String str, String str2) {
        return c.a().b().a(str, str2, false);
    }

    public static int a(String str, String str2, boolean z) {
        return c.a().b().a(str, str2, z);
    }

    public static String e(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b2 : digest) {
                if ((b2 & 255) < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(b2 & 255));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Huh, MD5 should be supported?", e2);
        } catch (UnsupportedEncodingException e3) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e3);
        }
    }

    public static boolean a(Context context) {
        boolean z;
        if (d != null) {
            return d.booleanValue();
        }
        if (!e.a().d) {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                List runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                    Iterator it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        RunningAppProcessInfo runningAppProcessInfo = (RunningAppProcessInfo) it.next();
                        if (runningAppProcessInfo.pid == myPid) {
                            z = runningAppProcessInfo.processName.endsWith(":filedownloader");
                            break;
                        }
                    }
                } else {
                    d.d(g.class, "The running app process info list from ActivityManager is null or empty, maybe current App is not running.", new Object[0]);
                    return false;
                }
            } else {
                d.d(g.class, "fail to get the activity manager!", new Object[0]);
                return false;
            }
        } else {
            z = true;
        }
        d = Boolean.valueOf(z);
        return d.booleanValue();
    }

    public static long f(String str) {
        StatFs statFs = new StatFs(str);
        if (VERSION.SDK_INT >= 18) {
            return statFs.getAvailableBytes();
        }
        return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.ENGLISH, str, objArr);
    }

    public static void b(Context context) {
        File c2 = c(context);
        try {
            c2.getParentFile().mkdirs();
            c2.createNewFile();
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public static File c(Context context) {
        return new File(context.getFilesDir().getAbsolutePath() + File.separator + "filedownloader", ".old_file_converted");
    }

    public static long g(String str) {
        long j = -1;
        if (str == null) {
            return j;
        }
        String[] split = str.split("/");
        if (split.length < 2) {
            return j;
        }
        try {
            return Long.parseLong(split[1]);
        } catch (NumberFormatException e2) {
            d.d(g.class, "parse instance length failed with %s", str);
            return j;
        }
    }

    public static String h(String str) {
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = f.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            Matcher matcher2 = g.matcher(str);
            if (matcher2.find()) {
                return matcher2.group(1);
            }
            return null;
        } catch (IllegalStateException e2) {
            return null;
        }
    }

    public static String a(String str, boolean z, String str2) {
        if (str == null) {
            return null;
        }
        if (!z) {
            return str;
        }
        if (str2 == null) {
            return null;
        }
        return a(str, str2);
    }

    public static String i(String str) {
        int i;
        int i2 = 2;
        int length = str.length();
        if (File.separatorChar == '\\' && length > 2 && str.charAt(1) == ':') {
            i = 2;
        } else {
            i = 0;
        }
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf != -1 || i <= 0) {
            i2 = lastIndexOf;
        }
        if (i2 == -1 || str.charAt(length - 1) == File.separatorChar) {
            return null;
        }
        if (str.indexOf(File.separatorChar) == i2 && str.charAt(i) == File.separatorChar) {
            return str.substring(0, i2 + 1);
        }
        return str.substring(0, i2);
    }

    public static String j(String str) {
        return "FileDownloader-" + str;
    }

    public static boolean d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) c.a().getSystemService("connectivity");
        if (connectivityManager == null) {
            d.d(g.class, "failed to get connectivity manager!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    public static boolean k(String str) {
        return c.a().checkCallingOrSelfPermission(str) == 0;
    }

    public static long l(String str) {
        long j = -1;
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e2) {
            return j;
        }
    }

    public static String a(int i, b bVar) {
        if (bVar == null) {
            throw new RuntimeException("connection is null when findEtag");
        }
        String a2 = bVar.a("Etag");
        if (d.a) {
            d.c(g.class, "etag find %s for task(%d)", a2, Integer.valueOf(i));
        }
        return a2;
    }

    public static boolean b(int i, b bVar) {
        if (i == 206 || i == 1) {
            return true;
        }
        return "bytes".equals(bVar.a(Names.ACCEPT_RANGES));
    }

    public static long a(b bVar) {
        long b2 = b(bVar);
        if (b2 < 0) {
            d.d(g.class, "don't get instance length fromContent-Range header", new Object[0]);
            b2 = -1;
        }
        if (b2 != 0 || !e.a().h) {
            return b2;
        }
        return -1;
    }

    public static long b(b bVar) {
        return g(d(bVar));
    }

    private static String d(b bVar) {
        return bVar.a(Names.CONTENT_RANGE);
    }

    public static long c(int i, b bVar) {
        long l = l(bVar.a("Content-Length"));
        String a2 = bVar.a("Transfer-Encoding");
        if (l >= 0) {
            return l;
        }
        if (a2 != null && a2.equals("chunked")) {
            return -1;
        }
        if (!e.a().c) {
            throw new FileDownloadGiveUpRetryException("can't know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties");
        } else if (!d.a) {
            return -1;
        } else {
            d.c(g.class, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk", Integer.valueOf(i));
            return -1;
        }
    }

    public static long c(b bVar) {
        long m = m(d(bVar));
        if (m < 0) {
            return -1;
        }
        return m;
    }

    public static long m(String str) {
        if (str == null || str.length() == 0) {
            return -1;
        }
        String str2 = "bytes (\\d+)-(\\d+)/\\d+";
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(str);
            if (!matcher.find()) {
                return -1;
            }
            return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
        } catch (Exception e2) {
            d.a((Object) g.class, (Throwable) e2, "parse content length from content range error", new Object[0]);
            return -1;
        }
    }

    public static String a(b bVar, String str) {
        String h = h(bVar.a(HttpPostBodyUtil.CONTENT_DISPOSITION));
        if (TextUtils.isEmpty(h)) {
            return c(str);
        }
        return h;
    }

    public static a n(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("found invalid internal destination path, empty");
        } else if (!a(str)) {
            throw new RuntimeException(a("found invalid internal destination filename %s", str));
        } else {
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                throw new RuntimeException(a("found invalid internal destination path[%s], & path is directory[%B]", str, Boolean.valueOf(file.isDirectory())));
            } else if (file.exists() || file.createNewFile()) {
                return c.a().a(file);
            } else {
                throw new IOException(a("create new file error  %s", file.getAbsolutePath()));
            }
        }
    }

    public static boolean a(int i, FileDownloadModel fileDownloadModel) {
        return a(i, fileDownloadModel, (Boolean) null);
    }

    public static boolean a(int i, FileDownloadModel fileDownloadModel, Boolean bool) {
        if (fileDownloadModel == null) {
            if (!d.a) {
                return false;
            }
            d.c(g.class, "can't continue %d model == null", Integer.valueOf(i));
            return false;
        } else if (fileDownloadModel.e() != null) {
            return a(i, fileDownloadModel, fileDownloadModel.e(), bool);
        } else {
            if (!d.a) {
                return false;
            }
            d.c(g.class, "can't continue %d temp path == null", Integer.valueOf(i));
            return false;
        }
    }

    public static boolean a(int i, FileDownloadModel fileDownloadModel, String str, Boolean bool) {
        if (str != null) {
            File file = new File(str);
            boolean exists = file.exists();
            boolean isDirectory = file.isDirectory();
            if (exists && !isDirectory) {
                long length = file.length();
                long g2 = fileDownloadModel.g();
                if (fileDownloadModel.n() > 1 || g2 != 0) {
                    long h = fileDownloadModel.h();
                    if (length < g2 || (h != -1 && (length > h || g2 >= h))) {
                        if (!d.a) {
                            return false;
                        }
                        d.c(g.class, "can't continue %d dirty data fileLength[%d] sofar[%d] total[%d]", Integer.valueOf(i), Long.valueOf(length), Long.valueOf(g2), Long.valueOf(h));
                        return false;
                    } else if (bool == null || bool.booleanValue() || h != length) {
                        return true;
                    } else {
                        if (!d.a) {
                            return false;
                        }
                        d.c(g.class, "can't continue %d, because of the output stream doesn't support seek, but the task has already pre-allocated, so we only can download it from the very beginning.", Integer.valueOf(i));
                        return false;
                    }
                } else if (!d.a) {
                    return false;
                } else {
                    d.c(g.class, "can't continue %d the downloaded-record is zero.", Integer.valueOf(i));
                    return false;
                }
            } else if (!d.a) {
                return false;
            } else {
                d.c(g.class, "can't continue %d file not suit, exists[%B], directory[%B]", Integer.valueOf(i), Boolean.valueOf(exists), Boolean.valueOf(isDirectory));
                return false;
            }
        } else if (!d.a) {
            return false;
        } else {
            d.c(g.class, "can't continue %d path = null", Integer.valueOf(i));
            return false;
        }
    }

    public static void c(String str, String str2) {
        o(str2);
        p(str);
    }

    public static void o(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void p(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static boolean a(long j, long j2) {
        return j > ((long) a()) && j2 > b();
    }

    public static String e() {
        return a("FileDownloader/%s", "1.7.2");
    }
}
