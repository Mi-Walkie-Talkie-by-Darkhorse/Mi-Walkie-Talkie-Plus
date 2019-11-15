package com.mi.milinkforgame.sdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.data.Convert;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.mimsgsdk.utils.Constants;

public class ClientAppInfo implements Parcelable {
    public static final Creator<ClientAppInfo> CREATOR = new Creator<ClientAppInfo>() {
        public ClientAppInfo createFromParcel(Parcel parcel) {
            ClientAppInfo clientAppInfo = new ClientAppInfo();
            clientAppInfo.readFromParcel(parcel);
            return clientAppInfo;
        }

        public ClientAppInfo[] newArray(int i) {
            return new ClientAppInfo[i];
        }
    };
    private static final String DEFAULT_LANGUAGE_CODE = "zh_CN";
    private int appId = 0;
    private String appName = CommonUtils.NOT_AVALIBLE;
    private String languageCode = DEFAULT_LANGUAGE_CODE;
    private String logPath = "";
    private String packageName = CommonUtils.NOT_AVALIBLE;
    private String releaseChannel = CommonUtils.NOT_AVALIBLE;
    private String serviceProcessName = CommonUtils.NOT_AVALIBLE;
    private int versionCode = 0;
    private String versionName = CommonUtils.NOT_AVALIBLE;

    public ClientAppInfo() {
    }

    public ClientAppInfo(String str) {
        fromString(str);
    }

    public ClientAppInfo(int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.appId = i;
        this.versionCode = i2;
        this.versionName = str;
        this.releaseChannel = str2;
        this.appName = str3;
        this.packageName = str4;
        this.logPath = str5;
        setLanguageCode(str6);
        this.serviceProcessName = str7;
    }

    public int getAppId() {
        return this.appId;
    }

    public void setAppId(int i) {
        this.appId = i;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getAppName() {
        return this.appName;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String getReleaseChannel() {
        return this.releaseChannel;
    }

    public void setReleaseChannel(String str) {
        this.releaseChannel = str;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public void setLanguageCode(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.languageCode = str;
        } else {
            this.languageCode = DEFAULT_LANGUAGE_CODE;
        }
    }

    public String getLogPath() {
        return this.logPath;
    }

    public void setLogPath(String str) {
        this.logPath = str;
    }

    public String toString() {
        return this.appId + ";" + this.versionCode + ";" + this.versionName + ";" + this.releaseChannel + ";" + this.appName + ";" + this.packageName + ";" + this.languageCode + ";" + this.logPath + ";";
    }

    private void fromString(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(";");
            setAppId(Convert.strToInt(split[0], 0));
            setVersionCode(Convert.strToInt(split[1], 1));
            setVersionName(split[2]);
            setReleaseChannel(split[3]);
            if (split.length > 4) {
                setAppName(split[4]);
            }
            if (split.length > 5) {
                setPackageName(split[5]);
            }
            if (split.length > 6) {
                setLanguageCode(split[6]);
            }
            if (split.length > 7) {
                setLogPath(split[7]);
            }
            if (split.length > 8) {
                setServiceProcessName(split[8]);
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(getAppId());
        parcel.writeInt(getVersionCode());
        parcel.writeString(getVersionName());
        parcel.writeString(getReleaseChannel());
        parcel.writeString(getAppName());
        parcel.writeString(getPackageName());
        parcel.writeString(getLanguageCode());
        parcel.writeString(getLogPath());
        parcel.writeString(getServiceProcessName());
    }

    public void readFromParcel(Parcel parcel) {
        setAppId(parcel.readInt());
        setVersionCode(parcel.readInt());
        setVersionName(parcel.readString());
        setReleaseChannel(parcel.readString());
        setAppName(parcel.readString());
        setPackageName(parcel.readString());
        setLanguageCode(parcel.readString());
        setLogPath(parcel.readString());
        setServiceProcessName(parcel.readString());
    }

    public static boolean isTestChannel() {
        return Global.getClientAppInfo().getReleaseChannel().contains("test") || Global.getClientAppInfo().getReleaseChannel().contains(Constants.TEST_CHANNEL);
    }

    public static int isHigherVersion(ClientAppInfo clientAppInfo, ClientAppInfo clientAppInfo2) {
        if (clientAppInfo == null || clientAppInfo2 == null) {
            return 0;
        }
        return clientAppInfo.getVersionCode() - clientAppInfo2.getVersionCode();
    }

    public String getServiceProcessName() {
        return this.serviceProcessName;
    }

    public void setServiceProcessName(String str) {
        this.serviceProcessName = str;
    }
}
