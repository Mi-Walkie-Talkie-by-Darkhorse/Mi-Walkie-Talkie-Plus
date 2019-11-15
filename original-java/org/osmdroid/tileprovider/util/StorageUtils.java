package org.osmdroid.tileprovider.util;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.UUID;

public class StorageUtils {
    public static final String EXTERNAL_SD_CARD = "externalSdCard";
    public static final String SD_CARD = "sdCard";
    private static final String TAG = "StorageUtils";

    public static class StorageInfo {
        String displayName = "";
        public final int display_number;
        public long freeSpace = 0;
        public final boolean internal;
        public final String path;
        public boolean readonly;

        public StorageInfo(String str, boolean z, boolean z2, int i) {
            this.path = str;
            this.internal = z;
            this.display_number = i;
            if (VERSION.SDK_INT >= 9) {
                this.freeSpace = new File(str).getFreeSpace();
            }
            if (!z2) {
                File file = new File(str + File.separator + UUID.randomUUID().toString());
                try {
                    file.createNewFile();
                    file.delete();
                    this.readonly = false;
                } catch (Throwable th) {
                    this.readonly = true;
                }
            } else {
                this.readonly = z2;
            }
            StringBuilder sb = new StringBuilder();
            if (z) {
                sb.append("Internal SD card");
            } else if (i > 1) {
                sb.append("SD card " + i);
            } else {
                sb.append("SD card");
            }
            if (z2) {
                sb.append(" (Read only)");
            }
            this.displayName = sb.toString();
        }

        public String getDisplayName() {
            return this.displayName;
        }

