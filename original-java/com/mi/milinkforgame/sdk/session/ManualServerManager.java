package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.util.CommonUtils;

public class ManualServerManager implements IServerManager {
    private static final String TAG = "ManualServerManager";
    private static ManualServerManager sInstance = new ManualServerManager();
    private String assignIp;
    private int assignPort;

    private ManualServerManager() {
    }

    public static ManualServerManager getInstance() {
        return sInstance;
    }

    public ServerProfile[] reset(boolean z) {
        if (!CommonUtils.isLegalIp(this.assignIp) || !CommonUtils.isLegalPort(this.assignPort)) {
            return new ServerProfile[0];
        }
        return new ServerProfile[]{new ServerProfile(this.assignIp, this.assignPort, 1, 4)};
    }

    public boolean isNeedReset() {
        return false;
    }

    public ServerProfile[] getNext(ServerProfile serverProfile, int i) {
        return null;
    }

    public boolean save(ServerProfile serverProfile) {
        return false;
    }

    public void setIp(String str) {
        if (CommonUtils.isLegalIp(str)) {
            this.assignIp = str;
        }
    }

    public void setPort(int i) {
        if (CommonUtils.isLegalPort(i)) {
            this.assignPort = i;
        }
    }
}
