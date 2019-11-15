package com.autonavi.amap.mapcore;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import com.amap.api.maps.MapsInitializer;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class FileUtil {
    private static final String TAG = "FileUtil";

    public static void copy(Context context, String str, File file) throws Exception {
        file.delete();
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[open.available()];
        open.read(bArr);
        open.close();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }

    public static boolean deleteFile(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; i++) {
                    if (listFiles[i].isFile()) {
                        if (!listFiles[i].delete()) {
                            return false;
                        }
                    } else if (!deleteFile(listFiles[i])) {
                        return false;
                    } else {
                        listFiles[i].delete();
                    }
                }
            }
        }
        file.delete();
        return true;
    }

    public static String getMapBaseStorage(Context context) {
        String string;
        if (context == null) {
            return null;
        }
        String str = "map_base_path";
        if (VERSION.SDK_INT > 18) {
            str = "map_base_path_v44";
        }
        String str2 = "";
        SharedPreferences sharedPreferences = context.getSharedPreferences("base_path", 0);
        if (MapsInitializer.sdcardDir == null || MapsInitializer.sdcardDir.trim().length() <= 0) {
            string = sharedPreferences.getString(str, "");
        } else {
            string = MapsInitializer.sdcardDir;
        }
        if (string != null && string.length() > 2) {
            File file = new File(string);
            if (!file.exists()) {
                file.mkdir();
            }
            if (file.isDirectory()) {
                if (checkCanWrite(file)) {
                    return string;
                }
                String str3 = context.getCacheDir().toString() + File.separator + "amap" + File.separator;
                if (str3 != null && str3.length() > 2) {
                    File file2 = new File(str3);
                    if (!file2.exists()) {
                        file2.mkdir();
                    }
                    if (file2.isDirectory()) {
                        return str3;
                    }
                }
            }
        }
        String str4 = getExternalStroragePath(context) + File.separator + "amap" + File.separator;
        if (str4 != null && str4.length() > 2) {
            File file3 = new File(str4);
            if (!file3.exists()) {
                file3.mkdir();
            }
            if (file3.isDirectory() && file3.canWrite()) {
                Editor edit = sharedPreferences.edit();
                edit.putString(str, str4);
                edit.commit();
                createNoMediaFileIfNotExist(str4);
                return str4;
            }
        }
        String str5 = context.getCacheDir().toString() + File.separator + "amap" + File.separator;
        if (str5 == null || str5.length() <= 2) {
            return str5;
        }
        File file4 = new File(str5);
        if (!file4.exists()) {
            file4.mkdir();
        }
        if (file4.isDirectory()) {
        }
        return str5;
    }

    public static boolean checkCanWrite(File file) {
        if (file == null) {
            return false;
        }
        if (file.canWrite()) {
            File file2 = new File(file, "amap.tmp");
            try {
                file2.createNewFile();
                if (file2 == null || !file2.exists()) {
                    return false;
                }
                try {
                    file2.delete();
                } catch (Exception e) {
                    ThrowableExtension.printStackTrace(e);
                    return false;
                }
            } catch (IOException e2) {
                ThrowableExtension.printStackTrace(e2);
                return false;
            }
        }
        return true;
    }

    public static String getExternalStroragePath(Context context) {
        String str;
        int i = VERSION.SDK_INT;
        if (i >= 12) {
            try {
                StorageManager storageManager = (StorageManager) context.getSystemService("storage");
                Method method = StorageManager.class.getMethod("getVolumeList", new Class[0]);
                Method method2 = StorageManager.class.getMethod("getVolumeState", new Class[]{String.class});
                Object[] objArr = (Object[]) method.invoke(storageManager, new Object[0]);
                Boolean.valueOf(false);
                String str2 = "";
                String str3 = "";
                String str4 = "";
                String str5 = "";
                int length = objArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        str = null;
                        break;
                    }
                    Object obj = objArr[i2];
                    Method method3 = obj.getClass().getMethod("getPath", new Class[0]);
                    String str6 = (String) method3.invoke(obj, new Object[0]);
                    String str7 = (String) method2.invoke(storageManager, new Object[]{method3.invoke(obj, new Object[0])});
                    Boolean bool = (Boolean) obj.getClass().getMethod("isRemovable", new Class[0]).invoke(obj, new Object[0]);
                    if (str6.toLowerCase().contains("private")) {
                        str7 = str5;
                        str6 = str3;
                    } else if (!bool.booleanValue()) {
                        continue;
                    } else if (str6 == null || str7 == null || !str7.equals("mounted")) {
                        str7 = str5;
                        str6 = str3;
                    } else if (i <= 18) {
                        str = str6;
                    } else {
                        try {
                            File[] externalFilesDirs = context.getExternalFilesDirs(null);
                            if (externalFilesDirs == null) {
                                str6 = null;
                            } else if (externalFilesDirs.length > 1) {
                                str6 = externalFilesDirs[1].getAbsolutePath();
                            }
                            str = str6;
                        } catch (Exception e) {
                            str = str6;
                        }
                    }
                    i2++;
                    str5 = str7;
                    str3 = str6;
                }
                if (i <= 18) {
                    return (str != null || str3 == null || str5 == null || !str5.equals("mounted")) ? str : str3;
                }
                if (!(str3 == null || str5 == null)) {
                    if (str5.equals("mounted")) {
                        str = str3;
                    }
                }
                return str;
            } catch (Throwable th) {
            }
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().toString();
        }
        return null;
    }

    public static void writeDatasToFile(String str, byte[] bArr) {
        WriteLock writeLock = new ReentrantReadWriteLock().writeLock();
        writeLock.lock();
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    File file = new File(str);
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(bArr);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
                return;
            } finally {
                writeLock.unlock();
            }
        }
        writeLock.unlock();
    }

    public static byte[] readFileContents(String str) {
        byte[] bArr = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                return bArr;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr2 = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = fileInputStream.read(bArr2);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return bArr;
        }
    }

    public static void createNoMediaFileIfNotExist(String str) {
    }

    public static void saveFile(String str, String str2, boolean z) {
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + str2);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, z);
            fileOutputStream.write(str.getBytes("utf-8"));
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }
}