        public void setDisplayName(String str) {
            this.displayName = str;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x0197 A[SYNTHETIC, Splitter:B:102:0x0197] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x01a3 A[SYNTHETIC, Splitter:B:108:0x01a3] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00c4 A[SYNTHETIC, Splitter:B:47:0x00c4] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00d5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<org.osmdroid.tileprovider.util.StorageUtils.StorageInfo> getStorageList() {
        /*
            r15 = -1
            r2 = 1
            r3 = 0
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.lang.String r0 = ""
            java.lang.String r4 = ""
            java.io.File r1 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Throwable -> 0x0104 }
            if (r1 == 0) goto L_0x001a
            java.io.File r1 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Throwable -> 0x0104 }
            java.lang.String r0 = r1.getPath()     // Catch:{ Throwable -> 0x0104 }
        L_0x001a:
            r8 = r0
        L_0x001b:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ Throwable -> 0x010e }
            r1 = 9
            if (r0 < r1) goto L_0x010b
            boolean r0 = android.os.Environment.isExternalStorageRemovable()     // Catch:{ Throwable -> 0x010e }
            if (r0 != 0) goto L_0x010b
            r0 = r2
        L_0x0028:
            r7 = r0
        L_0x0029:
            java.lang.String r0 = android.os.Environment.getExternalStorageState()     // Catch:{ Throwable -> 0x0115 }
        L_0x002d:
            java.lang.String r1 = "mounted"
            boolean r1 = r0.equals(r1)     // Catch:{ Throwable -> 0x011f }
            if (r1 != 0) goto L_0x003d
            java.lang.String r1 = "mounted_ro"
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x011f }
            if (r0 == 0) goto L_0x011c
        L_0x003d:
            r0 = r2
        L_0x003e:
            r6 = r0
        L_0x003f:
            java.lang.String r0 = android.os.Environment.getExternalStorageState()     // Catch:{ Throwable -> 0x0126 }
            java.lang.String r1 = "mounted_ro"
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0126 }
        L_0x0049:
            r1 = 0
            java.util.HashSet r10 = new java.util.HashSet     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            r10.<init>()     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            java.io.FileReader r4 = new java.io.FileReader     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            java.lang.String r11 = "/proc/mounts"
            r4.<init>(r11)     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            r5.<init>(r4)     // Catch:{ FileNotFoundException -> 0x01b9, IOException -> 0x0190, all -> 0x019f }
            java.lang.String r1 = "StorageUtils"
            java.lang.String r4 = "/proc/mounts"
            android.util.Log.d(r1, r4)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r1 = r2
        L_0x0063:
            java.lang.String r4 = r5.readLine()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r4 == 0) goto L_0x016e
            java.lang.String r11 = "StorageUtils"
            android.util.Log.d(r11, r4)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r11 = "vfat"
            boolean r11 = r4.contains(r11)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r11 != 0) goto L_0x007e
            java.lang.String r11 = "/mnt"
            boolean r11 = r4.contains(r11)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r11 == 0) goto L_0x0063
        L_0x007e:
            java.util.StringTokenizer r11 = new java.util.StringTokenizer     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r12 = " "
            r11.<init>(r4, r12)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r11.nextToken()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r12 = r11.nextToken()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            boolean r13 = r10.contains(r12)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 != 0) goto L_0x0063
            r11.nextToken()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r11 = r11.nextToken()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r13 = ","
            java.lang.String[] r11 = r11.split(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.util.List r11 = java.util.Arrays.asList(r11)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            java.lang.String r13 = "ro"
            boolean r11 = r11.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            boolean r13 = r12.equals(r8)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 == 0) goto L_0x012d
            r10.add(r8)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r4 = 0
            org.osmdroid.tileprovider.util.StorageUtils$StorageInfo r12 = new org.osmdroid.tileprovider.util.StorageUtils$StorageInfo     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r13 = -1
            r12.<init>(r8, r7, r11, r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r9.add(r4, r12)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            goto L_0x0063
        L_0x00bd:
            r0 = move-exception
            r1 = r5
        L_0x00bf:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x01b4 }
            if (r1 == 0) goto L_0x00c7
            r1.close()     // Catch:{ IOException -> 0x01ac }
        L_0x00c7:
            java.util.Set r0 = getAllStorageLocationsRevised()
            java.util.Iterator r5 = r0.iterator()
        L_0x00cf:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L_0x01b1
            java.lang.Object r0 = r5.next()
            java.io.File r0 = (java.io.File) r0
            r4 = r3
        L_0x00dc:
            int r1 = r9.size()
            if (r4 >= r1) goto L_0x01bc
            java.lang.Object r1 = r9.get(r4)
            org.osmdroid.tileprovider.util.StorageUtils$StorageInfo r1 = (org.osmdroid.tileprovider.util.StorageUtils.StorageInfo) r1
            java.lang.String r1 = r1.path
            java.lang.String r6 = r0.getAbsolutePath()
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L_0x01a7
            r1 = r2
        L_0x00f5:
            if (r1 != 0) goto L_0x00cf
            org.osmdroid.tileprovider.util.StorageUtils$StorageInfo r1 = new org.osmdroid.tileprovider.util.StorageUtils$StorageInfo
            java.lang.String r0 = r0.getAbsolutePath()
            r1.<init>(r0, r3, r3, r15)
            r9.add(r1)
            goto L_0x00cf
        L_0x0104:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            r8 = r0
            goto L_0x001b
        L_0x010b:
            r0 = r3
            goto L_0x0028
        L_0x010e:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            r7 = r3
            goto L_0x0029
        L_0x0115:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            r0 = r4
            goto L_0x002d
        L_0x011c:
            r0 = r3
            goto L_0x003e
        L_0x011f:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            r6 = r3
            goto L_0x003f
        L_0x0126:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            r0 = r2
            goto L_0x0049
        L_0x012d:
            java.lang.String r13 = "/dev/block/vold"
            boolean r13 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 == 0) goto L_0x0063
            java.lang.String r13 = "/mnt/secure"
            boolean r13 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 != 0) goto L_0x0063
            java.lang.String r13 = "/mnt/asec"
            boolean r13 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 != 0) goto L_0x0063
            java.lang.String r13 = "/mnt/obb"
            boolean r13 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 != 0) goto L_0x0063
            java.lang.String r13 = "/dev/mapper"
            boolean r13 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r13 != 0) goto L_0x0063
            java.lang.String r13 = "tmpfs"
            boolean r4 = r4.contains(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r4 != 0) goto L_0x0063
            r10.add(r12)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            org.osmdroid.tileprovider.util.StorageUtils$StorageInfo r13 = new org.osmdroid.tileprovider.util.StorageUtils$StorageInfo     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r14 = 0
            int r4 = r1 + 1
            r13.<init>(r12, r14, r11, r1)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r9.add(r13)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r1 = r4
            goto L_0x0063
        L_0x016e:
            boolean r1 = r10.contains(r8)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r1 != 0) goto L_0x0186
            if (r6 == 0) goto L_0x0186
            int r1 = r8.length()     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            if (r1 <= 0) goto L_0x0186
            r1 = 0
            org.osmdroid.tileprovider.util.StorageUtils$StorageInfo r4 = new org.osmdroid.tileprovider.util.StorageUtils$StorageInfo     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r6 = -1
            r4.<init>(r8, r7, r0, r6)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
            r9.add(r1, r4)     // Catch:{ FileNotFoundException -> 0x00bd, IOException -> 0x01b7 }
        L_0x0186:
            if (r5 == 0) goto L_0x00c7
            r5.close()     // Catch:{ IOException -> 0x018d }
            goto L_0x00c7
        L_0x018d:
            r0 = move-exception
            goto L_0x00c7
        L_0x0190:
            r0 = move-exception
            r5 = r1
        L_0x0192:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x01b2 }
            if (r5 == 0) goto L_0x00c7
            r5.close()     // Catch:{ IOException -> 0x019c }
            goto L_0x00c7
        L_0x019c:
            r0 = move-exception
            goto L_0x00c7
        L_0x019f:
            r0 = move-exception
            r5 = r1
        L_0x01a1:
            if (r5 == 0) goto L_0x01a6
            r5.close()     // Catch:{ IOException -> 0x01af }
        L_0x01a6:
            throw r0
        L_0x01a7:
            int r1 = r4 + 1
            r4 = r1
            goto L_0x00dc
        L_0x01ac:
            r0 = move-exception
            goto L_0x00c7
        L_0x01af:
            r1 = move-exception
            goto L_0x01a6
        L_0x01b1:
            return r9
        L_0x01b2:
            r0 = move-exception
            goto L_0x01a1
        L_0x01b4:
            r0 = move-exception
            r5 = r1
            goto L_0x01a1
        L_0x01b7:
            r0 = move-exception
            goto L_0x0192
        L_0x01b9:
            r0 = move-exception
            goto L_0x00bf
        L_0x01bc:
            r1 = r3
            goto L_0x00f5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.util.StorageUtils.getStorageList():java.util.List");
    }

    public static File getStorage() {
        StorageInfo storageInfo = null;
        List storageList = getStorageList();
        int i = 0;
        StorageInfo storageInfo2 = storageInfo;
        while (i < storageList.size()) {
            StorageInfo storageInfo3 = (StorageInfo) storageList.get(i);
            if (storageInfo3.readonly || !isWritable(new File(storageInfo3.path)) || (storageInfo2 != null && storageInfo2.freeSpace >= storageInfo3.freeSpace)) {
                storageInfo3 = storageInfo2;
            }
            i++;
            storageInfo2 = storageInfo3;
        }
        if (storageInfo2 != null) {
            return new File(storageInfo2.path);
        }
        try {
            return Environment.getExternalStorageDirectory();
        } catch (Exception e) {
            return storageInfo;
        }
    }

    public static File getStorage(Context context) {
        StorageInfo storageInfo = null;
        List storageList = getStorageList();
        int i = 0;
        while (i < storageList.size()) {
            StorageInfo storageInfo2 = (StorageInfo) storageList.get(i);
            if (storageInfo2.readonly || !isWritable(new File(storageInfo2.path)) || (storageInfo != null && storageInfo.freeSpace >= storageInfo2.freeSpace)) {
                storageInfo2 = storageInfo;
            }
            i++;
            storageInfo = storageInfo2;
        }
        if (storageInfo != null) {
            return new File(storageInfo.path);
        }
        return new File(context.getDatabasePath("temp.sqlite").getAbsolutePath().replace("temp.sqlite", ""));
    }

    public static boolean isAvailable() {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) {
            return true;
        }
        return false;
    }

    public static String getSdCardPath() {
        return Environment.getExternalStorageDirectory().getPath() + "/";
    }

    public static boolean isWritable() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        return false;
    }

    public static boolean isWritable(File file) {
        try {
            File file2 = new File(file.getAbsolutePath() + File.separator + "osm.tmp");
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write("hi".getBytes());
            fileOutputStream.close();
            Log.i(TAG, file.getAbsolutePath() + " is writable");
            file2.delete();
            return true;
        } catch (Throwable th) {
            Log.i(TAG, file.getAbsolutePath() + " is NOT writable");
            return false;
        }
    }

    public static Map<String, File> getAllStorageLocations() {
        HashMap hashMap = new HashMap(10);
        ArrayList<String> arrayList = new ArrayList<>(10);
        ArrayList arrayList2 = new ArrayList(10);
        arrayList.add("/mnt/sdcard");
        arrayList2.add("/mnt/sdcard");
        try {
            File file = new File("/proc/mounts");
            if (file.exists()) {
                Scanner scanner = new Scanner(file);
                while (scanner.hasNext()) {
                    String nextLine = scanner.nextLine();
                    if (nextLine.startsWith("/dev/block/vold/")) {
                        String str = nextLine.split(Token.SEPARATOR)[1];
                        if (!str.equals("/mnt/sdcard")) {
                            arrayList.add(str);
                        }
                    }
                }
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
        try {
            File file2 = new File("/system/etc/vold.fstab");
            if (file2.exists()) {
                Scanner scanner2 = new Scanner(file2);
                while (scanner2.hasNext()) {
                    String nextLine2 = scanner2.nextLine();
                    if (nextLine2.startsWith("dev_mount")) {
                        String str2 = nextLine2.split(Token.SEPARATOR)[2];
                        if (str2.contains(":")) {
                            str2 = str2.substring(0, str2.indexOf(":"));
                        }
                        if (!str2.equals("/mnt/sdcard")) {
                            arrayList2.add(str2);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        int i = 0;
        while (i < arrayList.size()) {
            if (!arrayList2.contains((String) arrayList.get(i))) {
                int i2 = i - 1;
                arrayList.remove(i);
                i = i2;
            }
            i++;
        }
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList(10);
        for (String file3 : arrayList) {
            File file4 = new File(file3);
            if (file4.exists() && file4.isDirectory() && file4.canWrite()) {
                File[] listFiles = file4.listFiles();
                String str3 = "[";
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i3 = 0;
                    while (i3 < length) {
                        File file5 = listFiles[i3];
                        i3++;
                        str3 = str3 + file5.getName().hashCode() + ":" + file5.length() + ", ";
                    }
                }
                String str4 = str3 + "]";
                if (!arrayList3.contains(str4)) {
                    String str5 = "sdCard_" + hashMap.size();
                    if (hashMap.size() == 0) {
                        str5 = SD_CARD;
                    } else if (hashMap.size() == 1) {
                        str5 = EXTERNAL_SD_CARD;
                    }
                    arrayList3.add(str4);
                    hashMap.put(str5, file4);
                }
            }
        }
        arrayList.clear();
        if (hashMap.isEmpty()) {
            hashMap.put(SD_CARD, Environment.getExternalStorageDirectory());
        }
        if (!hashMap.containsValue(Environment.getExternalStorageDirectory())) {
            hashMap.put(SD_CARD, Environment.getExternalStorageDirectory());
        }
        String str6 = System.getenv("EXTERNAL_STORAGE");
        if (str6 != null) {
            File file6 = new File(str6);
            if (file6.exists() && !hashMap.containsValue(file6)) {
                hashMap.put(SD_CARD, file6);
            }
        }
        String str7 = System.getenv("SECONDARY_STORAGE");
        if (str7 != null) {
            String[] split = str7.split(File.pathSeparator);
            for (String file7 : split) {
                File file8 = new File(file7);
                if (file8.exists() && !hashMap.containsValue(file8)) {
                    hashMap.put(SD_CARD, file8);
                }
            }
        }
        return hashMap;
    }

    private static Set<File> getAllStorageLocationsRevised() {
        HashSet hashSet = new HashSet();
        String str = System.getenv("EXTERNAL_STORAGE");
        if (str != null) {
            File file = new File(str + File.separator);
            if (isWritable(file)) {
                hashSet.add(file);
            }
        }
        String str2 = System.getenv("SECONDARY_STORAGE");
        if (str2 != null) {
            String[] split = str2.split(File.pathSeparator);
            for (int i = 0; i < split.length; i++) {
                File file2 = new File(split[i] + File.separator);
                if (isWritable(file2)) {
                    hashSet.add(file2);
                }
            }
        }
        if (Environment.getExternalStorageDirectory() != null) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (isWritable(externalStorageDirectory)) {
                hashSet.add(externalStorageDirectory);
            }
        }
        ArrayList<String> arrayList = new ArrayList<>(10);
        ArrayList arrayList2 = new ArrayList(10);
        arrayList.add("/mnt/sdcard");
        arrayList2.add("/mnt/sdcard");
        try {
            File file3 = new File("/proc/mounts");
            if (file3.exists()) {
                Scanner scanner = new Scanner(file3);
                while (scanner.hasNext()) {
                    String nextLine = scanner.nextLine();
                    if (nextLine.startsWith("/dev/block/vold/")) {
                        String str3 = nextLine.split(Token.SEPARATOR)[1];
                        if (!str3.equals("/mnt/sdcard")) {
                            arrayList.add(str3);
                        }
                    }
                }
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
        try {
            File file4 = new File("/system/etc/vold.fstab");
            if (file4.exists()) {
                Scanner scanner2 = new Scanner(file4);
                while (scanner2.hasNext()) {
                    String nextLine2 = scanner2.nextLine();
                    if (nextLine2.startsWith("dev_mount")) {
                        String str4 = nextLine2.split(Token.SEPARATOR)[2];
                        if (str4.contains(":")) {
                            str4 = str4.substring(0, str4.indexOf(":"));
                        }
                        if (!str4.equals("/mnt/sdcard")) {
                            arrayList2.add(str4);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        int i2 = 0;
        while (i2 < arrayList.size()) {
            if (!arrayList2.contains((String) arrayList.get(i2))) {
                int i3 = i2 - 1;
                arrayList.remove(i2);
                i2 = i3;
            }
            i2++;
        }
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList(10);
        for (String file5 : arrayList) {
            File file6 = new File(file5);
            if (file6.exists() && file6.isDirectory() && file6.canWrite()) {
                File[] listFiles = file6.listFiles();
                String str5 = "[";
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i4 = 0;
                    while (i4 < length) {
                        File file7 = listFiles[i4];
                        i4++;
                        str5 = str5 + file7.getName().hashCode() + ":" + file7.length() + ", ";
                    }
                }
                String str6 = str5 + "]";
                if (!arrayList3.contains(str6)) {
                    "sdCard_" + hashSet.size();
                    if (hashSet.size() == 0) {
                        String str7 = SD_CARD;
                    } else if (hashSet.size() == 1) {
                        String str8 = EXTERNAL_SD_CARD;
                    }
                    arrayList3.add(str6);
                    if (isWritable(file6)) {
                        hashSet.add(file6);
                    }
                }
            }
        }
        arrayList.clear();
        return hashSet;
    }
}
