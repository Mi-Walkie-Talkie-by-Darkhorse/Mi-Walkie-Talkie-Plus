package com.autonavi.ae.gmap.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class GLFileUtil {
    public static void copyAssetsFile(Context context, String str, String str2) {
        try {
            File file = new File(str2);
            if (file == null || !file.exists()) {
                InputStream open = context.getAssets().open(str);
                if (open.available() != 0) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    byte[] bArr = new byte[1024];
                    for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.flush();
                    open.close();
                    fileOutputStream.close();
                }
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    /* JADX INFO: finally extract failed */
    public static void copy(Context context, String str, File file) throws Exception {
        file.delete();
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[open.available()];
        try {
            open.read(bArr);
            closeQuietly(open);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
            } finally {
                closeQuietly(fileOutputStream);
            }
        } catch (Throwable th) {
            closeQuietly(open);
            throw th;
        }
    }

    public static void deleteFile(File file) {
        if (file != null) {
            File[] listFiles = file.listFiles();
            if (file.isDirectory() && listFiles != null) {
                for (File deleteFile : listFiles) {
                    deleteFile(deleteFile);
                }
            }
            file.delete();
        }
    }

    public static String getCurrentOfflineDataStorage(Context context) {
        String str = "offline_data_storage";
        return context.getSharedPreferences("base_path", 0).getString("offline_data_storage", "");
    }

    public static boolean checkPathIsCanUse(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory() || !file.canWrite() || !file.canRead()) {
            return false;
        }
        return true;
    }

    public static String getMapBaseStorage(Context context) {
        String str = "map_base_path";
        if (VERSION.SDK_INT > 18) {
            str = "map_base_path_v44";
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("base_path", 0);
        String string = sharedPreferences.getString(str, "");
        if (string != null && string.length() > 2) {
            File file = new File(string);
            if (file.isDirectory()) {
                if (file.canWrite()) {
                    createNoMediaFileIfNotExist(string);
                    return string;
                }
                String file2 = getCacheDir(context).toString();
                if (file2 != null && file2.length() > 2 && new File(file2).isDirectory()) {
                    return file2;
                }
            }
        }
        String externalStroragePath = getExternalStroragePath(context);
        if (externalStroragePath == null || externalStroragePath.length() <= 2 || !new File(externalStroragePath).isDirectory()) {
            String file3 = getCacheDir(context).toString();
            if (file3 == null || file3.length() <= 2 || new File(file3).isDirectory()) {
            }
            return file3;
        }
        Editor edit = sharedPreferences.edit();
        edit.putString(str, externalStroragePath);
        if (VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            edit.commit();
        }
        createNoMediaFileIfNotExist(externalStroragePath);
        return externalStroragePath;
    }

    @SuppressLint({"NewApi"})
    @TargetApi(19)
    public static String getExternalStroragePath(Context context) {
        String str;
        String str2;
        int i = VERSION.SDK_INT;
        if (i >= 12) {
            try {
                StorageManager storageManager = (StorageManager) context.getSystemService("storage");
                Method method = StorageManager.class.getMethod("getVolumeList", new Class[0]);
                Method method2 = StorageManager.class.getMethod("getVolumeState", new Class[]{String.class});
                Object[] objArr = (Object[]) method.invoke(storageManager, new Object[0]);
                Boolean.valueOf(false);
                String str3 = "";
                String str4 = "";
                String str5 = "";
                String str6 = "";
                int length = objArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        str = null;
                        break;
                    }
                    Object obj = objArr[i2];
                    Method method3 = obj.getClass().getMethod("getPath", new Class[0]);
                    String str7 = (String) method3.invoke(obj, new Object[0]);
                    String str8 = (String) method2.invoke(storageManager, new Object[]{method3.invoke(obj, new Object[0])});
                    Boolean bool = (Boolean) obj.getClass().getMethod("isRemovable", new Class[0]).invoke(obj, new Object[0]);
                    if (str7.toLowerCase(Locale.US).contains("private")) {
                        str8 = str6;
                        str7 = str4;
                    } else if (!bool.booleanValue()) {
                        continue;
                    } else if (str7 == null || str8 == null || !str8.equals("mounted")) {
                        str8 = str6;
                        str7 = str4;
                    } else if (i <= 18) {
                        str = str7;
                    } else {
                        try {
                            File[] externalFilesDirs = context.getExternalFilesDirs(null);
                            if (externalFilesDirs != null && externalFilesDirs.length > 0) {
                                int length2 = externalFilesDirs.length;
                                int i3 = 0;
                                String str9 = str7;
                                while (i3 < length2) {
                                    File file = externalFilesDirs[i3];
                                    if (file != null) {
                                        str2 = file.getAbsolutePath();
                                        if (!TextUtils.isEmpty(str2) && str2.contains(str7)) {
                                            i3++;
                                            str9 = str2;
                                        }
                                    }
                                    str2 = str9;
                                    i3++;
                                    str9 = str2;
                                }
                                str7 = str9;
                            }
                            str = str7;
                        } catch (Throwable th) {
                            str = str7;
                        }
                    }
                    i2++;
                    str6 = str8;
                    str4 = str7;
                }
                if (i > 18) {
                    if (!(str4 == null || str6 == null)) {
                        if (str6.equals("mounted")) {
                            str = str4;
                        }
                    }
                    return str;
                } else if (str != null || str4 == null || str6 == null || !str6.equals("mounted")) {
                    return str;
                } else {
                    return str4;
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            }
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().toString();
        }
        return null;
    }

    public static void writeDatasToFile(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        Throwable th;
        WriteLock writeLock = new ReentrantReadWriteLock().writeLock();
        writeLock.lock();
        FileOutputStream fileOutputStream2 = null;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    File file = new File(str);
                    File parentFile = file.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(bArr);
                        fileOutputStream.flush();
                        writeLock.unlock();
                        closeQuietly(fileOutputStream);
                        return;
                    } catch (Exception e) {
                        fileOutputStream2 = fileOutputStream;
                        writeLock.unlock();
                        closeQuietly(fileOutputStream2);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        writeLock.unlock();
                        closeQuietly(fileOutputStream);
                        throw th;
                    }
                }
            } catch (Exception e2) {
                writeLock.unlock();
                closeQuietly(fileOutputStream2);
                return;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                fileOutputStream = null;
                th = th4;
                writeLock.unlock();
                closeQuietly(fileOutputStream);
                throw th;
            }
        }
        writeLock.unlock();
        closeQuietly(null);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] readFileContents(java.lang.String r7) {
        /*
            r0 = 0
            java.io.File r2 = new java.io.File     // Catch:{ Exception -> 0x0044, all -> 0x003a }
            r2.<init>(r7)     // Catch:{ Exception -> 0x0044, all -> 0x003a }
            boolean r1 = r2.exists()     // Catch:{ Exception -> 0x0044, all -> 0x003a }
            if (r1 != 0) goto L_0x0010
            closeQuietly(r0)
        L_0x000f:
            return r0
        L_0x0010:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0044, all -> 0x003a }
            r1.<init>(r2)     // Catch:{ Exception -> 0x0044, all -> 0x003a }
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            r3.<init>()     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
        L_0x001e:
            int r4 = r1.read(r2)     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            r5 = -1
            if (r4 == r5) goto L_0x002f
            r5 = 0
            r3.write(r2, r5, r4)     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            goto L_0x001e
        L_0x002a:
            r2 = move-exception
        L_0x002b:
            closeQuietly(r1)
            goto L_0x000f
        L_0x002f:
            r3.close()     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            byte[] r0 = r3.toByteArray()     // Catch:{ Exception -> 0x002a, all -> 0x0042 }
            closeQuietly(r1)
            goto L_0x000f
        L_0x003a:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x003e:
            closeQuietly(r1)
            throw r0
        L_0x0042:
            r0 = move-exception
            goto L_0x003e
        L_0x0044:
            r1 = move-exception
            r1 = r0
            goto L_0x002b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.utils.GLFileUtil.readFileContents(java.lang.String):byte[]");
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
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public static String getAppSDCardFileDir() {
        File file;
        if (Environment.getExternalStorageState().equals("mounted")) {
            file = new File(Environment.getExternalStorageDirectory(), GeocodeSearch.AMAP);
            if (!file.exists()) {
                file.mkdir();
            }
        } else {
            file = null;
        }
        if (file == null) {
            return null;
        }
        return file.toString();
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

    public static File getFilesDir(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir == null) {
            filesDir = context.getDir("files", 0);
        }
        if (filesDir == null) {
            filesDir = new File("/data/data/" + context.getPackageName() + "/app_files");
        }
        if (!filesDir.exists()) {
            filesDir.mkdirs();
        }
        return filesDir;
    }
}
