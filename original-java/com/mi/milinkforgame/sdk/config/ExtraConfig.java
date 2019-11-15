package com.mi.milinkforgame.sdk.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.info.NetworkDash;
import com.mi.milinkforgame.sdk.base.os.info.WifiDash;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.Map;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

public class ExtraConfig {
    public static String EXTRA_DATAV1 = "extra_dataV1";
    private static String TAG = ExtraConfig.class.getName();
    private static Map<String, String> currentConfig = null;
    private static String mnsSharePath = "mns_share_data";

    /* JADX WARNING: Removed duplicated region for block: B:51:0x00a0 A[SYNTHETIC, Splitter:B:51:0x00a0] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized java.util.Map<java.lang.String, java.lang.String> readConfig() {
        /*
            r1 = 0
            java.lang.Class<com.mi.milinkforgame.sdk.config.ExtraConfig> r3 = com.mi.milinkforgame.sdk.config.ExtraConfig.class
            monitor-enter(r3)
            r0 = 0
            android.content.Context r2 = com.mi.milinkforgame.sdk.base.Global.getContext()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.io.File r2 = r2.getFilesDir()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            r4.<init>()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.String r4 = java.io.File.separator     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.String r4 = EXTRA_DATAV1     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.io.File r4 = new java.io.File     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            r4.<init>(r2)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            boolean r2 = r4.exists()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            if (r2 != 0) goto L_0x0049
            if (r1 == 0) goto L_0x003a
            r0.close()     // Catch:{ IOException -> 0x003d }
        L_0x003a:
            r0 = r1
        L_0x003b:
            monitor-exit(r3)
            return r0
        L_0x003d:
            r0 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0046 }
            java.lang.String r4 = "loadConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r0)     // Catch:{ all -> 0x0046 }
            goto L_0x003a
        L_0x0046:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L_0x0049:
            android.content.Context r2 = com.mi.milinkforgame.sdk.base.Global.getContext()     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.String r4 = EXTRA_DATAV1     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.io.FileInputStream r4 = r2.openFileInput(r4)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            if (r4 != 0) goto L_0x0065
            if (r1 == 0) goto L_0x005a
            r0.close()     // Catch:{ IOException -> 0x005c }
        L_0x005a:
            r0 = r1
            goto L_0x003b
        L_0x005c:
            r0 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0046 }
            java.lang.String r4 = "loadConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r0)     // Catch:{ all -> 0x0046 }
            goto L_0x005a
        L_0x0065:
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            r0.<init>(r4)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            r2.<init>(r0)     // Catch:{ Exception -> 0x0084, all -> 0x009d }
            java.lang.Object r0 = r2.readObject()     // Catch:{ Exception -> 0x00b0 }
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ Exception -> 0x00b0 }
            if (r2 == 0) goto L_0x003b
            r2.close()     // Catch:{ IOException -> 0x007b }
            goto L_0x003b
        L_0x007b:
            r1 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0046 }
            java.lang.String r4 = "loadConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r1)     // Catch:{ all -> 0x0046 }
            goto L_0x003b
        L_0x0084:
            r0 = move-exception
            r2 = r1
        L_0x0086:
            java.lang.String r4 = TAG     // Catch:{ all -> 0x00ad }
            java.lang.String r5 = "loadConfig fail"
            android.util.Log.e(r4, r5, r0)     // Catch:{ all -> 0x00ad }
            if (r2 == 0) goto L_0x0092
            r2.close()     // Catch:{ IOException -> 0x0094 }
        L_0x0092:
            r0 = r1
            goto L_0x003b
        L_0x0094:
            r0 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0046 }
            java.lang.String r4 = "loadConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r0)     // Catch:{ all -> 0x0046 }
            goto L_0x0092
        L_0x009d:
            r0 = move-exception
        L_0x009e:
            if (r1 == 0) goto L_0x00a3
            r1.close()     // Catch:{ IOException -> 0x00a4 }
        L_0x00a3:
            throw r0     // Catch:{ all -> 0x0046 }
        L_0x00a4:
            r1 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0046 }
            java.lang.String r4 = "loadConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r1)     // Catch:{ all -> 0x0046 }
            goto L_0x00a3
        L_0x00ad:
            r0 = move-exception
            r1 = r2
            goto L_0x009e
        L_0x00b0:
            r0 = move-exception
            goto L_0x0086
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.config.ExtraConfig.readConfig():java.util.Map");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x006c A[SYNTHETIC, Splitter:B:34:0x006c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void writeConfig(java.lang.String r5, java.lang.String r6) {
        /*
            java.lang.Class<com.mi.milinkforgame.sdk.config.ExtraConfig> r3 = com.mi.milinkforgame.sdk.config.ExtraConfig.class
            monitor-enter(r3)
            r1 = 0
            java.util.Map r0 = readConfig()     // Catch:{ Exception -> 0x0046 }
            currentConfig = r0     // Catch:{ Exception -> 0x0046 }
            java.util.Map<java.lang.String, java.lang.String> r0 = currentConfig     // Catch:{ Exception -> 0x0046 }
            if (r0 == 0) goto L_0x0039
            java.util.Map<java.lang.String, java.lang.String> r0 = currentConfig     // Catch:{ Exception -> 0x0046 }
            r0.put(r5, r6)     // Catch:{ Exception -> 0x0046 }
        L_0x0013:
            java.util.Map<java.lang.String, java.lang.String> r0 = currentConfig     // Catch:{ Exception -> 0x0046 }
            checkExpiredBssid(r0)     // Catch:{ Exception -> 0x0046 }
            android.content.Context r0 = com.mi.milinkforgame.sdk.base.Global.getContext()     // Catch:{ Exception -> 0x0046 }
            java.lang.String r2 = EXTRA_DATAV1     // Catch:{ Exception -> 0x0046 }
            r4 = 0
            java.io.FileOutputStream r0 = r0.openFileOutput(r2, r4)     // Catch:{ Exception -> 0x0046 }
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch:{ Exception -> 0x0046 }
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x0046 }
            r4.<init>(r0)     // Catch:{ Exception -> 0x0046 }
            r2.<init>(r4)     // Catch:{ Exception -> 0x0046 }
            java.util.Map<java.lang.String, java.lang.String> r0 = currentConfig     // Catch:{ Exception -> 0x007c, all -> 0x0079 }
            r2.writeObject(r0)     // Catch:{ Exception -> 0x007c, all -> 0x0079 }
            if (r2 == 0) goto L_0x0037
            r2.close()     // Catch:{ IOException -> 0x0060 }
        L_0x0037:
            monitor-exit(r3)
            return
        L_0x0039:
            java.util.HashMap r0 = new java.util.HashMap     // Catch:{ Exception -> 0x0046 }
            r0.<init>()     // Catch:{ Exception -> 0x0046 }
            currentConfig = r0     // Catch:{ Exception -> 0x0046 }
            java.util.Map<java.lang.String, java.lang.String> r0 = currentConfig     // Catch:{ Exception -> 0x0046 }
            r0.put(r5, r6)     // Catch:{ Exception -> 0x0046 }
            goto L_0x0013
        L_0x0046:
            r0 = move-exception
        L_0x0047:
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0069 }
            java.lang.String r4 = "saveConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r0)     // Catch:{ all -> 0x0069 }
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0054 }
            goto L_0x0037
        L_0x0054:
            r0 = move-exception
            java.lang.String r1 = TAG     // Catch:{ all -> 0x005d }
            java.lang.String r2 = "saveConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2, r0)     // Catch:{ all -> 0x005d }
            goto L_0x0037
        L_0x005d:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L_0x0060:
            r0 = move-exception
            java.lang.String r1 = TAG     // Catch:{ all -> 0x005d }
            java.lang.String r2 = "saveConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2, r0)     // Catch:{ all -> 0x005d }
            goto L_0x0037
        L_0x0069:
            r0 = move-exception
        L_0x006a:
            if (r1 == 0) goto L_0x006f
            r1.close()     // Catch:{ IOException -> 0x0070 }
        L_0x006f:
            throw r0     // Catch:{ all -> 0x005d }
        L_0x0070:
            r1 = move-exception
            java.lang.String r2 = TAG     // Catch:{ all -> 0x005d }
            java.lang.String r4 = "saveConfig fail"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r4, r1)     // Catch:{ all -> 0x005d }
            goto L_0x006f
        L_0x0079:
            r0 = move-exception
            r1 = r2
            goto L_0x006a
        L_0x007c:
            r0 = move-exception
            r1 = r2
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.config.ExtraConfig.writeConfig(java.lang.String, java.lang.String):void");
    }

    @Deprecated
    public static synchronized String readWifiOperatorByBSSID(String str) {
        String str2;
        synchronized (ExtraConfig.class) {
            try {
                Map readConfig = readConfig();
                if (readConfig == null) {
                    str2 = null;
                } else if (str != null) {
                    String str3 = (String) readConfig.get(str);
                    if (str3 == null) {
                        str2 = null;
                    } else {
                        String[] split = str3.split(":");
                        str2 = (split == null || split.length <= 0) ? null : split[0];
                    }
                } else {
                    str2 = null;
                }
            } catch (Exception e) {
                MiLinkLog.e(TAG, "read wifi operator by bssid fail", e);
                str2 = null;
            }
        }
        return str2;
    }

    public static synchronized String readOperator() {
        String str;
        String str2;
        synchronized (ExtraConfig.class) {
            try {
                Map readConfig = readConfig();
                if (readConfig == null) {
                    str = null;
                } else {
                    if (NetworkDash.isWifi()) {
                        str2 = WifiDash.getBSSID();
                    } else if (NetworkDash.isMobile()) {
                        str2 = NetworkDash.getApnName();
                    } else {
                        str2 = null;
                    }
                    if (str2 != null) {
                        String str3 = (String) readConfig.get(str2);
                        if (str3 == null) {
                            str = null;
                        } else {
                            String[] split = str3.split(":");
                            str = (split == null || split.length <= 0) ? null : split[0];
                        }
                    } else {
                        str = null;
                    }
                }
            } catch (Exception e) {
                MiLinkLog.e(TAG, "read wifi operator by bssid fail", e);
                str = null;
            }
        }
        return str;
    }

    private static void checkExpiredBssid(Map<String, String> map) {
        long j;
        if (map != null && true != map.isEmpty()) {
            Context context = Global.getContext();
            if (context != null) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(mnsSharePath, 0);
                if (System.currentTimeMillis() - sharedPreferences.getLong("check_time", 0) > 86400000) {
                    Settings setting = ConfigManager.getInstance().getSetting();
                    if (setting != null) {
                        j = setting.getLong(Settings.CLEAR_EXPIRE_OPERATOR, OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS);
                    } else {
                        j = 2592000000L;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    for (String str : map.keySet()) {
                        String[] split = ((String) map.get(str)).split(":");
                        if (split != null && split.length >= 2 && System.currentTimeMillis() - Long.parseLong(split[1]) > j) {
                            arrayList.add(str);
                        }
                    }
                    for (String remove : arrayList) {
                        map.remove(remove);
                    }
                    arrayList.clear();
                    Editor edit = sharedPreferences.edit();
                    edit.putLong("check_time", System.currentTimeMillis());
                    edit.commit();
                }
            }
        }
    }
}
