package com.mi.milinkforgame.sdk.base.os.info;

import android.net.NetworkInfo;

public class NetworkState {
    private static final int NETWORK_CLASS_2_G = 1;
    private static final int NETWORK_CLASS_3_G = 2;
    private static final int NETWORK_CLASS_4_G = 3;
    private static final int NETWORK_CLASS_UNKNOWN = 0;
    private static final int NETWORK_TYPE_1xRTT = 7;
    private static final int NETWORK_TYPE_CDMA = 4;
    private static final int NETWORK_TYPE_EDGE = 2;
    private static final int NETWORK_TYPE_EHRPD = 14;
    private static final int NETWORK_TYPE_EVDO_0 = 5;
    private static final int NETWORK_TYPE_EVDO_A = 6;
    private static final int NETWORK_TYPE_EVDO_B = 12;
    private static final int NETWORK_TYPE_GPRS = 1;
    private static final int NETWORK_TYPE_HSDPA = 8;
    private static final int NETWORK_TYPE_HSPA = 10;
    private static final int NETWORK_TYPE_HSPAP = 15;
    private static final int NETWORK_TYPE_HSUPA = 9;
    private static final int NETWORK_TYPE_IDEN = 11;
    private static final int NETWORK_TYPE_LTE = 13;
    private static final int NETWORK_TYPE_UMTS = 3;
    private static final int NETWORK_TYPE_UNKNOWN = 0;
    private static final int NETWORK_TYPE_WIFI = -1;
    private static final NetworkState NONE = new NetworkState(false, null, AccessPoint.NONE, NetworkType.NONE);
    private AccessPoint accessPoint = AccessPoint.NONE;
    private String apnName = null;
    private int apnType = -1;
    private boolean available = false;
    private boolean connected = false;
    private NetworkInfo moreInfo;
    private NetworkType type = NetworkType.NONE;

    public static NetworkState fromNetworkInfo(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NONE;
        }
        NetworkState networkState = new NetworkState();
        networkState.setAvailable(networkInfo.isAvailable());
        networkState.setConnected(networkInfo.isConnected());
        networkState.setApnName(networkInfo.getExtraInfo());
        networkState.setAccessPoint(AccessPoint.forName(networkState.getApnName()));
        switch (networkInfo.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
                networkState.setType(is3GMobileType(networkInfo.getSubtype()) ? NetworkType.MOBILE_3G : NetworkType.MOBILE_2G);
                networkState.setApnType(networkInfo.getSubtype());
                break;
            case 1:
                networkState.setType(NetworkType.WIFI);
                networkState.setApnType(-1);
                break;
            case 9:
                networkState.setType(NetworkType.ETHERNET);
                networkState.setApnType(-1);
                break;
            default:
                networkState.setType(NetworkType.OTHERS);
                networkState.setApnType(-1);
                break;
        }
        networkState.setMoreInfo(networkInfo);
        return networkState;
    }

    private NetworkState(boolean z, String str, AccessPoint accessPoint2, NetworkType networkType) {
        setConnected(z);
        setApnName(str);
        setAccessPoint(accessPoint2);
        setType(networkType);
    }

    private NetworkState() {
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        if (((NetworkState) obj).isConnected() != isConnected() || !((NetworkState) obj).getType().equals(getType()) || !((NetworkState) obj).getApnName().equals(getApnName())) {
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public boolean isConnected() {
        return this.connected;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void setAvailable(boolean z) {
        this.available = z;
    }

    public void setConnected(boolean z) {
        this.connected = z;
    }

    public String getApnName() {
        if (this.apnName == null) {
            return "";
        }
        return this.apnName;
    }

    public void setApnName(String str) {
        this.apnName = str;
    }

    public int getApnType() {
        return this.apnType;
    }

    public void setApnType(int i) {
        this.apnType = i;
    }

    public NetworkType getType() {
        return this.type;
    }

    public void setType(NetworkType networkType) {
        this.type = networkType;
    }

    public AccessPoint getAccessPoint() {
        return this.accessPoint;
    }

    public void setAccessPoint(AccessPoint accessPoint2) {
        this.accessPoint = accessPoint2;
    }

    private static boolean is3GMobileType(int i) {
        switch (i) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    private static boolean is4GMobileType(int i) {
        return getNetworkClass(i) == 3;
    }

    private static int getNetworkClass(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 2;
            case 13:
                return 3;
            default:
                return 0;
        }
    }

    public NetworkInfo getMoreInfo() {
        return this.moreInfo;
    }

    public void setMoreInfo(NetworkInfo networkInfo) {
        this.moreInfo = networkInfo;
    }

    public String toString() {
        return "NetworkState [connected=" + this.connected + ", apnName=" + this.apnName + ", type=" + this.type + ", accessPoint=" + this.accessPoint + "]";
    }
}
