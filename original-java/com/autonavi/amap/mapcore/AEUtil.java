package com.autonavi.amap.mapcore;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.autonavi.ae.utils.NaviUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

@SuppressLint({"NewApi"})
public class AEUtil {
    private static final int BUFFER = 1024;
    public static final String CONFIGNAME = "GNaviConfig.xml";
    public static final boolean IS_AE = true;
    public static final String RESZIPNAME = "res.zip";
    private static final String TAG = AEUtil.class.getSimpleName();
    private static String currentPath = null;

    public static class UnZipFileBrake {
        public boolean mIsAborted = false;
    }

    public interface ZipCompressProgressListener {
        void onFinishProgress(long j);
    }

    static {
        System.loadLibrary("GNaviUtils");
        System.loadLibrary("GNaviData");
        System.loadLibrary("GNaviSearch");
        System.loadLibrary("RoadLineRebuildAPI");
        System.loadLibrary("GNaviMap");
        System.loadLibrary("GNaviMapex");
    }

    public static void init(Context context) {
        currentPath = FileUtil.getMapBaseStorage(context);
        File file = new File(currentPath);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(currentPath, CONFIGNAME);
        if (!file2.exists() || !file2.isFile() || file2.length() <= 0) {
            byte[] readAssetsFile = readAssetsFile("ae/GNaviConfig.xml", context);
            if (readAssetsFile != null && readAssetsFile.length > 0) {
                NaviUtils.nativeSetConfigMem(currentPath, getString(readAssetsFile, "utf-8"));
                return;
            }
            return;
        }
        NaviUtils.nativeSetConfigFile(currentPath, currentPath + CONFIGNAME);
    }

