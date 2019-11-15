package com.mi.milinkforgame.sdk.debug;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.Device;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest.LengthPair;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest.StringContent;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.debug.BaseDataMonitor.MonitorItem;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MiLinkMonitor extends BaseDataMonitor {
    private static final String TAG = "MiLinkMonitor";
    private static MiLinkMonitor sInstance = new MiLinkMonitor();

    private MiLinkMonitor() {
        super(TAG);
        setUploadInterval(ConfigManager.getInstance().getUploadStasticInterval());
    }

    public void doPostDataAtOnce() {
        ClientLog.w(TAG, "doPostDataAtOnce()");
        this.mTimer.removeMessageUploadData();
        this.mTimer.sendMessageUploadDataDelayed(0);
    }

    /* access modifiers changed from: protected */
    public void doPostData() {
        if (Network.isAvailable() && this.mMonitorItemMap.size() > 0) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.putAll(this.mMonitorItemMap);
            this.mMonitorItemMap.clear();
            if (!TextUtils.isEmpty(MiAccountManager.getInstance().getUserId())) {
                String json = toJson(concurrentHashMap);
                ClientLog.v(TAG, "ThreadId=" + Thread.currentThread().getId() + ", doPostData: dataJson=" + json);
                if (!TextUtils.isEmpty(json)) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dataJson", json);
                    if (!ClientAppInfo.isTestChannel()) {
                        try {
                            StringContent postAsString = SimpleRequest.postAsString(Const.STASTIC_SERVER_ADDR, hashMap, null, true, new LengthPair());
                            if (postAsString != null) {
                                ClientLog.v(TAG, "doPostData use host report succeed: " + postAsString.getBody());
                                return;
                            }
                        } catch (Exception e) {
                            ClientLog.v(TAG, "doPostData use host report failed");
                        }
                        try {
                            StringContent postAsString2 = SimpleRequest.postAsString(Const.STASTIC_SERVER_ADDR_IP, hashMap, null, true, Const.STASTIC_SERVER_HOST, new LengthPair());
                            if (postAsString2 != null) {
                                ClientLog.v(TAG, "doPostData use ip report succeed: " + postAsString2.getBody());
                                return;
                            }
                        } catch (Exception e2) {
                            ClientLog.v(TAG, "doPostData use ip report failed");
                        }
                        ClientLog.v(TAG, "doPostData use host and ip failed");
                        this.mMonitorItemMap.putAll(concurrentHashMap);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public String toJson(ConcurrentHashMap<String, List<MonitorItem>> concurrentHashMap) {
        String str;
        int i;
        int i2;
        String str2 = "";
        if (concurrentHashMap == null) {
            return str2;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Const.TRACE_AC, Const.TRACE_AC_VALUE);
            jSONObject.put("appid", String.valueOf(Global.getClientAppInfo().getAppId()));
            jSONObject.put(Const.PARAM_PACKET_VID, MiAccountManager.getInstance().getUserId());
            jSONObject.put(Const.PARAM_CLIENT_VERSION, String.valueOf(Global.getClientAppInfo().getVersionCode()));
            jSONObject.put(Const.PARAM_MI_LINK_VERSION, String.valueOf(Global.getMiLinkVersion()));
            jSONObject.put(Const.PARAM_SYSTEM_VERSION, "Android" + String.valueOf(VERSION.RELEASE));
            jSONObject.put(Const.PARAM_DEVICE_ID, CommonUtils.miuiSHA1(Device.getInstance().getDeviceId()));
            jSONObject.put(Const.PARAM_DEVICE_INFO, Build.MODEL);
            jSONObject.put(Const.PARAM_CHANNEL, Global.getClientAppInfo().getReleaseChannel());
            JSONArray jSONArray = new JSONArray();
            for (String str3 : concurrentHashMap.keySet()) {
                List<MonitorItem> list = (List) concurrentHashMap.get(str3);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Key.CMD, str3);
                int i3 = 0;
                JSONArray jSONArray2 = new JSONArray();
                JSONArray jSONArray3 = new JSONArray();
                int i4 = 0;
                for (MonitorItem monitorItem : list) {
                    if (monitorItem.isSuccess) {
                        i3++;
                        if (monitorItem.waste >= 0) {
                            jSONArray2.put(monitorItem.waste);
                            i = i4;
                            i2 = i3;
                        }
                        i = i4;
                        i2 = i3;
                    } else {
                        i4++;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("apn", monitorItem.apn);
                        jSONObject3.put("at", monitorItem.apnType);
                        if (!TextUtils.isEmpty(monitorItem.accip)) {
                            jSONObject3.put("accip", monitorItem.accip);
                        }
                        if (monitorItem.port > 0) {
                            jSONObject3.put("accport", monitorItem.port);
                        }
                        jSONObject3.put("errCode", monitorItem.errorCode);
                        jSONObject3.put(Values.SEQ, monitorItem.seq);
                        jSONObject3.put("waste", monitorItem.waste);
                        jSONArray3.put(jSONObject3);
                        i = i4;
                        i2 = i3;
                    }
                    i3 = i2;
                    i4 = i;
                }
                jSONObject2.put("successTimes", i3);
                if (jSONArray2.length() > 0) {
                    jSONObject2.put("successWasteArray", jSONArray2);
                }
                jSONObject2.put("failedTimes", i4);
                jSONObject2.put("failedInfo", jSONArray3);
                jSONArray.put(jSONObject2);
            }
            if (jSONArray.length() > 0) {
                jSONObject.put(Const.PARAM_DATA, jSONArray);
                str = jSONObject.toString();
            } else {
                str = str2;
            }
            return str;
        } catch (JSONException e) {
            ClientLog.e(TAG, "toJson", e);
            return str2;
        }
    }

    public static MiLinkMonitor getInstance() {
        return sInstance;
    }
}
