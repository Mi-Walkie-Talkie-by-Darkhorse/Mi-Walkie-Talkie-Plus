package com.nostra13.universalimageloader.utils;

import android.content.Context;
import android.os.Environment;
import com.mi.milinkforgame.sdk.data.Const;
import java.io.File;
import java.io.IOException;

public final class StorageUtils {
    private static final String EXTERNAL_STORAGE_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String INDIVIDUAL_DIR_NAME = "uil-images";

    private StorageUtils() {
    }

    public static File getCacheDirectory(Context context) {
        return getCacheDirectory(context, true);
    }

    public static File getCacheDirectory(Context context, boolean z) {
        String str;
        File file = null;
        try {
            str = Environment.getExternalStorageState();
        } catch (NullPointerException e) {
            str = "";
        } catch (IncompatibleClassChangeError e2) {
            str = "";
        }
        if (z && "mounted".equals(str) && hasExternalStoragePermission(context)) {
            file = getExternalCacheDir(context);
        }
        if (file == null) {
            file = context.getCacheDir();
        }
        if (file != null) {
            return file;
        }
        String str2 = "/data/data/" + context.getPackageName() + "/cache/";
        L.w("Can't define system cache directory! '%s' will be used.", str2);
        return new File(str2);
    }

    public static File getIndividualCacheDirectory(Context context) {
        return getIndividualCacheDirectory(context, INDIVIDUAL_DIR_NAME);
    }

    public static File getIndividualCacheDirectory(Context context, String str) {
        File cacheDirectory = getCacheDirectory(context);
        File file = new File(cacheDirectory, str);
        return (file.exists() || file.mkdir()) ? file : cacheDirectory;
    }

    public static File getOwnCacheDirectory(Context context, String str) {
        File file = null;
        if ("mounted".equals(Environment.getExternalStorageState()) && hasExternalStoragePermission(context)) {
            file = new File(Environment.getExternalStorageDirectory(), str);
        }
        if (file == null || (!file.exists() && !file.mkdirs())) {
            return context.getCacheDir();
        }
        return file;
    }

    public static File getOwnCacheDirectory(Context context, String str, boolean z) {
        File file = null;
        if (z && "mounted".equals(Environment.getExternalStorageState()) && hasExternalStoragePermission(context)) {
            file = new File(Environment.getExternalStorageDirectory(), str);
        }
        if (file == null || (!file.exists() && !file.mkdirs())) {
            return context.getCacheDir();
        }
        return file;
    }

    private static File getExternalCacheDir(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), Const.PARAM_DATA), context.getPackageName()), "cache");
        if (file.exists()) {
            return file;
        }
        if (!file.mkdirs()) {
            L.w("Unable to create external cache directory", new Object[0]);
            return null;
        }
        try {
            new File(file, ".nomedia").createNewFile();
            return file;
        } catch (IOException e) {
            L.i("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
            return file;
        }
    }

    private static boolean hasExternalStoragePermission(Context context) {
        return context.checkCallingOrSelfPermission(EXTERNAL_STORAGE_PERMISSION) == 0;
    }
}
