package com.mi.milinkforgame.sdk.base.os.info;

import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.util.CommonUtils;

public class DeviceDash implements NetworkStateListener {
    private static final DeviceDash instance = new DeviceDash();
    private String mDeviceId = null;
    private String mDeviceInfo = null;
    private String mDeviceSimplifiedInfo = null;

    public static DeviceDash getInstance() {
        return instance;
    }

    public DeviceDash() {
        Network.addListener(this);
    }

    public String getDeviceInfo() {
        if (this.mDeviceInfo == null || this.mDeviceInfo.length() < 1) {
            return updateDeviceInfo();
        }
        return this.mDeviceInfo;
    }

    public String getDeviceSimplifiedInfo() {
        if (this.mDeviceSimplifiedInfo == null || this.mDeviceSimplifiedInfo.length() < 1) {
            updateDeviceInfo();
        }
        return this.mDeviceSimplifiedInfo;
    }

    public String updateDeviceInfo() {
        String str;
        String str2;
        WindowManager windowManager = (WindowManager) Global.getSystemService("window");
        TelephonyManager telephonyManager = (TelephonyManager) Global.getSystemService(UserInfo.TYPE_PHONE);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        StringBuilder sb = new StringBuilder();
        try {
            str = telephonyManager.getDeviceId();
        } catch (Exception e) {
            str = CommonUtils.NOT_AVALIBLE;
        }
        if (NetworkDash.isWifi()) {
            str2 = com.mi.mimsgsdk.utils.Network.NETWORK_TYPE_WIFI;
        } else if (NetworkDash.is2G()) {
            str2 = "2G";
        } else if (NetworkDash.is3G()) {
            str2 = "3G";
        } else if (NetworkDash.isEthernet()) {
            str2 = "ethernet";
        } else {
            str2 = "wan";
        }
        sb.append("imei=").append(str).append('&');
        sb.append("model=").append(Build.MODEL).append('&');
        sb.append("os=").append(VERSION.RELEASE).append('&');
        sb.append("apilevel=").append(VERSION.SDK_INT).append('&');
        sb.append("network=").append(str2).append('&');
        sb.append("display=").append(displayMetrics.widthPixels).append('*').append(displayMetrics.heightPixels).append('&');
        sb.append("manu=").append(Build.MANUFACTURER).append('&');
        sb.append("versioncode=").append(Global.getClientAppInfo().getVersionCode());
        this.mDeviceSimplifiedInfo = sb.toString();
        sb.append('&');
        sb.append("wifi=").append(WifiDash.getWifiInfo()).append('&');
        sb.append("cell=").append(NetworkDash.getCellLevel()).append('&');
        DnsInfo localDns = DnsDash.getLocalDns();
        if (localDns == null) {
            localDns = DnsDash.updateLocalDns();
        }
        sb.append("dns=").append(localDns == null ? CommonUtils.NOT_AVALIBLE : localDns.toString());
        this.mDeviceInfo = sb.toString();
        return this.mDeviceInfo;
    }

    private String getStorageInfo() {
        String storageInfo;
        String storageInfo2;
        StorageInfo innerInfo = StorageDash.getInnerInfo();
        StorageInfo externalInfo = StorageDash.getExternalInfo();
        String str = "{IN : %s |EXT: %s}";
        Object[] objArr = new Object[2];
        if (innerInfo == null) {
            storageInfo = CommonUtils.NOT_AVALIBLE;
        } else {
            storageInfo = innerInfo.toString();
        }
        objArr[0] = storageInfo;
        if (externalInfo == null) {
            storageInfo2 = CommonUtils.NOT_AVALIBLE;
        } else {
            storageInfo2 = externalInfo.toString();
        }
        objArr[1] = storageInfo2;
        return String.format(str, objArr);
    }

    public void onNetworkStateChanged(NetworkState networkState, NetworkState networkState2) {
        updateDeviceInfo();
    }

    public String getDeviceId() {
        if (TextUtils.isEmpty(this.mDeviceId)) {
            try {
                this.mDeviceId = ((TelephonyManager) Global.getSystemService(UserInfo.TYPE_PHONE)).getDeviceId();
            } catch (Exception e) {
                this.mDeviceId = CommonUtils.NOT_AVALIBLE;
            }
        }
        return this.mDeviceId;
    }
}
