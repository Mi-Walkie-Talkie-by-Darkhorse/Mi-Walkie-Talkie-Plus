package com.mi.milinkforgame.sdk.config;

import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.base.os.Device.Network.Wifi;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.session.OptimumServerData;
import com.mi.milinkforgame.sdk.session.RecentlyServerData;
import com.mi.milinkforgame.sdk.session.ServerProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class MiLinkIpInfoManager {
    private static final String APN_ISP_FILE_NAME = "game_apnisps";
    private static final String BACK_UP_SERVER_FILE_NAME = "game_backupservers";
    private static final String DEFAULT_OPTIMUM_SERVER_KEY = "game_other";
    private static final ServerProfile[] GAME_DEFAULT_BACKUP_IP_LIST = {new ServerProfile("120.134.33.203", 0, 1, 5), new ServerProfile("124.243.204.31", 0, 1, 5), new ServerProfile("123.59.39.90", 0, 1, 5), new ServerProfile("120.131.6.91", 0, 1, 5)};
    private static final String GAME_DEFAULT_HOST = "game.chat.mi.com";
    private static final String OPTIMUM_SERVER_FILE_NAME = "game_optservers";
    private static final String RECENTLY_SERVER_FILE_NAME = "game_recentlyservers";
    private static final String TAG = "MiLinkIpInfoManager";
    private static MiLinkIpInfoManager sInstance = new MiLinkIpInfoManager();
    private ConcurrentHashMap<String, String> mApnIspMap = null;
    private List<ServerProfile> mBackupIPList = null;
    private ConcurrentHashMap<String, OptimumServerData> mOptimumIpMap = null;
    private ConcurrentHashMap<String, RecentlyServerData> mRcentlyIpMap = null;

    private MiLinkIpInfoManager() {
    }

    public static MiLinkIpInfoManager getInstance() {
        return sInstance;
    }

    public static String getDefaultHost() {
        return GAME_DEFAULT_HOST;
    }

    public static boolean isDefaultHost(String str) {
        return getDefaultHost().equals(str);
    }

    public ServerProfile getTestBackupIp() {
        return new ServerProfile("124.243.204.48", 0, 1, 5);
    }

    public ServerProfile getDefaultServer() {
        return new ServerProfile(getDefaultHost(), 0, 1, 4);
    }

    public synchronized OptimumServerData getCurrentApnOptimumServerData() {
        String str;
        str = DEFAULT_OPTIMUM_SERVER_KEY;
        String currentApn = getCurrentApn();
        if (!TextUtils.isEmpty(currentApn)) {
            str = (String) getApnIspMap().get(currentApn);
        }
        MiLinkLog.v(TAG, "get current apn optimum server list, apnKey is " + currentApn + ", ispKey is" + str);
        return getOptimumServerData(str);
    }

    private synchronized OptimumServerData getOptimumServerData(String str) {
        if (TextUtils.isEmpty(str)) {
            MiLinkLog.v(TAG, "get optimum server list, the value of the key is empty, use default key");
            str = DEFAULT_OPTIMUM_SERVER_KEY;
        } else {
            MiLinkLog.v(TAG, "get optimum server list, key is " + str);
        }
        return (OptimumServerData) getOptimumIpMap().get(str);
    }

    public synchronized void setOptmumServerList(String str, List<ServerProfile> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                if (TextUtils.isEmpty(str)) {
                    MiLinkLog.v(TAG, "set optimum server list, but key is empty, use default key");
                    str = DEFAULT_OPTIMUM_SERVER_KEY;
                }
                String currentApn = getCurrentApn();
                if (!TextUtils.isEmpty(currentApn)) {
                    getApnIspMap().put(currentApn, str);
                    saveApnIspMap();
                }
                OptimumServerData optimumServerData = getOptimumServerData(str);
                if (optimumServerData == null) {
                    optimumServerData = new OptimumServerData();
                }
                optimumServerData.setOptimumServers(list);
                optimumServerData.setTimeStamp(System.currentTimeMillis());
                getOptimumIpMap().put(str, optimumServerData);
                saveOptimumServerMap();
            }
        }
    }

    public synchronized RecentlyServerData getRecentlyServerData() {
        RecentlyServerData recentlyServerData;
        String currentApn = getCurrentApn();
        MiLinkLog.v(TAG, "get recently server list, apnKey is " + currentApn);
        if (!TextUtils.isEmpty(currentApn)) {
            recentlyServerData = (RecentlyServerData) getRcentlyIpMap().get(currentApn);
        } else {
            recentlyServerData = null;
        }
        return recentlyServerData;
    }

    public synchronized void setRecentlyServer(ServerProfile serverProfile) {
        if (serverProfile != null) {
            RecentlyServerData recentlyServerData = getRecentlyServerData();
            if (recentlyServerData == null) {
                recentlyServerData = new RecentlyServerData();
            }
            recentlyServerData.setRecentlyServer(serverProfile);
            recentlyServerData.setTimeStamp(System.currentTimeMillis());
            String currentApn = getCurrentApn();
            if (!TextUtils.isEmpty(currentApn)) {
                getRcentlyIpMap().put(currentApn, recentlyServerData);
                saveRecentlyServerMap();
            } else {
                MiLinkLog.v(TAG, "set recently server list, but key is null");
            }
        }
    }

    public synchronized void setBackupServerList(List<ServerProfile> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                this.mBackupIPList = list;
                saveBackupServerList();
            }
        }
    }

    public synchronized List<ServerProfile> getBackupServerList() {
        if (this.mBackupIPList == null) {
            try {
                this.mBackupIPList = (List) loadObject(BACK_UP_SERVER_FILE_NAME);
            } catch (Exception e) {
                this.mBackupIPList = null;
            }
            if (this.mBackupIPList == null) {
                this.mBackupIPList = new ArrayList();
            }
        }
        if (this.mBackupIPList.isEmpty()) {
            ServerProfile[] serverProfileArr = GAME_DEFAULT_BACKUP_IP_LIST;
            for (ServerProfile add : serverProfileArr) {
                this.mBackupIPList.add(add);
            }
        }
        return this.mBackupIPList;
    }

    public synchronized ConcurrentHashMap<String, OptimumServerData> getOptimumIpMap() {
        if (this.mOptimumIpMap == null) {
            try {
                this.mOptimumIpMap = (ConcurrentHashMap) loadObject(OPTIMUM_SERVER_FILE_NAME);
            } catch (Exception e) {
                this.mOptimumIpMap = null;
            }
            if (this.mOptimumIpMap == null) {
                this.mOptimumIpMap = new ConcurrentHashMap<>();
            }
        }
        return this.mOptimumIpMap;
    }

    public synchronized ConcurrentHashMap<String, RecentlyServerData> getRcentlyIpMap() {
        if (this.mRcentlyIpMap == null) {
            try {
                this.mRcentlyIpMap = (ConcurrentHashMap) loadObject(RECENTLY_SERVER_FILE_NAME);
            } catch (Exception e) {
                this.mRcentlyIpMap = null;
            }
            if (this.mRcentlyIpMap == null) {
                this.mRcentlyIpMap = new ConcurrentHashMap<>();
            }
        }
        return this.mRcentlyIpMap;
    }

    public synchronized ConcurrentHashMap<String, String> getApnIspMap() {
        if (this.mApnIspMap == null) {
            try {
                this.mApnIspMap = (ConcurrentHashMap) loadObject(APN_ISP_FILE_NAME);
            } catch (Exception e) {
                this.mApnIspMap = null;
            }
            if (this.mApnIspMap == null) {
                this.mApnIspMap = new ConcurrentHashMap<>();
            }
        }
        return this.mApnIspMap;
    }

    private synchronized boolean saveOptimumServerMap() {
        return saveObject(this.mOptimumIpMap, OPTIMUM_SERVER_FILE_NAME);
    }

    private synchronized boolean saveBackupServerList() {
        return saveObject(this.mBackupIPList, BACK_UP_SERVER_FILE_NAME);
    }

    private synchronized boolean saveRecentlyServerMap() {
        return saveObject(this.mRcentlyIpMap, RECENTLY_SERVER_FILE_NAME);
    }

    private synchronized boolean saveApnIspMap() {
        return saveObject(this.mApnIspMap, APN_ISP_FILE_NAME);
    }

    public static String getCurrentApn() {
        String str;
        if (Network.isMobile()) {
            str = Network.getApnName();
        } else if (Network.isWifi()) {
            str = Wifi.getBSSID();
        } else if (Network.isEthernet()) {
            str = "ethernet";
        } else {
            MiLinkLog.i(TAG, "Network(" + Network.getType() + ") is unkown");
            str = null;
        }
        if ("00:00:00:00:00:00".equals(str)) {
            return null;
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x003c A[SYNTHETIC, Splitter:B:9:0x003c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean saveObject(java.lang.Object r4, java.lang.String r5) {
        /*
            r0 = 0
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "save "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.i(r1, r2)
            r2 = 0
            android.content.Context r1 = com.mi.milinkforgame.sdk.base.Global.getApplicationContext()
            if (r1 != 0) goto L_0x0028
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.String r2 = "save object Global.getApplicationContext() == null"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2)
        L_0x0027:
            return r0
        L_0x0028:
            r0 = 0
            java.io.FileOutputStream r0 = r1.openFileOutput(r5, r0)     // Catch:{ Exception -> 0x0041 }
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch:{ Exception -> 0x0041 }
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x0041 }
            r3.<init>(r0)     // Catch:{ Exception -> 0x0041 }
            r1.<init>(r3)     // Catch:{ Exception -> 0x0041 }
            r1.writeObject(r4)     // Catch:{ Exception -> 0x0054 }
        L_0x003a:
            if (r1 == 0) goto L_0x003f
            r1.close()     // Catch:{ Exception -> 0x004b }
        L_0x003f:
            r0 = 1
            goto L_0x0027
        L_0x0041:
            r0 = move-exception
            r1 = r2
        L_0x0043:
            java.lang.String r2 = "MiLinkIpInfoManager"
            java.lang.String r3 = "writeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r3, r0)
            goto L_0x003a
        L_0x004b:
            r0 = move-exception
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.String r2 = "closeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2, r0)
            goto L_0x003f
        L_0x0054:
            r0 = move-exception
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.saveObject(java.lang.Object, java.lang.String):boolean");
    }

    /* JADX WARNING: type inference failed for: r2v5, types: [java.io.ObjectInputStream] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object loadObject(java.lang.String r6) {
        /*
            r0 = 0
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "load "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r6)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.i(r1, r2)
            android.content.Context r3 = com.mi.milinkforgame.sdk.base.Global.getApplicationContext()
            if (r3 != 0) goto L_0x0027
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.String r2 = "load object Global.getApplicationContext() == null"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2)
        L_0x0026:
            return r0
        L_0x0027:
            java.io.FileInputStream r1 = r3.openFileInput(r6)     // Catch:{ FileNotFoundException -> 0x0043 }
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x004c }
            r2.<init>(r1)     // Catch:{ Exception -> 0x004c }
            java.lang.Object r0 = r2.readObject()     // Catch:{ Exception -> 0x0067 }
            if (r2 == 0) goto L_0x0026
            r2.close()     // Catch:{ Exception -> 0x003a }
            goto L_0x0026
        L_0x003a:
            r1 = move-exception
            java.lang.String r2 = "MiLinkIpInfoManager"
            java.lang.String r3 = "closeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r3, r1)
            goto L_0x0026
        L_0x0043:
            r1 = move-exception
            java.lang.String r1 = "MiLinkIpInfoManager"
            java.lang.String r2 = "load object FileNotFoundException"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2)
            goto L_0x0026
        L_0x004c:
            r1 = move-exception
            r2 = r0
        L_0x004e:
            java.lang.String r4 = "MiLinkIpInfoManager"
            java.lang.String r5 = "load readObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r4, r5, r1)
            r3.deleteFile(r6)
            if (r2 == 0) goto L_0x0026
            r2.close()     // Catch:{ Exception -> 0x005e }
            goto L_0x0026
        L_0x005e:
            r1 = move-exception
            java.lang.String r2 = "MiLinkIpInfoManager"
            java.lang.String r3 = "closeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r3, r1)
            goto L_0x0026
        L_0x0067:
            r1 = move-exception
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.loadObject(java.lang.String):java.lang.Object");
    }
}
