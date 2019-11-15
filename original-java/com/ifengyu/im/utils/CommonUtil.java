package com.ifengyu.im.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonUtil {
    private static Logger logger = Logger.getLogger(CommonUtil.class);

    public static boolean isTopActivy(Context context, String str) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ComponentName componentName = activityManager.getRunningTasks(1).size() > 0 ? ((RunningTaskInfo) activityManager.getRunningTasks(1).get(0)).topActivity : null;
        if (componentName == null) {
            return false;
        }
        return componentName.getClassName().equals(str);
    }

    public static boolean checkSDCard() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return true;
        }
        return false;
    }

    public static long getSDFreeSize() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1024) / 1024;
    }

    private static long getSDAllSize() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 1024) / 1024;
    }

    public static byte[] intToBytes(int i) {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i2] = (byte) (i >> (24 - (i2 * 8)));
        }
        return bArr;
    }

    public static byte[] float2byte(float f) {
        int floatToIntBits = Float.floatToIntBits(f);
        byte[] bArr = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr[i] = (byte) (floatToIntBits >> (24 - (i * 8)));
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        for (int i2 = 0; i2 < length / 2; i2++) {
            byte b = bArr2[i2];
            bArr2[i2] = bArr2[(length - i2) - 1];
            bArr2[(length - i2) - 1] = b;
        }
        return bArr2;
    }

    public static int byteArray2int(byte[] bArr) {
        return (bArr[0] << 24) + (bArr[1] << Tnaf.POW_2_WIDTH) + (bArr[2] << 8) + bArr[3];
    }

    public static String matchUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Matcher matcher = Pattern.compile("[http]+[://]+[0-9A-Za-z:/[-]_#[?][=][.][&]]*", 2).matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }

    public static String getImageSavePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "MGJ-IM" + File.separator + "images");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath() + File.separator + str;
    }

    public static File getImageSavePath() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "MGJ-IM" + File.separator + "images");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor = null;
        String str2 = "_data";
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_data"));
                        if (query == null) {
                            return string;
                        }
                        query.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int getDefaultPannelHeight(Context context) {
        if (context != null) {
            return (int) (((double) getElementSzie(context)) * 5.5d);
        }
        return 300;
    }

    public static int getAudioBkSize(int i, Context context) {
        int elementSzie = getElementSzie(context) * 2;
        if (i <= 0) {
            return -1;
        }
        if (i <= 2) {
            return elementSzie;
        }
        if (i <= 8) {
            return (int) (((float) elementSzie) + (((float) elementSzie) * ((float) (((double) (i - 2)) / 6.0d))));
        } else if (i > 60) {
            return -1;
        } else {
            return (int) (((float) (elementSzie * 2)) + (((float) elementSzie) * ((float) (((double) (i - 8)) / 52.0d))));
        }
    }

    public static int getElementSzie(Context context) {
        if (context == null) {
            return 40;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int px2dip = px2dip((float) displayMetrics.heightPixels, context);
        int px2dip2 = px2dip((float) displayMetrics.widthPixels, context);
        int i = px2dip2 / 6;
        if (px2dip2 >= 800) {
            return 60;
        }
        if (px2dip2 >= 650) {
            return 55;
        }
        if (px2dip2 >= 600) {
            return 50;
        }
        if (px2dip <= 400) {
            return 20;
        }
        if (px2dip <= 480) {
            return 25;
        }
        if (px2dip <= 520) {
            return 30;
        }
        if (px2dip <= 570) {
            return 35;
        }
        if (px2dip <= 640) {
            if (displayMetrics.heightPixels <= 960) {
                return 50;
            }
            if (displayMetrics.heightPixels <= 1000) {
                return 45;
            }
        }
        return i;
    }

    private static int px2dip(float f, Context context) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String getAudioSavePath(int i) {
        String str = getSavePath(20) + i + "_" + String.valueOf(System.currentTimeMillis()) + ".spx";
        File parentFile = new File(str).getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        return str;
    }

    public static String getSavePath(int i) {
        String str = i == 19 ? "images" : "audio";
        if (checkSDCard()) {
            return Environment.getExternalStorageDirectory().toString() + File.separator + "MGJ-IM" + File.separator + str + File.separator;
        }
        return Environment.getDataDirectory().toString() + File.separator + "MGJ-IM" + File.separator + str + File.separator;
    }

    public static void hideInput(Activity activity) {
        View peekDecorView = activity.getWindow().peekDecorView();
        if (peekDecorView != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0053 A[SYNTHETIC, Splitter:B:28:0x0053] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0061 A[SYNTHETIC, Splitter:B:35:0x0061] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:16:0x003e=Splitter:B:16:0x003e, B:25:0x004e=Splitter:B:25:0x004e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long getmem_TOLAL() {
        /*
            r0 = 0
            java.lang.String r1 = "/proc/meminfo"
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x003c, IOException -> 0x004c, all -> 0x005c }
            java.io.FileReader r3 = new java.io.FileReader     // Catch:{ FileNotFoundException -> 0x003c, IOException -> 0x004c, all -> 0x005c }
            r3.<init>(r1)     // Catch:{ FileNotFoundException -> 0x003c, IOException -> 0x004c, all -> 0x005c }
            r1 = 8
            r2.<init>(r3, r1)     // Catch:{ FileNotFoundException -> 0x003c, IOException -> 0x004c, all -> 0x005c }
            java.lang.String r1 = r2.readLine()     // Catch:{ FileNotFoundException -> 0x006e, IOException -> 0x006c }
            if (r1 == 0) goto L_0x0016
            r0 = r1
        L_0x0016:
            if (r2 == 0) goto L_0x001b
            r2.close()     // Catch:{ IOException -> 0x0037 }
        L_0x001b:
            r1 = 58
            int r1 = r0.indexOf(r1)
            r2 = 107(0x6b, float:1.5E-43)
            int r2 = r0.indexOf(r2)
            int r1 = r1 + 1
            java.lang.String r0 = r0.substring(r1, r2)
            java.lang.String r0 = r0.trim()
            int r0 = java.lang.Integer.parseInt(r0)
            long r0 = (long) r0
            return r0
        L_0x0037:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001b
        L_0x003c:
            r1 = move-exception
            r2 = r0
        L_0x003e:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x006a }
            if (r2 == 0) goto L_0x001b
            r2.close()     // Catch:{ IOException -> 0x0047 }
            goto L_0x001b
        L_0x0047:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001b
        L_0x004c:
            r1 = move-exception
            r2 = r0
        L_0x004e:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x006a }
            if (r2 == 0) goto L_0x001b
            r2.close()     // Catch:{ IOException -> 0x0057 }
            goto L_0x001b
        L_0x0057:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001b
        L_0x005c:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x005f:
            if (r2 == 0) goto L_0x0064
            r2.close()     // Catch:{ IOException -> 0x0065 }
        L_0x0064:
            throw r0
        L_0x0065:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0064
        L_0x006a:
            r0 = move-exception
            goto L_0x005f
        L_0x006c:
            r1 = move-exception
            goto L_0x004e
        L_0x006e:
            r1 = move-exception
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.utils.CommonUtil.getmem_TOLAL():long");
    }

    public static boolean gifCheck(String str) {
        return !TextUtils.isEmpty(str) && str.equals(matchUrl(str)) && str.toLowerCase().substring(str.length() + -4, str.length()).equals(".gif");
    }
}
