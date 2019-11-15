package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager;
import com.mi.milinkforgame.sdk.connection.DomainManager;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.util.List;

public class MiLinkServerManager implements IServerManager {
    private static final int DEFAULT_SESSION_COUNT = 4;
    private static final String TAG = "MiLinkServerManager";
    private static MiLinkServerManager sInstance = new MiLinkServerManager();
    private List<ServerProfile> mTcpServerList = null;
    private int mTcpServerListIndex = 0;

    private MiLinkServerManager() {
    }

    public static MiLinkServerManager getInstance() {
        return sInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a0 A[LOOP:2: B:30:0x009e->B:31:0x00a0, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00cf  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.mi.milinkforgame.sdk.session.ServerProfile[] reset(boolean r12) {
        /*
            r11 = this;
            r4 = 1
            r10 = 4
            r3 = 0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r11.mTcpServerList = r0
            r11.mTcpServerListIndex = r3
            boolean r0 = com.mi.milinkforgame.sdk.data.ClientAppInfo.isTestChannel()
            if (r0 == 0) goto L_0x0039
            com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager r0 = com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.getInstance()
            com.mi.milinkforgame.sdk.session.ServerProfile r0 = r0.getTestBackupIp()
            java.lang.String r1 = r0.getServerIP()
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 != 0) goto L_0x00f6
            int[] r2 = com.mi.milinkforgame.sdk.data.Const.ServerPort.PORT_ARRAY
            int r5 = r2.length
            r0 = r3
        L_0x0028:
            if (r0 >= r5) goto L_0x00f6
            r6 = r2[r0]
            com.mi.milinkforgame.sdk.session.ServerProfile r7 = new com.mi.milinkforgame.sdk.session.ServerProfile
            r7.<init>(r1, r6, r4, r10)
            java.util.List<com.mi.milinkforgame.sdk.session.ServerProfile> r6 = r11.mTcpServerList
            r6.add(r7)
            int r0 = r0 + 1
            goto L_0x0028
        L_0x0039:
            r0 = 0
            com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager r1 = com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.getInstance()
            com.mi.milinkforgame.sdk.session.RecentlyServerData r1 = r1.getRecentlyServerData()
            if (r1 == 0) goto L_0x0152
            com.mi.milinkforgame.sdk.session.ServerProfile r0 = r1.getRecentlyServer()
            r1 = r0
        L_0x0049:
            com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager r0 = com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.getInstance()
            com.mi.milinkforgame.sdk.session.OptimumServerData r0 = r0.getCurrentApnOptimumServerData()
            if (r0 == 0) goto L_0x014f
            java.util.List r0 = r0.getOptimumServers()
            if (r0 == 0) goto L_0x014f
            java.util.Collections.shuffle(r0)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r6 = r0.iterator()
            r2 = r3
        L_0x0066:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L_0x0095
            java.lang.Object r0 = r6.next()
            com.mi.milinkforgame.sdk.session.ServerProfile r0 = (com.mi.milinkforgame.sdk.session.ServerProfile) r0
            if (r0 == 0) goto L_0x0093
            if (r1 == 0) goto L_0x0087
            java.lang.String r7 = r0.getServerIP()
            java.lang.String r8 = r1.getServerIP()
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x0087
            r0 = r4
        L_0x0085:
            r2 = r0
            goto L_0x0066
        L_0x0087:
            int r7 = r5.size()
            int[] r8 = com.mi.milinkforgame.sdk.data.Const.ServerPort.PORT_ARRAY
            int r8 = r8.length
            if (r7 >= r8) goto L_0x0093
            r5.add(r0)
        L_0x0093:
            r0 = r2
            goto L_0x0085
        L_0x0095:
            java.util.List<com.mi.milinkforgame.sdk.session.ServerProfile> r0 = r11.mTcpServerList
            r11.addServerProfileInSpecifiedList(r5, r0)
        L_0x009a:
            int[] r5 = com.mi.milinkforgame.sdk.data.Const.ServerPort.PORT_ARRAY
            int r6 = r5.length
            r0 = r3
        L_0x009e:
            if (r0 >= r6) goto L_0x00bb
            r7 = r5[r0]
            com.mi.milinkforgame.sdk.session.ServerProfile r8 = new com.mi.milinkforgame.sdk.session.ServerProfile
            com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager r9 = com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.getInstance()
            com.mi.milinkforgame.sdk.session.ServerProfile r9 = r9.getDefaultServer()
            java.lang.String r9 = r9.getServerIP()
            r8.<init>(r9, r7, r4, r10)
            java.util.List<com.mi.milinkforgame.sdk.session.ServerProfile> r7 = r11.mTcpServerList
            r7.add(r8)
            int r0 = r0 + 1
            goto L_0x009e
        L_0x00bb:
            com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager r0 = com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager.getInstance()
            java.util.List r0 = r0.getBackupServerList()
            if (r0 == 0) goto L_0x00cd
            java.util.Collections.shuffle(r0)
            java.util.List<com.mi.milinkforgame.sdk.session.ServerProfile> r5 = r11.mTcpServerList
            r11.addServerProfileInSpecifiedList(r0, r5)
        L_0x00cd:
            if (r2 == 0) goto L_0x00f6
            com.mi.milinkforgame.sdk.session.ServerProfile[] r0 = new com.mi.milinkforgame.sdk.session.ServerProfile[r4]
            r0[r3] = r1
            java.lang.String r2 = "MiLinkServerManager"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "reset isBackgroud = "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r12)
            java.lang.String r4 = ",has recently tcp server"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.i(r2, r1)
        L_0x00f5:
            return r0
        L_0x00f6:
            com.mi.milinkforgame.sdk.session.ServerProfile[] r1 = new com.mi.milinkforgame.sdk.session.ServerProfile[r10]
            r2 = r3
        L_0x00f9:
            if (r2 >= r10) goto L_0x010f
            java.util.List<com.mi.milinkforgame.sdk.session.ServerProfile> r0 = r11.mTcpServerList
            int r4 = r11.mTcpServerListIndex
            int r5 = r4 + 1
            r11.mTcpServerListIndex = r5
            java.lang.Object r0 = r0.get(r4)
            com.mi.milinkforgame.sdk.session.ServerProfile r0 = (com.mi.milinkforgame.sdk.session.ServerProfile) r0
            r1[r2] = r0
            int r0 = r2 + 1
            r2 = r0
            goto L_0x00f9
        L_0x010f:
            int r0 = r1.length
            if (r3 >= r0) goto L_0x014d
            java.lang.String r0 = "MiLinkServerManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "reset isBackgroud = "
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r12)
            java.lang.String r4 = ", has no recently server, so try "
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r10)
            java.lang.String r4 = ", server No."
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r4 = ":"
            java.lang.StringBuilder r2 = r2.append(r4)
            r4 = r1[r3]
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.i(r0, r2)
            int r3 = r3 + 1
            goto L_0x010f
        L_0x014d:
            r0 = r1
            goto L_0x00f5
        L_0x014f:
            r2 = r3
            goto L_0x009a
        L_0x0152:
            r1 = r0
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.session.MiLinkServerManager.reset(boolean):com.mi.milinkforgame.sdk.session.ServerProfile[]");
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
            if (serverProfile.getServerType() == 3) {
                ServerProfile[] serverProfileArr = new ServerProfile[4];
                for (int i2 = 0; i2 < 4; i2++) {
                    serverProfileArr[i2] = getNextTcpProfile();
                    MiLinkLog.i(TAG, "getNext, recently tcp failed, and has no rencently http server,so try 4, server No." + i2 + ":" + serverProfileArr[i2]);
                }
                return serverProfileArr;
            } else if (this.mTcpServerListIndex == this.mTcpServerList.size()) {
                MiLinkLog.i(TAG, "getNext no tcp server to try");
                return null;
            } else {
                ServerProfile[] serverProfileArr2 = {getNextTcpProfile()};
                MiLinkLog.i(TAG, "getNext get tcp server," + serverProfileArr2[0]);
                return serverProfileArr2;
            }
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