    private static void loadEngineRes(String str, Context context) {
        File file = new File(str, "res");
        if ((!file.exists() || !file.isDirectory()) && file.mkdirs()) {
        }
        if (!checkEngineRes(file)) {
            InputStream inputStream = null;
            try {
                inputStream = context.getAssets().open("ae/res.zip");
                decompress(inputStream, file.getAbsolutePath());
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        ThrowableExtension.printStackTrace(e3);
                    }
                }
            } catch (OutOfMemoryError e4) {
                ThrowableExtension.printStackTrace(e4);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                        ThrowableExtension.printStackTrace(e5);
                    }
                }
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        ThrowableExtension.printStackTrace(e6);
                    }
                }
            }
        }
    }

    private static boolean checkEngineRes(File file) {
        try {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length < 4) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public static String getEngineVersion() {
        return "n/a";
    }

    public static String getNaviRouteVersion() {
        return "n/a";
    }

    public static String getPosVersion() {
        return "n/a";
    }

    public static String getMapVersion() {
        return "n/a";
    }

    private static String getDataVersion() {
        return "";
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r3v6, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r3v7, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r0v9, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r0v10, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r3v12 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r3v13 */
    /* JADX WARNING: type inference failed for: r3v14 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: type inference failed for: r3v16 */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v1
  assigns: []
  uses: []
  mth insns count: 84
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0061 A[SYNTHETIC, Splitter:B:43:0x0061] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0066 A[SYNTHETIC, Splitter:B:46:0x0066] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x007a A[SYNTHETIC, Splitter:B:55:0x007a] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x007f A[SYNTHETIC, Splitter:B:58:0x007f] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:14:0x0028=Splitter:B:14:0x0028, B:40:0x005c=Splitter:B:40:0x005c} */
    /* JADX WARNING: Unknown variable types count: 11 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] readAssetsFile(java.lang.String r6, android.content.Context r7) {
        /*
            r0 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 == 0) goto L_0x0008
        L_0x0007:
            return r0
        L_0x0008:
            android.content.res.AssetManager r1 = r7.getAssets()     // Catch:{ Exception -> 0x0098, OutOfMemoryError -> 0x0059, all -> 0x0074 }
            java.io.InputStream r3 = r1.open(r6)     // Catch:{ Exception -> 0x0098, OutOfMemoryError -> 0x0059, all -> 0x0074 }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x009c, OutOfMemoryError -> 0x0093, all -> 0x008d }
            r2.<init>()     // Catch:{ Exception -> 0x009c, OutOfMemoryError -> 0x0093, all -> 0x008d }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ Exception -> 0x0027, OutOfMemoryError -> 0x0096 }
        L_0x0019:
            r4 = 0
            r5 = 1024(0x400, float:1.435E-42)
            int r4 = r3.read(r1, r4, r5)     // Catch:{ Exception -> 0x0027, OutOfMemoryError -> 0x0096 }
            if (r4 <= 0) goto L_0x003b
            r5 = 0
            r2.write(r1, r5, r4)     // Catch:{ Exception -> 0x0027, OutOfMemoryError -> 0x0096 }
            goto L_0x0019
        L_0x0027:
            r1 = move-exception
        L_0x0028:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0091 }
            if (r3 == 0) goto L_0x0030
            r3.close()     // Catch:{ IOException -> 0x0054 }
        L_0x0030:
            if (r2 == 0) goto L_0x0007
            r2.close()     // Catch:{ IOException -> 0x0036 }
            goto L_0x0007
        L_0x0036:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0007
        L_0x003b:
            byte[] r0 = r2.toByteArray()     // Catch:{ Exception -> 0x0027, OutOfMemoryError -> 0x0096 }
            if (r3 == 0) goto L_0x0044
            r3.close()     // Catch:{ IOException -> 0x004f }
        L_0x0044:
            if (r2 == 0) goto L_0x0007
            r2.close()     // Catch:{ IOException -> 0x004a }
            goto L_0x0007
        L_0x004a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0007
        L_0x004f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0044
        L_0x0054:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0030
        L_0x0059:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x005c:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0091 }
            if (r3 == 0) goto L_0x0064
            r3.close()     // Catch:{ IOException -> 0x006f }
        L_0x0064:
            if (r2 == 0) goto L_0x0007
            r2.close()     // Catch:{ IOException -> 0x006a }
            goto L_0x0007
        L_0x006a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0007
        L_0x006f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0064
        L_0x0074:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x0078:
            if (r3 == 0) goto L_0x007d
            r3.close()     // Catch:{ IOException -> 0x0083 }
        L_0x007d:
            if (r2 == 0) goto L_0x0082
            r2.close()     // Catch:{ IOException -> 0x0088 }
        L_0x0082:
            throw r0
        L_0x0083:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x007d
        L_0x0088:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0082
        L_0x008d:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0078
        L_0x0091:
            r0 = move-exception
            goto L_0x0078
        L_0x0093:
            r1 = move-exception
            r2 = r0
            goto L_0x005c
        L_0x0096:
            r1 = move-exception
            goto L_0x005c
        L_0x0098:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x0028
        L_0x009c:
            r1 = move-exception
            r2 = r0
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.amap.mapcore.AEUtil.readAssetsFile(java.lang.String, android.content.Context):byte[]");
    }

    public static void createNoMediaFileIfNotExist(String str) {
        try {
            File file = new File(str + "/autonavi/.nomedia");
            if (!file.exists()) {
                file.createNewFile();
            }
            if (file.lastModified() > 0) {
                file.setLastModified(0);
            }
        } catch (Throwable th) {
        }
    }

    public static File getCacheDir(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            cacheDir = context.getDir("cache", 0);
        }
        if (cacheDir == null) {
            cacheDir = new File("/data/data/" + context.getPackageName() + "/app_cache");
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public static String getString(byte[] bArr, String str) {
        if (bArr != null) {
            return getString(bArr, 0, bArr.length, str);
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    public static String getString(byte[] bArr, int i, int i2, String str) {
        if (bArr == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        } else if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("charset may not be null or empty");
        } else {
            try {
                return new String(bArr, i, i2, str);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }
    }

    public static void decompress(InputStream inputStream, String str) throws Exception {
        decompress(inputStream, str, 0, null);
    }

    private static void decompress(InputStream inputStream, String str, long j, ZipCompressProgressListener zipCompressProgressListener) throws Exception {
        CheckedInputStream checkedInputStream = new CheckedInputStream(inputStream, new CRC32());
        ZipInputStream zipInputStream = new ZipInputStream(checkedInputStream);
        decompress(null, new File(str), zipInputStream, j, zipCompressProgressListener, null);
        zipInputStream.close();
        checkedInputStream.close();
    }

    private static void decompress(File file, File file2, ZipInputStream zipInputStream, long j, ZipCompressProgressListener zipCompressProgressListener, UnZipFileBrake unZipFileBrake) throws Exception {
        boolean z;
        int decompressFile;
        int i = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                z = false;
                break;
            } else if (unZipFileBrake == null || !unZipFileBrake.mIsAborted) {
                String name = nextEntry.getName();
                if (TextUtils.isEmpty(name) || name.contains("../")) {
                    z = true;
                } else {
                    File file3 = new File(file2.getPath() + File.separator + name);
                    fileProber(file3);
                    if (nextEntry.isDirectory()) {
                        file3.mkdirs();
                        decompressFile = i;
                    } else {
                        decompressFile = decompressFile(file3, zipInputStream, (long) i, j, zipCompressProgressListener, unZipFileBrake) + i;
                    }
                    zipInputStream.closeEntry();
                    i = decompressFile;
                }
            } else {
                zipInputStream.closeEntry();
                return;
            }
        }
        z = true;
        if (z && file != null) {
            try {
                file.delete();
            } catch (Exception e) {
            }
        }
    }

    private static void fileProber(File file) {
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            fileProber(parentFile);
            parentFile.mkdir();
        }
    }

    private static int decompressFile(File file, ZipInputStream zipInputStream, long j, long j2, ZipCompressProgressListener zipCompressProgressListener, UnZipFileBrake unZipFileBrake) throws Exception {
        int i = 0;
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        byte[] bArr = new byte[1024];
        while (true) {
            int read = zipInputStream.read(bArr, 0, 1024);
            if (read != -1) {
                if (unZipFileBrake != null && unZipFileBrake.mIsAborted) {
                    bufferedOutputStream.close();
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                if (j2 > 0 && zipCompressProgressListener != null) {
                    long j3 = ((((long) i) + j) * 100) / j2;
                    if (unZipFileBrake == null || !unZipFileBrake.mIsAborted) {
                        zipCompressProgressListener.onFinishProgress(j3);
                    }
                }
            } else {
                bufferedOutputStream.close();
                break;
            }
        }
        return i;
    }
}
