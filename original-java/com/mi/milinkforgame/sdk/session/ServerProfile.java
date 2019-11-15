package com.mi.milinkforgame.sdk.session;

import java.io.Serializable;

public class ServerProfile implements Serializable {
    private static final long serialVersionUID = -8956679711781976000L;
    private int mPorxyPort;
    private int mProtocol;
    private String mProxyIP;
    private String mServerIP;
    private int mServerPort;
    private int mServerType;

    public ServerProfile(String str, int i, int i2, int i3) {
        this(str, i, null, 0, i2, i3);
    }

    public ServerProfile(String str, int i, String str2, int i2, int i3, int i4) {
        this.mServerIP = str;
        this.mServerPort = i;
        this.mProxyIP = str2;
        this.mPorxyPort = i2;
        this.mProtocol = i3;
        this.mServerType = i4;
    }

    public boolean equals(ServerProfile serverProfile) {
        if (this.mServerIP == null || this.mServerPort == 0 || serverProfile == null || !this.mServerIP.equals(serverProfile.getServerIP()) || this.mServerPort != serverProfile.getServerPort()) {
            return false;
        }
        if (this.mProxyIP == null && serverProfile.getProxyIP() == null) {
            return true;
        }
        if (this.mProxyIP != null && serverProfile.getProxyIP() == null) {
            return false;
        }
        if (this.mProxyIP == null && serverProfile.getProxyIP() != null) {
            return false;
        }
        if ((this.mProxyIP == null || this.mProxyIP.equals(serverProfile.getProxyIP())) && this.mPorxyPort == serverProfile.getPorxyPort()) {
            return true;
        }
        return false;
    }

    public boolean isBetterThan(ServerProfile serverProfile) {
        if (serverProfile == null) {
            return true;
        }
        if (this.mServerIP == null || this.mServerPort == 0) {
            return false;
        }
        if (this.mProtocol != 1) {
            return false;
        }
        if (this.mServerType != 2 && serverProfile.getProtocol() == 1 && serverProfile.getServerType() == 2) {
            return false;
        }
        return true;
    }

    public int getServerType() {
        return this.mServerType;
    }

    public void setServerType(int i) {
        this.mServerType = i;
    }

    public String getServerIP() {
        return this.mServerIP;
    }

    public void setServerIP(String str) {
        this.mServerIP = str;
    }

    public int getServerPort() {
        return this.mServerPort;
    }

    public void setServerPort(int i) {
        this.mServerPort = i;
    }

    public String getProxyIP() {
        return this.mProxyIP;
    }

    public void setProxyIP(String str) {
        this.mProxyIP = str;
    }

    public int getPorxyPort() {
        return this.mPorxyPort;
    }

    public void setPorxyPort(int i) {
        this.mPorxyPort = i;
    }

    public int getProtocol() {
        return this.mProtocol;
    }

    public void setProtocol(int i) {
        this.mProtocol = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[ ");
        sb.append("sIP=").append(this.mServerIP);
        sb.append(", sPort=").append(this.mServerPort);
        sb.append(", pIP=").append(this.mProxyIP);
        sb.append(", pPort=").append(this.mPorxyPort);
        sb.append(", protocol=").append(SessionConst.getProtocol(this.mProtocol));
        sb.append(", type=").append(SessionConst.getSeverType(this.mServerType));
        sb.append(" ]");
        return sb.toString();
    }
}
