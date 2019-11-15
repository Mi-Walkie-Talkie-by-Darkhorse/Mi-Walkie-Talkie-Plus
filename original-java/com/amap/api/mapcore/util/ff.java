package com.amap.api.mapcore.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;

/* compiled from: ServiceUtils */
public class ff {
    public static int a = -1;
    private static AssetManager b = null;
    private static Resources c = null;
    private static Resources d = null;
    private static boolean e = true;
    private static Context f;
    /* access modifiers changed from: private */
    public static String g = "amap_resource";
    /* access modifiers changed from: private */
    public static String h = "1_0_0";
    private static String i = ".png";
    /* access modifiers changed from: private */
    public static String j = ".jar";
    private static String k = (g + h + j);
    private static String l = (g + h + i);
    private static String m = "";
    private static String n = (m + k);
    private static Theme o = null;
    private static Theme p = null;
    private static Field q = null;
    private static Field r = null;
    private static Activity s = null;

    /* compiled from: ServiceUtils */
    static class a implements FilenameFilter {
        a() {
        }

        public boolean accept(File file, String str) {
            return str.startsWith(ff.g) && !str.endsWith(new StringBuilder().append(ff.h).append(ff.j).toString());
        }
    }

    public static boolean a(Context context) {
        try {
            f = context;
            m = b(f).getAbsolutePath() + "/";
            n = m + k;
            if (!e) {
                return true;
            }
            if (!c(context)) {
                return false;
            }
            b = a(n);
            c = a(context, b);
            return true;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x004d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.io.File b(android.content.Context r3) {
        /*
            r0 = 0
            if (r3 != 0) goto L_0x000a
            if (r0 != 0) goto L_0x0009
            java.io.File r0 = r3.getFilesDir()
        L_0x0009:
            return r0
        L_0x000a:
            java.lang.String r1 = android.os.Environment.getExternalStorageState()     // Catch:{ Exception -> 0x0037, all -> 0x0043 }
            java.lang.String r2 = "mounted"
            boolean r1 = r1.equals(r2)     // Catch:{ Exception -> 0x0037, all -> 0x0043 }
            if (r1 == 0) goto L_0x0032
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Exception -> 0x0037, all -> 0x0043 }
            boolean r1 = r2.canWrite()     // Catch:{ Exception -> 0x0050 }
            if (r1 != 0) goto L_0x002b
            java.io.File r0 = r3.getFilesDir()     // Catch:{ Exception -> 0x0050 }
        L_0x0024:
            if (r0 != 0) goto L_0x0009
            java.io.File r0 = r3.getFilesDir()
            goto L_0x0009
        L_0x002b:
            java.lang.String r1 = "LBS"
            java.io.File r0 = r3.getExternalFilesDir(r1)     // Catch:{ Exception -> 0x0050 }
            goto L_0x0024
        L_0x0032:
            java.io.File r0 = r3.getFilesDir()     // Catch:{ Exception -> 0x0037, all -> 0x0043 }
            goto L_0x0024
        L_0x0037:
            r1 = move-exception
            r2 = r0
        L_0x0039:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x004e }
            if (r2 != 0) goto L_0x0009
            java.io.File r0 = r3.getFilesDir()
            goto L_0x0009
        L_0x0043:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0046:
            if (r2 != 0) goto L_0x004d
            java.io.File r0 = r3.getFilesDir()
            goto L_0x0009
        L_0x004d:
            throw r0
        L_0x004e:
            r0 = move-exception
            goto L_0x0046
        L_0x0050:
            r1 = move-exception
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ff.b(android.content.Context):java.io.File");
    }

    public static Resources a() {
        if (c == null) {
            return f.getResources();
        }
        return c;
    }

    private static Resources a(Context context, AssetManager assetManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setToDefaults();
        return new Resources(assetManager, displayMetrics, context.getResources().getConfiguration());
    }

    private static AssetManager a(String str) {
        Throwable th;
        AssetManager assetManager;
        try {
            Class cls = Class.forName("android.content.res.AssetManager");
            assetManager = (AssetManager) cls.getConstructor(null).newInstance(null);
            try {
                cls.getDeclaredMethod("addAssetPath", new Class[]{String.class}).invoke(assetManager, new Object[]{str});
            } catch (Throwable th2) {
                th = th2;
                gf.b(th, "ResourcesUtil", "getAssetManager(String apkPath)");
                return assetManager;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            assetManager = null;
            th = th4;
            gf.b(th, "ResourcesUtil", "getAssetManager(String apkPath)");
            return assetManager;
        }
        return assetManager;
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0077 A[SYNTHETIC, Splitter:B:38:0x0077] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x007c A[Catch:{ IOException -> 0x0080 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean c(android.content.Context r6) {
        /*
            r2 = 0
            r0 = 1
            d(r6)
            r3 = 0
            android.content.res.Resources r1 = r6.getResources()     // Catch:{ Throwable -> 0x004f, all -> 0x0073 }
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch:{ Throwable -> 0x004f, all -> 0x0073 }
            java.lang.String r4 = l     // Catch:{ Throwable -> 0x004f, all -> 0x0073 }
            java.io.InputStream r1 = r1.open(r4)     // Catch:{ Throwable -> 0x004f, all -> 0x0073 }
            boolean r4 = b(r1)     // Catch:{ Throwable -> 0x008e }
            if (r4 == 0) goto L_0x0031
            if (r1 == 0) goto L_0x001f
            r1.close()     // Catch:{ IOException -> 0x0025 }
        L_0x001f:
            if (r2 == 0) goto L_0x0024
            r3.close()     // Catch:{ IOException -> 0x0025 }
        L_0x0024:
            return r0
        L_0x0025:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            java.lang.String r2 = "ResourcesUtil"
            java.lang.String r3 = "copyResourceJarToAppFilesDir(Context ctx)"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            goto L_0x0024
        L_0x0031:
            e()     // Catch:{ Throwable -> 0x008e }
            java.io.OutputStream r2 = a(r1)     // Catch:{ Throwable -> 0x008e }
            if (r1 == 0) goto L_0x003d
            r1.close()     // Catch:{ IOException -> 0x0043 }
        L_0x003d:
            if (r2 == 0) goto L_0x0024
            r2.close()     // Catch:{ IOException -> 0x0043 }
            goto L_0x0024
        L_0x0043:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            java.lang.String r2 = "ResourcesUtil"
            java.lang.String r3 = "copyResourceJarToAppFilesDir(Context ctx)"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            goto L_0x0024
        L_0x004f:
            r0 = move-exception
            r1 = r2
        L_0x0051:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x008c }
            java.lang.String r4 = "ResourcesUtil"
            java.lang.String r5 = "copyResourceJarToAppFilesDir(Context ctx)"
            com.amap.api.mapcore.util.gf.b(r0, r4, r5)     // Catch:{ all -> 0x008c }
            r0 = 0
            if (r1 == 0) goto L_0x0061
            r1.close()     // Catch:{ IOException -> 0x0067 }
        L_0x0061:
            if (r2 == 0) goto L_0x0024
            r3.close()     // Catch:{ IOException -> 0x0067 }
            goto L_0x0024
        L_0x0067:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            java.lang.String r2 = "ResourcesUtil"
            java.lang.String r3 = "copyResourceJarToAppFilesDir(Context ctx)"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            goto L_0x0024
        L_0x0073:
            r0 = move-exception
            r1 = r2
        L_0x0075:
            if (r1 == 0) goto L_0x007a
            r1.close()     // Catch:{ IOException -> 0x0080 }
        L_0x007a:
            if (r2 == 0) goto L_0x007f
            r3.close()     // Catch:{ IOException -> 0x0080 }
        L_0x007f:
            throw r0
        L_0x0080:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            java.lang.String r2 = "ResourcesUtil"
            java.lang.String r3 = "copyResourceJarToAppFilesDir(Context ctx)"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            goto L_0x007f
        L_0x008c:
            r0 = move-exception
            goto L_0x0075
        L_0x008e:
            r0 = move-exception
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ff.c(android.content.Context):boolean");
    }

    private static OutputStream a(InputStream inputStream) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(m, k));
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return fileOutputStream;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    private static boolean b(InputStream inputStream) throws IOException {
        File file = new File(n);
        long length = file.length();
        int available = inputStream.available();
        if (!file.exists() || length != ((long) available)) {
            return false;
        }
        inputStream.close();
        return true;
    }

    private static void e() {
        File[] listFiles = new File(m).listFiles(new a());
        if (listFiles != null && listFiles.length > 0) {
            for (File delete : listFiles) {
                if (delete.delete()) {
                }
            }
        }
    }

    private static void d(Context context) {
        m = context.getFilesDir().getAbsolutePath();
        n = m + "/" + k;
    }

    public static View a(Context context, int i2, ViewGroup viewGroup) {
        XmlResourceParser xml = a().getXml(i2);
        if (!e) {
            return LayoutInflater.from(context).inflate(xml, viewGroup);
        }
        try {
            return LayoutInflater.from(new fe(context, a == -1 ? 0 : a, ff.class.getClassLoader())).inflate(xml, viewGroup);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            gf.b(th, "ResourcesUtil", "selfInflate(Activity activity, int resource, ViewGroup root)");
            return null;
        } finally {
            xml.close();
        }
    }
}
