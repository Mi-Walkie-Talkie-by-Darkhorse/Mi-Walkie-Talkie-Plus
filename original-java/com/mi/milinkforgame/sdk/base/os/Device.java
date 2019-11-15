package com.mi.milinkforgame.sdk.base.os;

import com.mi.milinkforgame.sdk.base.os.Http.HttpProxy;
import com.mi.milinkforgame.sdk.base.os.info.DeviceDash;
import com.mi.milinkforgame.sdk.base.os.info.DnsDash;
import com.mi.milinkforgame.sdk.base.os.info.NetworkDash;
import com.mi.milinkforgame.sdk.base.os.info.StorageDash;
import com.mi.milinkforgame.sdk.base.os.info.WifiDash;
import com.xiaomi.mipush.sdk.Constants;

public class Device extends DeviceDash {

    public static class Network extends NetworkDash {

        public static class Dns extends DnsDash {
        }

        public static class NetworkDetailInfo {
            public String apnName;
            public int apnType;
            public int cellLevel;
            public String wifiInfo;

            public boolean equals(Object obj) {
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                NetworkDetailInfo networkDetailInfo = (NetworkDetailInfo) obj;
                if (this.apnType == networkDetailInfo.apnType && this.cellLevel == networkDetailInfo.cellLevel) {
                    if (this.apnName == null && networkDetailInfo.apnName == null && ((this.wifiInfo == null && networkDetailInfo.wifiInfo == null) || this.wifiInfo.equals(networkDetailInfo.wifiInfo))) {
                        return true;
                    }
                    if (this.apnName.equals(networkDetailInfo.apnName) && ((this.wifiInfo == null && networkDetailInfo.wifiInfo == null) || this.wifiInfo.equals(networkDetailInfo.wifiInfo))) {
                        return true;
                    }
                }
                return false;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append("{");
                sb.append("apnType=").append(this.apnType);
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append("cellLevel=").append(this.cellLevel);
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append("apnName=").append(this.apnName);
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append("wifiInfo=").append(this.wifiInfo);
                sb.append("}");
                return sb.toString();
            }

            public int hashCode() {
                int i = 17;
                if (this.apnName != null) {
                    i = this.apnName.hashCode() + 527;
                }
                if (this.wifiInfo != null) {
                    i = (i * 31) + this.wifiInfo.hashCode();
                }
                return (((i * 31) + this.apnType) * 31) + this.cellLevel;
            }
        }

        public static abstract class Proxy extends HttpProxy {
        }

        public static class Wifi extends WifiDash {
        }

        public static NetworkDetailInfo getCurrentNetworkDetailInfo() {
            NetworkDetailInfo networkDetailInfo = new NetworkDetailInfo();
            networkDetailInfo.apnType = getApnType();
            networkDetailInfo.apnName = getApnNameOrWifiOrEthernet();
            networkDetailInfo.wifiInfo = Wifi.getWifiInfo();
            networkDetailInfo.cellLevel = getCellLevel();
            return networkDetailInfo;
        }
    }

    public static class Storage extends StorageDash {
    }

    public static String getInfo() {
        return getInstance().getDeviceInfo();
    }
}
