package pl.droidsonroids.gif;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: ReLinker */
class j {
    /* access modifiers changed from: private */
    public static final String a = System.mapLibraryName("pl_droidsonroids_gif");

    private j() {
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    static void a(Context context) {
        synchronized (j.class) {
            System.load(b(context).getAbsolutePath());
        }
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.util.zip.ZipFile] */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* JADX WARNING: type inference failed for: r3v3, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12, types: [java.io.OutputStream, java.io.Closeable, java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        a((java.io.Closeable) r4);
        a((java.io.Closeable) r2);
        b(r0);
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b2  */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.io.File b(android.content.Context r8) {
        /*
            r2 = 0
            r3 = 0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = a
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "1.2.7"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r4 = r0.toString()
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "lib"
            java.io.File r1 = r8.getDir(r1, r2)
            r0.<init>(r1, r4)
            boolean r1 = r0.isFile()
            if (r1 == 0) goto L_0x0029
        L_0x0028:
            return r0
        L_0x0029:
            java.io.File r1 = new java.io.File
            java.io.File r5 = r8.getCacheDir()
            r1.<init>(r5, r4)
            boolean r4 = r1.isFile()
            if (r4 == 0) goto L_0x003a
            r0 = r1
            goto L_0x0028
        L_0x003a:
            java.lang.String r4 = "pl_droidsonroids_gif_surface"
            java.lang.String r4 = java.lang.System.mapLibraryName(r4)
            pl.droidsonroids.gif.j$1 r5 = new pl.droidsonroids.gif.j$1
            r5.<init>(r4)
            a(r0, r5)
            a(r1, r5)
            android.content.pm.ApplicationInfo r4 = r8.getApplicationInfo()
            java.io.File r5 = new java.io.File
            java.lang.String r4 = r4.sourceDir
            r5.<init>(r4)
            java.util.zip.ZipFile r5 = a(r5)     // Catch:{ all -> 0x00c6 }
        L_0x005a:
            int r6 = r2 + 1
            r4 = 5
            if (r2 >= r4) goto L_0x00a3
            java.util.zip.ZipEntry r2 = a(r5)     // Catch:{ all -> 0x0086 }
            if (r2 != 0) goto L_0x008e
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0086 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0086 }
            r1.<init>()     // Catch:{ all -> 0x0086 }
            java.lang.String r2 = "Library "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0086 }
            java.lang.String r2 = a     // Catch:{ all -> 0x0086 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0086 }
            java.lang.String r2 = " for supported ABIs not found in APK file"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0086 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0086 }
            r0.<init>(r1)     // Catch:{ all -> 0x0086 }
            throw r0     // Catch:{ all -> 0x0086 }
        L_0x0086:
            r0 = move-exception
            r3 = r5
        L_0x0088:
            if (r3 == 0) goto L_0x008d
            r3.close()     // Catch:{ IOException -> 0x00c4 }
        L_0x008d:
            throw r0
        L_0x008e:
            java.io.InputStream r4 = r5.getInputStream(r2)     // Catch:{ IOException -> 0x00ac, all -> 0x00bb }
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x00cd, all -> 0x00c8 }
            r2.<init>(r0)     // Catch:{ IOException -> 0x00cd, all -> 0x00c8 }
            a(r4, r2)     // Catch:{ IOException -> 0x00d0, all -> 0x00ca }
            a(r4)     // Catch:{ all -> 0x0086 }
            a(r2)     // Catch:{ all -> 0x0086 }
            b(r0)     // Catch:{ all -> 0x0086 }
        L_0x00a3:
            if (r5 == 0) goto L_0x0028
            r5.close()     // Catch:{ IOException -> 0x00a9 }
            goto L_0x0028
        L_0x00a9:
            r1 = move-exception
            goto L_0x0028
        L_0x00ac:
            r2 = move-exception
            r2 = r3
            r4 = r3
        L_0x00af:
            r7 = 2
            if (r6 <= r7) goto L_0x00b3
            r0 = r1
        L_0x00b3:
            a(r4)     // Catch:{ all -> 0x0086 }
            a(r2)     // Catch:{ all -> 0x0086 }
            r2 = r6
            goto L_0x005a
        L_0x00bb:
            r0 = move-exception
            r4 = r3
        L_0x00bd:
            a(r4)     // Catch:{ all -> 0x0086 }
            a(r3)     // Catch:{ all -> 0x0086 }
            throw r0     // Catch:{ all -> 0x0086 }
        L_0x00c4:
            r1 = move-exception
            goto L_0x008d
        L_0x00c6:
            r0 = move-exception
            goto L_0x0088
        L_0x00c8:
            r0 = move-exception
            goto L_0x00bd
        L_0x00ca:
            r0 = move-exception
            r3 = r2
            goto L_0x00bd
        L_0x00cd:
            r2 = move-exception
            r2 = r3
            goto L_0x00af
        L_0x00d0:
            r7 = move-exception
            goto L_0x00af
        */
        throw new UnsupportedOperationException("Method not decompiled: pl.droidsonroids.gif.j.b(android.content.Context):java.io.File");
    }

    private static ZipEntry a(ZipFile zipFile) {
        for (String a2 : b()) {
            ZipEntry a3 = a(zipFile, a2);
            if (a3 != null) {
                return a3;
            }
        }
        return null;
    }

    private static String[] b() {
        if (VERSION.SDK_INT >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    private static ZipEntry a(ZipFile zipFile, String str) {
        return zipFile.getEntry("lib/" + str + "/" + a);
    }

    private static ZipFile a(File file) {
        ZipFile zipFile;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                zipFile = null;
                break;
            }
            try {
                zipFile = new ZipFile(file, 1);
                break;
            } catch (IOException e) {
                i = i2;
            }
        }
        if (zipFile != null) {
            return zipFile;
        }
        throw new IllegalStateException("Could not open APK file: " + file.getAbsolutePath());
    }

    private static void a(File file, FilenameFilter filenameFilter) {
        File[] listFiles = file.getParentFile().listFiles(filenameFilter);
        if (listFiles != null) {
            for (File delete : listFiles) {
                delete.delete();
            }
        }
    }

    @SuppressLint({"SetWorldReadable"})
    private static void b(File file) {
        file.setReadable(true, false);
        file.setExecutable(true, false);
        file.setWritable(true);
    }

    private static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
