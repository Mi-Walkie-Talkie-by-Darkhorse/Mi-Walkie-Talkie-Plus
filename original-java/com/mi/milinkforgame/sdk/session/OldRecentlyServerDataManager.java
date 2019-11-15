package com.mi.milinkforgame.sdk.session;

import android.content.Context;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class OldRecentlyServerDataManager {
    private static final long EXPIRE_TIME = -813934592;
    private static final String TAG = "OldRecentlyServerDataManager";
    private static OldRecentlyServerDataManager sInstance = new OldRecentlyServerDataManager();
    private String mFileName = "ipmap";
    private HashMap<String, OldRecentlyServerData> mRecentlyServerProfileMap = new HashMap<>();

    public static OldRecentlyServerDataManager getInstance() {
        return sInstance;
    }

    private OldRecentlyServerDataManager() {
        loadHashMap();
    }

    public OldRecentlyServerData getData(String str) {
        return (OldRecentlyServerData) this.mRecentlyServerProfileMap.get(str);
    }

    public void setData(String str, OldRecentlyServerData oldRecentlyServerData) {
        this.mRecentlyServerProfileMap.put(str, oldRecentlyServerData);
        saveHashMap();
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x0035 A[SYNTHETIC, Splitter:B:8:0x0035] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean saveHashMap() {
        /*
            r4 = this;
            r0 = 0
            java.lang.String r1 = "OldRecentlyServerDataManager"
            java.lang.String r2 = "saveHashMap"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.i(r1, r2)
            r4.removeExpireData()
            r2 = 0
            android.content.Context r1 = com.mi.milinkforgame.sdk.base.Global.getApplicationContext()
            if (r1 != 0) goto L_0x001a
            java.lang.String r1 = "OldRecentlyServerDataManager"
            java.lang.String r2 = "saveHashMap() Global.getApplicationContext() == null"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2)
        L_0x0019:
            return r0
        L_0x001a:
            java.lang.String r0 = r4.mFileName     // Catch:{ Exception -> 0x003a }
            r3 = 0
            java.io.FileOutputStream r0 = r1.openFileOutput(r0, r3)     // Catch:{ Exception -> 0x003a }
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch:{ Exception -> 0x003a }
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x003a }
            r3.<init>(r0)     // Catch:{ Exception -> 0x003a }
            r1.<init>(r3)     // Catch:{ Exception -> 0x003a }
            java.util.HashMap<java.lang.String, com.mi.milinkforgame.sdk.session.OldRecentlyServerData> r0 = r4.mRecentlyServerProfileMap     // Catch:{ Exception -> 0x004d }
            r1.writeObject(r0)     // Catch:{ Exception -> 0x004d }
            r4.print()     // Catch:{ Exception -> 0x004d }
        L_0x0033:
            if (r1 == 0) goto L_0x0038
            r1.close()     // Catch:{ Exception -> 0x0044 }
        L_0x0038:
            r0 = 1
            goto L_0x0019
        L_0x003a:
            r0 = move-exception
            r1 = r2
        L_0x003c:
            java.lang.String r2 = "OldRecentlyServerDataManager"
            java.lang.String r3 = "writeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r2, r3, r0)
            goto L_0x0033
        L_0x0044:
            r0 = move-exception
            java.lang.String r1 = "OldRecentlyServerDataManager"
            java.lang.String r2 = "closeObject Exception"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r2, r0)
            goto L_0x0038
        L_0x004d:
            r0 = move-exception
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.session.OldRecentlyServerDataManager.saveHashMap():boolean");
    }

    private boolean loadHashMap() {
        ObjectInputStream objectInputStream;
        MiLinkLog.i(TAG, "loadHashMap");
        Context applicationContext = Global.getApplicationContext();
        if (applicationContext == null) {
            MiLinkLog.e(TAG, "loadHashMap() Global.getApplicationContext() == null");
            return false;
        }
        try {
            try {
                objectInputStream = new ObjectInputStream(applicationContext.openFileInput(this.mFileName));
                try {
                    this.mRecentlyServerProfileMap = (HashMap) objectInputStream.readObject();
                    if (this.mRecentlyServerProfileMap == null) {
                        this.mRecentlyServerProfileMap = new HashMap<>();
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (Exception e) {
                                MiLinkLog.e(TAG, "closeObject Exception", e);
                            }
                        }
                        return false;
                    }
                    print();
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (Exception e2) {
                            MiLinkLog.e(TAG, "closeObject Exception", e2);
                        }
                    }
                    return true;
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Exception e4) {
                e = e4;
                objectInputStream = null;
                MiLinkLog.e(TAG, "loadHashMap() readObject Exception", e);
                applicationContext.deleteFile(this.mFileName);
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (Exception e5) {
                        MiLinkLog.e(TAG, "closeObject Exception", e5);
                    }
                }
                return false;
            }
        } catch (FileNotFoundException e6) {
            MiLinkLog.e(TAG, "loadHashMap() FileNotFoundException");
            return false;
        }
    }

    private void removeExpireData() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.mRecentlyServerProfileMap.keySet()) {
            OldRecentlyServerData oldRecentlyServerData = (OldRecentlyServerData) this.mRecentlyServerProfileMap.get(str);
            if (oldRecentlyServerData != null && System.currentTimeMillis() - oldRecentlyServerData.getTimeStamp() > EXPIRE_TIME) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            MiLinkLog.i(TAG, "removeExpireData key = " + str2 + ",value = " + ((OldRecentlyServerData) this.mRecentlyServerProfileMap.remove(str2)));
        }
        arrayList.clear();
    }

    private void print() {
        for (String str : this.mRecentlyServerProfileMap.keySet()) {
            OldRecentlyServerData oldRecentlyServerData = (OldRecentlyServerData) this.mRecentlyServerProfileMap.get(str);
            if (oldRecentlyServerData != null) {
                MiLinkLog.i(TAG, "mRecentlyServerProfileMap key = " + str + ",value = " + oldRecentlyServerData);
            }
        }
    }
}
