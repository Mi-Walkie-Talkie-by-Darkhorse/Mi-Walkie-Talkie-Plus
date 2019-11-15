package com.mi.milinkforgame.sdk.config;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.data.Const.Extra;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.service.MiLinkAlarm;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.util.Observable;
import org.json.JSONException;
import org.json.JSONObject;

public class ConfigManager extends Observable {
    private static final int DEFAULT_HEART_BEAT_INTERVAL = 270000;
    private static final int DEFAULT_SPEED_TEST_INTERVAL = 43200000;
    private static final String JSON_KEY_ENGINE_CONFIG_RATIO = "engineConfRatio";
    private static final String JSON_KEY_HB = "hb";
    private static final String JSON_KEY_INTL = "intl";
    private static final String JSON_KEY_ST = "st";
    private static final String JSON_KEY_TIP = "tip";
    private static final String JSON_KEY_UIP = "uip";
    private static final int MOBILE_NETWORK_CONNECTION_TIME_OUT = 20000;
    private static final int MOBILE_NETWORK_DNS_TIME_OUT = 6000;
    private static final int MOBILE_NETWORK_REQUEST_TIME_OUT = 20000;
    private static final int MOBILE_NETWORK_UPLOAD_STASTIC_INTERVAL = 600000;
    private static final String PREF_KEY_CONFIG_TIME_STAMP = "game_config_time_stamp";
    private static final String PREF_KEY_HEART_BEAT_INTERVAL = "game_heart_beat_interval";
    private static final String PREF_KEY_SPEED_TEST_INTERVAL = "game_speed_test_interval";
    private static final String PREF_KEY_SPEED_TEST_TIP = "game_speed_test_tip";
    private static final String PREF_KEY_SPEED_TEST_UIP = "game_speed_test_uip";
    private static final String PREF_KEY_SUID = "game_suid";
    private static final String PREF_MNS_SETTINGS_DATA_NAME = "game_mns_settings_data";
    private static final String TAG = "ConfigManager";
    private static final int WIFI_CONNECTION_TIME_OUT = 15000;
    private static final int WIFI_DNS_TIME_OUT = 4000;
    private static final int WIFI_REQUEST_TIME_OUT = 15000;
    private static final int WIFI_UPLOAD_STASTIC_INTERVAL = 300000;
    private static ConfigManager sIntance = new ConfigManager();
    private long configTimeStamp;
    private Context context;
    private float engineConfigRatio;
    private boolean hasInitConfig;
    private boolean hasInitHeartBeat;
    private boolean hasInitStInterval;
    private long heartBeatInterval;
    private Settings settings;
    private long speedTestInterval;
    private String speedTestTip;
    private String speedTestUip;
    private String suid;

    public static ConfigManager getInstance() {
        return sIntance;
    }

    private ConfigManager() {
        this.suid = null;
        this.engineConfigRatio = -1.0f;
        this.heartBeatInterval = 270000;
        this.speedTestInterval = Extra.DefSuicideTimespan;
        this.hasInitHeartBeat = false;
        this.hasInitConfig = false;
        this.hasInitStInterval = false;
        this.configTimeStamp = 0;
        this.context = null;
        this.speedTestTip = null;
        this.speedTestUip = null;
        this.settings = null;
        this.context = Global.getContext();
        this.settings = new Settings();
    }

    public int getConnetionTimeout() {
        if (Network.isMobile()) {
            return BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
        }
        return 15000;
    }

    public int getRequestTimeout() {
        if (Network.isMobile()) {
            return BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
        }
        return 15000;
    }

    public int getUploadStasticInterval() {
        if (Network.isWifi()) {
            return WIFI_UPLOAD_STASTIC_INTERVAL;
        }
        return MOBILE_NETWORK_UPLOAD_STASTIC_INTERVAL;
    }

    public int getDnsTimeout() {
        if (Network.isMobile()) {
            return MOBILE_NETWORK_DNS_TIME_OUT;
        }
        return 4000;
    }

    private synchronized void setSettingsDataString(String str, String str2) {
        if (this.context != null) {
            Editor edit = this.context.getSharedPreferences(PREF_MNS_SETTINGS_DATA_NAME, 0).edit();
            edit.putString(str, str2);
            commit(edit);
        }
    }

    private String getSettingsDataString(String str, String str2) {
        if (this.context != null) {
            return this.context.getSharedPreferences(PREF_MNS_SETTINGS_DATA_NAME, 0).getString(str, str2);
        }
        return str2;
    }

    private synchronized void setSettingsDataLong(String str, long j) {
        if (this.context != null) {
            Editor edit = this.context.getSharedPreferences(PREF_MNS_SETTINGS_DATA_NAME, 0).edit();
            edit.putLong(str, j);
            commit(edit);
        }
    }

    private long getSettingsDataLong(String str, long j) {
        if (this.context != null) {
            return this.context.getSharedPreferences(PREF_MNS_SETTINGS_DATA_NAME, 0).getLong(str, j);
        }
        return j;
    }

    public synchronized String getSpeedTestTcpIps() {
        if (this.speedTestTip == null) {
            this.speedTestTip = getSettingsDataString(PREF_KEY_SPEED_TEST_TIP, "");
        }
        return this.speedTestTip;
    }

