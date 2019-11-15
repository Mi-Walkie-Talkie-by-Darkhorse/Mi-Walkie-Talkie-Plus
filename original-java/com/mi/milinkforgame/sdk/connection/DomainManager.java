package com.mi.milinkforgame.sdk.connection;

import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.base.os.Device.Network.Dns;
import com.mi.milinkforgame.sdk.base.os.Device.Network.Wifi;
import com.mi.milinkforgame.sdk.base.os.info.AccessPoint;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.config.MiLinkIpInfoManager;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.debug.InternalDataMonitor;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.concurrent.ConcurrentHashMap;

public class DomainManager {
    public static final int RET_CODE_DNS_LOCAL_EXCEPTION = 10002;
    public static final int RET_CODE_DNS_SUCCESS = 0;
    public static final int RET_CODE_DNS_TIME_OUT = 10001;
    public static final int RET_CODE_DNS_UNKNOWN_HOST = 10000;
    private static final int SLEEP_INTERVAL = 10;
    private static final String TAG = "DomainManager";
    private static final int THREAD_MAX_COUNT = 5;
    private static DomainManager sInstanse = null;
    private ResolveThread[] mDefaultHostThreads;
    private ConcurrentHashMap<String, String> mDomainMap;
    private String mKey;

    private class ResolveThread extends Thread {
        private String mDomain = null;
        private volatile boolean mIsCompleted = false;
        private volatile boolean mIsExpired = false;
        private volatile String mKey = null;

        public ResolveThread(String str, String str2) {
            this.mDomain = str;
            this.mKey = str2;
        }

        public void setExpired(boolean z) {
            this.mIsExpired = z;
        }

        public String getKey() {
            return this.mKey;
        }

        public boolean isCompleted() {
            return this.mIsCompleted;
        }

        public void run() {
            int i = 0;
            String str = null;
            this.mIsCompleted = false;
            long currentTimeMillis = System.currentTimeMillis();
            try {
                str = InetAddress.getByName(this.mDomain).getHostAddress();
                if (str != null && !this.mIsExpired) {
                    DomainManager.this.setDomainIP(this.mDomain, str);
                }
            } catch (UnknownHostException e) {
                MiLinkLog.e(DomainManager.TAG, "Inet Address Analyze fail exception : ", e);
                i = 10000;
            } catch (Exception e2) {
                MiLinkLog.e(DomainManager.TAG, "Inet Address Analyze fail exception : ", e2);
                i = 10002;
            } catch (Error e3) {
                MiLinkLog.e(DomainManager.TAG, "Inet Address Analyze fail exception : ", e3);
                i = 10002;
            }
            this.mIsCompleted = true;
            DomainManager.this.statistic(currentTimeMillis, this.mDomain, str, i);
        }
    }

    private DomainManager() {
        this.mKey = AccessPoint.NONE.getName();
        this.mDomainMap = new ConcurrentHashMap<>();
        this.mDefaultHostThreads = null;
        this.mDefaultHostThreads = new ResolveThread[5];
    }

    public static synchronized DomainManager getInstance() {
        DomainManager domainManager;
        synchronized (DomainManager.class) {
            if (sInstanse == null) {
                sInstanse = new DomainManager();
            }
            domainManager = sInstanse;
        }
        return domainManager;
    }

    public void startResolve() {
        if (!Network.isAvailable()) {
            MiLinkLog.i(TAG, "startResolve, but network is unavailable");
            return;
        }
        MiLinkLog.i(TAG, "startResolve");
        if (isNeedResolve()) {
            this.mDomainMap.clear();
            startDefaultHostThread();
        }
    }

    public String queryDomainIP(String str) {
        String str2 = (String) this.mDomainMap.get(str);
        return str2 == null ? str : str2;
    }

