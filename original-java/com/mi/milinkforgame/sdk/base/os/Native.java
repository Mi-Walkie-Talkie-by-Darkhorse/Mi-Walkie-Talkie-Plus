package com.mi.milinkforgame.sdk.base.os;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import com.mi.milinkforgame.sdk.base.os.Device.Storage;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.milinkforgame.sdk.util.FileUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;

public class Native {
    private static final String DEFAULT_ASSETS_SO_DIR_NAME = "lib/armeabi";
    private static final String DEFAULT_LIB_DIR_NAME = "qzlib";
    private static final String LIB_URL = "";
    private static final String PREFENCE_NAME = "game_guarder";
    private static final HashMap<String, String> REAL_SO_PATH = new HashMap<>();
    private static final String TAG = "LibraryLoader";
    private static final char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static class NativeException extends RuntimeException {
        private static final long serialVersionUID = 411247780482311098L;

        public NativeException() {
        }

        public NativeException(String str) {
            super(str);
        }

        public NativeException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0094 A[SYNTHETIC, Splitter:B:16:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0292 A[SYNTHETIC, Splitter:B:63:0x0292] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean loadLibrary(java.lang.String r9) {
        /*
            r8 = 0
            r1 = 0
            r0 = 1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "lib"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r9)
            java.lang.String r3 = ".so"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r2.toString()
            java.io.File r4 = new java.io.File
            java.io.File r2 = getLibDir()
            r4.<init>(r2, r3)
            java.util.HashMap<java.lang.String, java.lang.String> r2 = REAL_SO_PATH
            r2.put(r9, r8)
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            r5.<init>()     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            java.lang.String r6 = "try to load library: "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            java.lang.StringBuilder r5 = r5.append(r9)     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            java.lang.String r6 = " from system lib"
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            java.lang.String r5 = r5.toString()     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.d(r2, r5)     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
            java.lang.System.loadLibrary(r9)     // Catch:{ UnsatisfiedLinkError -> 0x004c, Exception -> 0x014d, Error -> 0x016e }
        L_0x004b:
            return r0
        L_0x004c:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r9)
            java.lang.String r7 = " from system lib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
        L_0x006b:
            boolean r2 = r4.exists()
            if (r2 == 0) goto L_0x007b
            java.lang.String r2 = getDefaultVersionName()
            boolean r2 = hasCopiedInSpecifiedVersion(r2, r3)
            if (r2 != 0) goto L_0x008e
        L_0x007b:
            boolean r2 = isFileInAssetsPath(r3)
            if (r2 != 0) goto L_0x0192
            boolean r2 = downloadNativeLibs()
            if (r2 == 0) goto L_0x018f
            java.lang.String r2 = getDefaultVersionName()
            setCopiedInSpecifiedVersion(r2, r3, r0)
        L_0x008e:
            boolean r2 = r4.exists()
            if (r2 == 0) goto L_0x00e2
            java.lang.String r2 = r4.getAbsolutePath()     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            r6.<init>()     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.String r7 = "try to load library: "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.StringBuilder r6 = r6.append(r2)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.String r7 = " from qzlib"
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.String r6 = r6.toString()     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.d(r5, r6)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.lang.System.load(r2)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            java.util.HashMap<java.lang.String, java.lang.String> r5 = REAL_SO_PATH     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            r5.put(r9, r2)     // Catch:{ UnsatisfiedLinkError -> 0x00bf, Exception -> 0x01ef, Error -> 0x0214 }
            goto L_0x004b
        L_0x00bf:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = r4.getAbsolutePath()
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = " from qzlib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
        L_0x00e2:
            boolean r2 = isFileInAssetsPath(r3)
            if (r2 == 0) goto L_0x0331
            boolean r2 = r4.exists()
            if (r2 != 0) goto L_0x0239
            java.lang.String r2 = "LibraryLoader"
            java.lang.String r5 = "Copy Lib For NOT_EXIST"
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r5)
            r2 = r0
        L_0x00f6:
            if (r2 != 0) goto L_0x0105
            boolean r5 = downloadNativeLibs()
            if (r5 == 0) goto L_0x0259
            java.lang.String r5 = getDefaultVersionName()
            setCopiedInSpecifiedVersion(r5, r3, r0)
        L_0x0105:
            if (r2 == 0) goto L_0x012c
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.StringBuilder r5 = r5.append(r3)
            java.lang.String r6 = " is something wrong,try to forceCopy again!"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r5)
            java.lang.String r2 = getDefaultVersionName()     // Catch:{ NativeException -> 0x025c, Exception -> 0x0277 }
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ NativeException -> 0x025c, Exception -> 0x0277 }
            r6 = 0
            r5[r6] = r3     // Catch:{ NativeException -> 0x025c, Exception -> 0x0277 }
            forceCopySoFile(r2, r5)     // Catch:{ NativeException -> 0x025c, Exception -> 0x0277 }
        L_0x012c:
            boolean r2 = r4.exists()
            if (r2 != 0) goto L_0x0292
            java.lang.String r0 = "LibraryLoader"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "forceCopy done,but the sofile is not exist!"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r0, r2)
            r0 = r1
            goto L_0x004b
        L_0x014d:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r9)
            java.lang.String r7 = " from system lib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x006b
        L_0x016e:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r9)
            java.lang.String r7 = " from system lib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x006b
        L_0x018f:
            r0 = r1
            goto L_0x004b
        L_0x0192:
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.StringBuilder r5 = r5.append(r3)
            java.lang.String r6 = " not exist,try to forceCopy!"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r5)
            java.lang.String r2 = getDefaultVersionName()     // Catch:{ NativeException -> 0x01b9, Exception -> 0x01d4 }
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ NativeException -> 0x01b9, Exception -> 0x01d4 }
            r6 = 0
            r5[r6] = r3     // Catch:{ NativeException -> 0x01b9, Exception -> 0x01d4 }
            forceCopySoFile(r2, r5)     // Catch:{ NativeException -> 0x01b9, Exception -> 0x01d4 }
            goto L_0x008e
        L_0x01b9:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r6 = r6.append(r3)
            java.lang.String r7 = "forceCopy failed!"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x008e
        L_0x01d4:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r6 = r6.append(r3)
            java.lang.String r7 = "forceCopy failed!"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x008e
        L_0x01ef:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = r4.getAbsolutePath()
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = " from qzlib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x00e2
        L_0x0214:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "cannot load library "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = r4.getAbsolutePath()
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = " from qzlib"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x00e2
        L_0x0239:
            boolean r2 = isSameLength(r3)
            if (r2 != 0) goto L_0x0249
            java.lang.String r2 = "LibraryLoader"
            java.lang.String r5 = "Copy Lib For DIFF_LENGTHS"
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r5)
            r2 = r0
            goto L_0x00f6
        L_0x0249:
            boolean r2 = isSameMd5(r3)
            if (r2 != 0) goto L_0x0331
            java.lang.String r2 = "LibraryLoader"
            java.lang.String r5 = "Copy Lib For DEBUG_AND_MD5"
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r5)
            r2 = r0
            goto L_0x00f6
        L_0x0259:
            r0 = r1
            goto L_0x004b
        L_0x025c:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r6 = r6.append(r3)
            java.lang.String r7 = "forceCopy failed again!"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x012c
        L_0x0277:
            r2 = move-exception
            java.lang.String r5 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r6 = r6.append(r3)
            java.lang.String r7 = "forceCopy failed again!"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r5, r6, r2)
            goto L_0x012c
        L_0x0292:
            java.lang.String r2 = r4.getAbsolutePath()     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.String r3 = "LibraryLoader"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            r5.<init>()     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.String r6 = "try to load library: "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.StringBuilder r5 = r5.append(r2)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.String r6 = " from qzlib again!"
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.String r5 = r5.toString()     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r3, r5)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.lang.System.load(r2)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            java.util.HashMap<java.lang.String, java.lang.String> r3 = REAL_SO_PATH     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            r3.put(r9, r2)     // Catch:{ UnsatisfiedLinkError -> 0x02be, Exception -> 0x02e9, Error -> 0x030d }
            goto L_0x004b
        L_0x02be:
            r0 = move-exception
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "cannot load library "
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " from qzlib again"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r3, r0)
        L_0x02e1:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = REAL_SO_PATH
            r0.put(r9, r8)
            r0 = r1
            goto L_0x004b
        L_0x02e9:
            r0 = move-exception
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "cannot load library "
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " from qzlib again"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r3, r0)
            goto L_0x02e1
        L_0x030d:
            r0 = move-exception
            java.lang.String r2 = "LibraryLoader"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "cannot load library "
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " from qzlib again"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r2, r3, r0)
            goto L_0x02e1
        L_0x0331:
            r2 = r1
            goto L_0x00f6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Native.loadLibrary(java.lang.String):boolean");
    }

    public static String getSoPath(String str, String str2) {
        return (getInstallPath() + File.separator + str) + File.separator + str2;
    }

    public static File getLibDir() {
        return new File(getInstallPath() + File.separator + DEFAULT_LIB_DIR_NAME);
    }

    private static String getAssetsPath(String str) {
        return DEFAULT_ASSETS_SO_DIR_NAME + File.separator + str;
    }

    public static String getSORealPath(String str) {
        if (!REAL_SO_PATH.containsKey(str)) {
            return null;
        }
        return (String) REAL_SO_PATH.get(str);
    }

    private static boolean isFileInAssetsPath(String str) {
        try {
            String[] list = Global.getContext().getAssets().list(DEFAULT_ASSETS_SO_DIR_NAME);
            if (list == null) {
                return false;
            }
            for (String equalsIgnoreCase : list) {
                if (str.equalsIgnoreCase(equalsIgnoreCase)) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            CustomLogcat.e(TAG, "isFileInAssetsPath" + str, e);
            return false;
        }
    }

    private static boolean isSameMd5(String str) {
        try {
            String fileMd5 = getFileMd5(Global.getAssets().open(getAssetsPath(str)));
            if (TextUtils.isEmpty(fileMd5)) {
                return false;
            }
            String fileMd52 = getFileMd5(new FileInputStream(new File(getLibDir(), str)));
            boolean equals = fileMd5.equals(fileMd52);
            CustomLogcat.e(TAG, getAssetsPath(str) + " md5 = " + fileMd5 + Constants.ACCEPT_TIME_SEPARATOR_SP + (getLibDir() + File.separator + str) + " md5 = " + fileMd52);
            return equals;
        } catch (FileNotFoundException e) {
            MiLinkLog.e(TAG, (Throwable) e);
            return false;
        } catch (IOException e2) {
            MiLinkLog.e(TAG, (Throwable) e2);
            return false;
        }
    }

    /* JADX WARNING: type inference failed for: r0v1, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r1v2, types: [boolean] */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: type inference failed for: r0v11 */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r0v15 */
    /* JADX WARNING: type inference failed for: r0v16 */
    /* JADX WARNING: type inference failed for: r0v17 */
    /* JADX WARNING: type inference failed for: r0v18 */
    /* JADX WARNING: type inference failed for: r0v19 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v5
  assigns: []
  uses: []
  mth insns count: 80
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
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean isSameLength(java.lang.String r10) {
        /*
            r2 = 0
            r1 = 1
            java.io.File r0 = new java.io.File
            java.io.File r3 = getLibDir()
            r0.<init>(r3, r10)
            java.lang.String r0 = r0.getAbsolutePath()
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            android.content.res.AssetManager r4 = com.mi.milinkforgame.sdk.base.Global.getAssets()
            java.lang.String r5 = getAssetsPath(r10)
            android.content.res.AssetFileDescriptor r0 = r4.openFd(r5)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            if (r0 != 0) goto L_0x0023
        L_0x0022:
            return r1
        L_0x0023:
            java.lang.String r6 = "LibraryLoader"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            r7.<init>()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r5)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.String r8 = " size = "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            long r8 = r0.getLength()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.String r8 = ","
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r3)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.String r8 = " size = "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            long r8 = r3.length()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            java.lang.String r7 = r7.toString()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r6, r7)     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            long r6 = r3.length()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            long r8 = r0.getLength()     // Catch:{ FileNotFoundException -> 0x00cd, IOException -> 0x00ba, Exception -> 0x00ca }
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 != 0) goto L_0x00d0
            r0 = r1
        L_0x0068:
            if (r2 == 0) goto L_0x00b7
            java.io.InputStream r2 = r4.open(r5)     // Catch:{ Exception -> 0x00c3 }
            java.lang.String r4 = "LibraryLoader"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            r6.<init>()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.StringBuilder r5 = r6.append(r5)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.String r6 = " estimated size = "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            int r6 = r2.available()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.String r6 = ","
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.StringBuilder r5 = r5.append(r3)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.String r6 = " size = "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            long r6 = r3.length()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            java.lang.String r5 = r5.toString()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r4, r5)     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            long r4 = r3.length()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            int r3 = r2.available()     // Catch:{ IOException -> 0x00be, all -> 0x00c5 }
            long r6 = (long) r3
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 != 0) goto L_0x00b4
            r0 = r1
        L_0x00b4:
            r2.close()     // Catch:{ Exception -> 0x00c3 }
        L_0x00b7:
            r1 = r0
            goto L_0x0022
        L_0x00ba:
            r0 = move-exception
            r0 = r2
            r2 = r1
            goto L_0x0068
        L_0x00be:
            r1 = move-exception
            r2.close()     // Catch:{ Exception -> 0x00c3 }
            goto L_0x00b7
        L_0x00c3:
            r1 = move-exception
            goto L_0x00b7
        L_0x00c5:
            r1 = move-exception
            r2.close()     // Catch:{ Exception -> 0x00c3 }
            throw r1     // Catch:{ Exception -> 0x00c3 }
        L_0x00ca:
            r0 = move-exception
            r0 = r2
            goto L_0x00b7
        L_0x00cd:
            r0 = move-exception
            goto L_0x0022
        L_0x00d0:
            r0 = r2
            goto L_0x0068
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Native.isSameLength(java.lang.String):boolean");
    }

    private static String getFileMd5(InputStream inputStream) {
        return encrypt(inputStream, "MD5");
    }

    private static void copySoFile(String str) throws NativeException {
        CustomLogcat.i(TAG, "try to copy " + str);
        try {
            copyAssetLib(str, getAssetsPath(str), getLibDir().getAbsolutePath());
        } catch (Throwable th) {
            throw new NativeException("copy file:" + str + " failed!", th);
        }
    }

    private static String getDefaultVersionName() {
        try {
            return Global.getPackageManager().getPackageInfo(Global.getPackageName(), 0).versionName;
        } catch (Exception e) {
            return String.valueOf(System.currentTimeMillis());
        }
    }

    public static void forceCopySoFile(String str, String... strArr) throws NativeException {
        if (strArr != null) {
            for (String str2 : strArr) {
                copySoFile(str2);
                setCopiedInSpecifiedVersion(str, str2, true);
            }
        }
    }

    private static boolean hasCopiedInSpecifiedVersion(String str, String str2) {
        return Global.getSharedPreferences(PREFENCE_NAME, 0).getBoolean(getCopiedKey(str, str2), false);
    }

    private static void setCopiedInSpecifiedVersion(String str, String str2, boolean z) {
        SharedPreferences sharedPreferences = Global.getSharedPreferences(PREFENCE_NAME, 0);
        sharedPreferences.edit().putBoolean(getCopiedKey(str, str2), z).commit();
    }

    private static String getCopiedKey(String str, String str2) {
        return "check_" + str + "_" + str2;
    }

    @SuppressLint({"SdCardPath"})
    private static String getInstallPath() {
        File filesDir = Global.getFilesDir();
        if (filesDir == null) {
            filesDir = Global.getCacheDir();
        }
        if (filesDir != null) {
            return filesDir.getParent();
        }
        return "/data/data/" + Global.getPackageName();
    }

    private static boolean downloadNativeLibs() {
        File cacheDir;
        if (Storage.hasExternal()) {
            cacheDir = new File(Environment.getExternalStorageDirectory(), "mi" + File.separator + "milink");
        } else {
            cacheDir = Global.getCacheDir();
        }
        File file = new File(cacheDir, "milink_network_lib.zip");
        if (file.exists()) {
            file.delete();
        }
        CustomLogcat.w(TAG, "Prepare to Download Native Libs From Network ... ");
        CustomLogcat.w(TAG, "Url = ");
        boolean isSuccess = Http.isSuccess(Http.download("", file));
        CustomLogcat.w(TAG, "Download Native Libs => " + isSuccess);
        if (!isSuccess) {
            return false;
        }
        CustomLogcat.w(TAG, "Prepare to Install Native Libs ...");
        boolean unzip = FileUtils.unzip(file, getLibDir());
        CustomLogcat.w(TAG, "Install Native Libs => " + unzip);
        if (!file.exists()) {
            return unzip;
        }
        file.delete();
        return unzip;
    }

    public static String encrypt(InputStream inputStream, String str) {
        String str2 = null;
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                instance.update(bArr, 0, read);
            }
            str2 = bytes2HexStr(instance.digest());
        } catch (IOException e) {
        } catch (NoSuchAlgorithmException e2) {
        } finally {
            CommonUtils.closeDataObject(inputStream);
        }
        return str2;
    }

    private static String bytes2HexStr(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = digits[b & 15];
            cArr[i * 2] = digits[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0019, code lost:
        if (r9.trim().length() == 0) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized boolean copyAssetLib(java.lang.String r7, java.lang.String r8, java.lang.String r9) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 0
            java.lang.Class<com.mi.milinkforgame.sdk.base.os.Native> r5 = com.mi.milinkforgame.sdk.base.os.Native.class
            monitor-enter(r5)
            android.content.Context r2 = com.mi.milinkforgame.sdk.base.Global.getContext()     // Catch:{ all -> 0x0095 }
            if (r2 == 0) goto L_0x000d
            if (r8 != 0) goto L_0x000f
        L_0x000d:
            monitor-exit(r5)
            return r0
        L_0x000f:
            if (r9 == 0) goto L_0x001b
            java.lang.String r0 = r9.trim()     // Catch:{ all -> 0x0095 }
            int r0 = r0.length()     // Catch:{ all -> 0x0095 }
            if (r0 != 0) goto L_0x002a
        L_0x001b:
            java.lang.String r0 = "LibraryLoader"
            java.lang.String r3 = "not define lib out path"
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.e(r0, r3)     // Catch:{ all -> 0x0095 }
            java.io.File r0 = r2.getFilesDir()     // Catch:{ all -> 0x0095 }
            java.lang.String r9 = r0.getAbsolutePath()     // Catch:{ all -> 0x0095 }
        L_0x002a:
            java.io.File r0 = new java.io.File     // Catch:{ all -> 0x0095 }
            r0.<init>(r9)     // Catch:{ all -> 0x0095 }
            r0.mkdirs()     // Catch:{ all -> 0x0095 }
            java.lang.String r0 = "LibraryLoader"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0095 }
            r3.<init>()     // Catch:{ all -> 0x0095 }
            java.lang.String r4 = "copy lib:"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0095 }
            java.lang.StringBuilder r3 = r3.append(r8)     // Catch:{ all -> 0x0095 }
            java.lang.String r4 = " to "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0095 }
            java.lang.StringBuilder r3 = r3.append(r9)     // Catch:{ all -> 0x0095 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0095 }
            com.mi.milinkforgame.sdk.base.debug.CustomLogcat.d(r0, r3)     // Catch:{ all -> 0x0095 }
            android.content.res.AssetManager r0 = r2.getAssets()     // Catch:{ Throwable -> 0x00a1 }
            java.io.InputStream r3 = r0.open(r8)     // Catch:{ Throwable -> 0x00a1 }
            java.io.File r4 = new java.io.File     // Catch:{ Throwable -> 0x00a5 }
            r4.<init>(r9, r7)     // Catch:{ Throwable -> 0x00a5 }
            boolean r0 = r4.exists()     // Catch:{ Throwable -> 0x00a9 }
            if (r0 == 0) goto L_0x006a
            delete(r4)     // Catch:{ Throwable -> 0x00a9 }
        L_0x006a:
            r4.createNewFile()     // Catch:{ Throwable -> 0x00a9 }
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x00a9 }
            r2.<init>(r4)     // Catch:{ Throwable -> 0x00a9 }
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x0087 }
        L_0x0076:
            int r1 = r3.available()     // Catch:{ Throwable -> 0x0087 }
            if (r1 <= 0) goto L_0x0098
            int r1 = r3.read(r0)     // Catch:{ Throwable -> 0x0087 }
            if (r1 <= 0) goto L_0x0098
            r6 = 0
            r2.write(r0, r6, r1)     // Catch:{ Throwable -> 0x0087 }
            goto L_0x0076
        L_0x0087:
            r0 = move-exception
            r1 = r2
            r2 = r3
            r3 = r4
        L_0x008b:
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r1)     // Catch:{ all -> 0x0095 }
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r2)     // Catch:{ all -> 0x0095 }
            delete(r3)     // Catch:{ all -> 0x0095 }
            throw r0     // Catch:{ all -> 0x0095 }
        L_0x0095:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        L_0x0098:
            r2.close()     // Catch:{ Throwable -> 0x0087 }
            r3.close()     // Catch:{ Throwable -> 0x0087 }
            r0 = 1
            goto L_0x000d
        L_0x00a1:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L_0x008b
        L_0x00a5:
            r0 = move-exception
            r2 = r3
            r3 = r1
            goto L_0x008b
        L_0x00a9:
            r0 = move-exception
            r2 = r3
            r3 = r4
            goto L_0x008b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Native.copyAssetLib(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static void delete(File file) {
        delete(file, false);
    }

    public static void delete(File file, boolean z) {
        if (file != null && file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File delete : listFiles) {
                    delete(delete, z);
                }
                if (!z) {
                    file.delete();
                }
            }
        }
    }
}
