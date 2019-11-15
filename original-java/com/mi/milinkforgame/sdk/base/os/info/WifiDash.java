package com.mi.milinkforgame.sdk.base.os.info;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.mimsgsdk.utils.Network;

public class WifiDash {
    public static String getBSSID() {
        WifiInfo wifiInfo;
        WifiManager wifiManager = (WifiManager) Global.getSystemService(Network.NETWORK_TYPE_WIFI);
        if (wifiManager == null) {
            return null;
        }
        try {
            wifiInfo = wifiManager.getConnectionInfo();
        } catch (Exception e) {
            wifiInfo = null;
        }
        if (wifiInfo == null) {
            return null;
        }
        String bssid = wifiInfo.getBSSID();
        if (CommonUtils.NOT_AVALIBLE.equals(bssid) || "00:00:00:00:00:00".equals(bssid) || "FF:FF:FF:FF:FF:FF".equalsIgnoreCase(bssid)) {
            return null;
        }
        return bssid;
    }

    public static int getSignalLevel() {
        Object queryWifiInfo = queryWifiInfo(CommonUtils.NOT_AVALIBLE);
        if (queryWifiInfo == CommonUtils.NOT_AVALIBLE) {
            return -1;
        }
        return WifiManager.calculateSignalLevel(((WifiInfo) queryWifiInfo).getRssi(), 5);
    }

    private static Object queryWifiInfo(Object obj) {
        WifiInfo wifiInfo;
        WifiManager wifiManager = (WifiManager) Global.getSystemService(Network.NETWORK_TYPE_WIFI);
        if (wifiManager == null) {
            return obj;
        }
        try {
            wifiInfo = wifiManager.getConnectionInfo();
        } catch (Exception e) {
            wifiInfo = null;
        }
        if (wifiInfo != null) {
            return wifiInfo;
        }
        return obj;
    }

    public static String getWifiInfo() {
        WifiInfo wifiInfo;
        WifiManager wifiManager = (WifiManager) Global.getSystemService(Network.NETWORK_TYPE_WIFI);
        if (wifiManager == null) {
            return "[-]";
        }
        try {
            wifiInfo = wifiManager.getConnectionInfo();
        } catch (Exception e) {
            wifiInfo = null;
        }
        if (wifiInfo == null) {
            return "[-]";
        }
        String ssid = wifiInfo.getSSID();
        String valueOf = String.valueOf(WifiManager.calculateSignalLevel(wifiInfo.getRssi(), 5));
        String str = String.valueOf(wifiInfo.getLinkSpeed()) + Token.SEPARATOR + "Mbps";
        String bssid = wifiInfo.getBSSID();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[').append(valueOf).append(", ").append(ssid).append(", ").append(str).append(", ").append(bssid).append(']');
        return stringBuffer.toString();
    }
}
