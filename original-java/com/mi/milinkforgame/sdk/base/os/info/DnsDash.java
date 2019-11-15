package com.mi.milinkforgame.sdk.base.os.info;

import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.data.Convert;
import com.mi.milinkforgame.sdk.base.os.Console;
import com.mi.milinkforgame.sdk.base.os.dns.DnsMain;
import com.mi.mimsgsdk.utils.Network;
import java.net.InetAddress;

public class DnsDash {
    private static DnsInfo localDnsInfo = null;

    public static InetAddress[] getHostByName(String str, long j) {
        return DnsMain.getBetterHostByName(str, j);
    }

    public static DnsInfo updateLocalDns() {
        DnsInfo dnsInfo = new DnsInfo();
        if (NetworkDash.isWifi()) {
            WifiManager wifiManager = (WifiManager) Global.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager != null) {
                try {
                    DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
                    if (dhcpInfo != null) {
                        dnsInfo.setWifiPreDns(Convert.intToIPv4(dhcpInfo.dns1));
                        dnsInfo.setWifiAltDns(Convert.intToIPv4(dhcpInfo.dns2));
                    }
                } catch (Exception e) {
                }
            }
        } else {
            String execute = Console.execute("getprop net.dns1", 1500);
            String execute2 = Console.execute("getprop net.dns2", 1500);
            dnsInfo.setCurrPreDns(execute);
            dnsInfo.setCurrAltDns(execute2);
        }
        setLocalDns(dnsInfo);
        return getLocalDns();
    }

    public static DnsInfo getLocalDns() {
        DnsInfo dnsInfo;
        synchronized (DnsInfo.class) {
            dnsInfo = localDnsInfo;
        }
        return dnsInfo;
    }

    public static void setLocalDns(DnsInfo dnsInfo) {
        synchronized (DnsInfo.class) {
            localDnsInfo = dnsInfo;
        }
    }
}