    private synchronized void updateSpeedTestTcpIps(String str) {
        MiLinkLog.v(TAG, "speedtest tip is " + str);
        if (!TextUtils.isEmpty(str) && !str.equals(this.speedTestTip)) {
            this.speedTestTip = str;
            setSettingsDataString(PREF_KEY_SPEED_TEST_TIP, str);
        }
    }

    public synchronized String getSpeedTestUdpIps() {
        if (this.speedTestUip == null) {
            this.speedTestUip = getSettingsDataString(PREF_KEY_SPEED_TEST_UIP, "");
        }
        return this.speedTestUip;
    }

    private synchronized void updateSpeedTestUdpIps(String str) {
        MiLinkLog.v(TAG, "speedtest uip is " + str);
        if (!TextUtils.isEmpty(str) && !str.equals(this.speedTestUip)) {
            this.speedTestUip = str;
            setSettingsDataString(PREF_KEY_SPEED_TEST_UIP, str);
        }
    }

    public synchronized String getSuid() {
        if (this.suid == null) {
            this.suid = getSettingsDataString(PREF_KEY_SUID, "");
        }
        return this.suid;
    }

    public synchronized float getEngineConfigRatio() {
        return this.engineConfigRatio;
    }

    public synchronized void updateSuid(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.suid)) {
            this.suid = str;
            setSettingsDataString(PREF_KEY_SUID, this.suid);
        }
    }

    public synchronized void resetSuid() {
        this.suid = "";
        setSettingsDataString(PREF_KEY_SUID, this.suid);
    }

    public synchronized long getSpeedTestInterval() {
        if (!this.hasInitStInterval) {
            this.speedTestInterval = getSettingsDataLong(PREF_KEY_SPEED_TEST_INTERVAL, Extra.DefSuicideTimespan);
            this.hasInitStInterval = true;
            if (this.speedTestInterval <= 0) {
                this.speedTestInterval = Extra.DefSuicideTimespan;
            }
        }
        return this.speedTestInterval;
    }

    private synchronized void updateSpeedTestInterval(long j) {
        MiLinkLog.v(TAG, "speedtest interval from server is " + j);
        if (j > 0) {
            long j2 = 1000 * j;
            if (j2 != this.speedTestInterval) {
                this.speedTestInterval = j2;
                setSettingsDataLong(PREF_KEY_SPEED_TEST_INTERVAL, this.speedTestInterval);
            }
        }
    }

    public synchronized long getHeartBeatInterval() {
        if (!this.hasInitHeartBeat) {
            this.heartBeatInterval = getSettingsDataLong(PREF_KEY_HEART_BEAT_INTERVAL, 270000);
            this.hasInitHeartBeat = true;
            if (this.heartBeatInterval <= 0) {
                this.heartBeatInterval = 270000;
            }
        }
        return this.heartBeatInterval;
    }

    private synchronized void updateHeartBeatInterval(long j) {
        MiLinkLog.v(TAG, "heartbeat interval from server is " + j);
        if (j > 0) {
            long j2 = 1000 * j;
            if (j2 != this.heartBeatInterval) {
                MiLinkLog.v(TAG, "update heat beat interval from " + this.heartBeatInterval + " to " + j2);
                this.heartBeatInterval = j2;
                setSettingsDataLong(PREF_KEY_HEART_BEAT_INTERVAL, this.heartBeatInterval);
                MiLinkAlarm.setInterval(this.heartBeatInterval);
            }
        }
    }

    public synchronized long getConfigTimeStamp() {
        if (!this.hasInitConfig) {
            this.configTimeStamp = getSettingsDataLong(PREF_KEY_CONFIG_TIME_STAMP, 0);
            this.hasInitConfig = true;
        }
        return this.configTimeStamp;
    }

    public synchronized boolean updateConfig(long j, String str) {
        boolean z = false;
        synchronized (this) {
            MiLinkLog.v(TAG, "update config from " + this.configTimeStamp + " to " + j + ", jsonConfig=" + str);
            if (j > this.configTimeStamp) {
                this.configTimeStamp = j;
                setSettingsDataLong(PREF_KEY_CONFIG_TIME_STAMP, this.configTimeStamp);
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        updateHeartBeatInterval((long) jSONObject.optInt(JSON_KEY_HB, 0));
                        JSONObject optJSONObject = jSONObject.optJSONObject(JSON_KEY_ST);
                        if (optJSONObject != null) {
                            updateSpeedTestInterval((long) optJSONObject.optInt(JSON_KEY_INTL, 0));
                            updateSpeedTestTcpIps(optJSONObject.optString(JSON_KEY_TIP, ""));
                            updateSpeedTestUdpIps(optJSONObject.optString(JSON_KEY_UIP, ""));
                        }
                        try {
                            this.engineConfigRatio = Float.parseFloat(jSONObject.getString(JSON_KEY_ENGINE_CONFIG_RATIO));
                        } catch (Exception e) {
                            MiLinkLog.e(TAG, (Throwable) e);
                            this.engineConfigRatio = 0.5f;
                        }
                    } catch (JSONException e2) {
                        MiLinkLog.e(TAG, (Throwable) e2);
                    }
                }
                z = true;
            }
        }
        return z;
    }

    public Settings getSetting() {
        return this.settings;
    }

    @SuppressLint({"NewApi"})
    private boolean commit(Editor editor) {
        if (VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }
}