    public String getDomainIP(String str) {
        String str2;
        long j;
        String str3 = (String) this.mDomainMap.get(str);
        if (str3 == null) {
            long dnsTimeout = (long) ConfigManager.getInstance().getDnsTimeout();
            long j2 = 0;
            long currentTimeMillis = System.currentTimeMillis();
            ResolveThread startDnsThread = startDnsThread(str);
            if (startDnsThread == null) {
                return null;
            }
            while (true) {
                j = j2;
                String str4 = (String) this.mDomainMap.get(str);
                if (str4 != null) {
                    return str4;
                }
                if (j > dnsTimeout || startDnsThread.isCompleted()) {
                    str2 = (String) this.mDomainMap.get(str);
                } else {
                    try {
                        Thread.sleep(10);
                        j2 = j + 10;
                    } catch (InterruptedException e) {
                        MiLinkLog.e(TAG, "getDomainIP InterruptedException", e);
                        return null;
                    }
                }
            }
            str2 = (String) this.mDomainMap.get(str);
            if (j > dnsTimeout && str2 == null) {
                statistic(currentTimeMillis, str, str2, 10001);
            }
        } else {
            str2 = str3;
        }
        return str2;
    }

    private synchronized ResolveThread startDefaultHostThread() {
        ResolveThread resolveThread;
        int i = 0;
        while (true) {
            if (i >= 5) {
                if (i == 5) {
                    MiLinkLog.e(TAG, "startDefaultHostThread running thread is more than 5");
                }
                resolveThread = null;
            } else if (this.mDefaultHostThreads[i] != null && this.mDefaultHostThreads[i].isAlive()) {
                if (this.mDefaultHostThreads[i].getKey() != this.mKey) {
                    this.mDefaultHostThreads[i].setExpired(true);
                } else if (this.mKey != null) {
                    resolveThread = this.mDefaultHostThreads[i];
                    break;
                } else {
                    this.mDefaultHostThreads[i].setExpired(true);
                }
                i++;
            }
        }
        MiLinkLog.i(TAG, "startDefaultHostThread");
        this.mDefaultHostThreads[i] = new ResolveThread(MiLinkIpInfoManager.getDefaultHost(), this.mKey);
        this.mDefaultHostThreads[i].start();
        resolveThread = this.mDefaultHostThreads[i];
        return resolveThread;
    }

    private ResolveThread startDnsThread(String str) {
        if (MiLinkIpInfoManager.isDefaultHost(str)) {
            return startDefaultHostThread();
        }
        return null;
    }

    private String getKey() {
        String str;
        if (Network.isMobile()) {
            str = Network.getApnName();
        } else if (Network.isWifi()) {
            str = Wifi.getBSSID();
        } else {
            MiLinkLog.e(TAG, "getKey Network(" + Network.getType() + ") is unkown");
            str = null;
        }
        if ("00:00:00:00:00:00".equals(str)) {
            return null;
        }
        return str;
    }

    private boolean isNeedResolve() {
        String key = getKey();
        if (key == null) {
            this.mKey = null;
            return true;
        } else if (key.equalsIgnoreCase(this.mKey)) {
            return false;
        } else {
            this.mKey = key;
            return true;
        }
    }

    /* access modifiers changed from: private */
    public void setDomainIP(String str, String str2) {
        this.mDomainMap.put(str, str2);
    }

    /* access modifiers changed from: private */
    public void statistic(long j, String str, String str2, int i) {
        String str3 = "domain [domain = " + str + ",ip = " + str2 + ",client localDNS = " + Dns.updateLocalDns() + ", errCode=" + i;
        long currentTimeMillis = System.currentTimeMillis();
        MiLinkLog.w(TAG, str3 + ",timecost = " + (currentTimeMillis - j) + "ms]");
        if (i != 0) {
            InternalDataMonitor.getInstance().trace(str, 0, MnsCmd.MNS_DNS_FAIL_CMD, i, j, currentTimeMillis, 0, 0, 0);
        }
    }
}
