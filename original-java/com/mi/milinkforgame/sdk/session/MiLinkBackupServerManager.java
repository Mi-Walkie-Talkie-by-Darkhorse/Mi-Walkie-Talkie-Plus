package com.mi.milinkforgame.sdk.session;

import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager;
import com.mi.milinkforgame.sdk.connection.DomainManager;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MiLinkBackupServerManager implements IServerManager {
    private static final int DEFAULT_SESSION_COUNT = 1;
    private static final String TAG = "MiLinkBackupServerManager";
    private static MiLinkBackupServerManager sInstance = new MiLinkBackupServerManager();
    private List<ServerProfile> mTcpServerList = null;
    private int mTcpServerListIndex = 0;

    private MiLinkBackupServerManager() {
    }

    public static MiLinkBackupServerManager getInstance() {
        return sInstance;
    }

    public ServerProfile[] reset(boolean z) {
        this.mTcpServerList = new ArrayList();
        this.mTcpServerListIndex = 0;
        if (ClientAppInfo.isTestChannel()) {
            String serverIP = MiLinkIpInfoManager.getInstance().getTestBackupIp().getServerIP();
            if (!TextUtils.isEmpty(serverIP)) {
                for (int serverProfile : ServerPort.PORT_ARRAY) {
                    this.mTcpServerList.add(new ServerProfile(serverIP, serverProfile, 1, 4));
                }
            }
        } else {
            List backupServerList = MiLinkIpInfoManager.getInstance().getBackupServerList();
            if (backupServerList != null) {
                Collections.shuffle(backupServerList);
                addServerProfileInSpecifiedList(backupServerList, this.mTcpServerList);
            }
        }
        if (this.mTcpServerList.isEmpty()) {
            return null;
        }
        ServerProfile[] serverProfileArr = new ServerProfile[1];
        for (int i = 0; i < 1; i++) {
            List<ServerProfile> list = this.mTcpServerList;
            int i2 = this.mTcpServerListIndex;
            this.mTcpServerListIndex = i2 + 1;
            serverProfileArr[i] = (ServerProfile) list.get(i2);
        }
        for (int i3 = 0; i3 < serverProfileArr.length; i3++) {
            MiLinkLog.i(TAG, "reset , so try backuplist1, server No." + i3 + ":" + serverProfileArr[i3]);
        }
        return serverProfileArr;
    }

    public boolean isNeedReset() {
        return false;
    }

    public ServerProfile[] getNext(ServerProfile serverProfile, int i) {
        if (serverProfile == null) {
            MiLinkLog.e(TAG, "getNext, serverProfile == null!!!");
            return null;
        } else if (!Network.isAvailable()) {
            MiLinkLog.e(TAG, "getNext, Network is not available!!!");
            return null;
        } else {
            MiLinkLog.i(TAG, "getNext, failserver info:" + serverProfile + ",failReason = " + i);
            if (serverProfile.getProtocol() != 1) {
                return null;
            }
            if (this.mTcpServerListIndex == this.mTcpServerList.size()) {
                MiLinkLog.i(TAG, "getNext no tcp server to try");
                return null;
            }
            ServerProfile[] serverProfileArr = {getNextTcpProfile()};
            MiLinkLog.i(TAG, "getNext get tcp server," + serverProfileArr[0]);
            return serverProfileArr;
        }
    }

    public boolean save(ServerProfile serverProfile) {
        if (serverProfile == null) {
            return false;
        }
        serverProfile.setServerIP(DomainManager.getInstance().queryDomainIP(serverProfile.getServerIP()));
        if (serverProfile.getProtocol() != 1) {
            return false;
        }
        MiLinkIpInfoManager.getInstance().setRecentlyServer(new ServerProfile(serverProfile.getServerIP(), serverProfile.getServerPort(), serverProfile.getProtocol(), 3));
        return true;
    }

    private ServerProfile getNextTcpProfile() {
        if (this.mTcpServerListIndex == this.mTcpServerList.size()) {
            return null;
        }
        List<ServerProfile> list = this.mTcpServerList;
        int i = this.mTcpServerListIndex;
        this.mTcpServerListIndex = i + 1;
        return (ServerProfile) list.get(i);
    }

    private void addServerProfileInSpecifiedList(List<ServerProfile> list, List<ServerProfile> list2) {
        int i = 0;
        if (ServerPort.PORT_ARRAY.length != 4) {
            MiLinkLog.e(TAG, "PORT_ARRAY.length != 4");
            return;
        }
        int[][] iArr = {new int[]{0, 0, 0, 0}, new int[]{0, 0, 1, 1}, new int[]{0, 0, 1, 2}, new int[]{0, 1, 2, 3}};
        int size = list.size();
        if (size > 4) {
            size = 4;
        }
        if (size <= 4 && size > 0) {
            while (true) {
                int i2 = i;
                if (i2 < ServerPort.PORT_ARRAY.length) {
                    list2.add(new ServerProfile(((ServerProfile) list.get(iArr[size - 1][i2])).getServerIP(), ServerPort.PORT_ARRAY[i2], 1, 1));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
