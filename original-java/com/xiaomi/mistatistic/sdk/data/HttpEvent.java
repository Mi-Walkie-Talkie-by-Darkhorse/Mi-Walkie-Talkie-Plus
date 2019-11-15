package com.xiaomi.mistatistic.sdk.data;

import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.j;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpEvent {
    public static final int FLOW_DOWNLOAD = 2;
    public static final int FLOW_UNDEFINED = 0;
    public static final int FLOW_UPLOAD = 1;
    private String exceptionName;
    private long firstPacketCost;
    private int flowStatus;
    private String ip;
    private String net;
    private long netFlow;
    private String operator;
    private String reqId;
    private int responseCode;
    private long time;
    private long timeCost;
    private String url;

    public HttpEvent(String str, long j) {
        this(str, j, -1, (String) null);
    }

    public HttpEvent(String str, long j, long j2) {
        this(str, j, j2, -1, null);
    }

    public HttpEvent(String str, long j, long j2, int i) {
        this(str, j, j2, i, null);
    }

    public HttpEvent(String str, long j, String str2) {
        this(str, j, -1, str2);
    }

    public HttpEvent(String str, long j, int i, String str2) {
        this(str, j, 0, i, str2);
    }

    public HttpEvent(String str, long j, long j2, int i, String str2) {
        this.time = System.currentTimeMillis();
        this.netFlow = 0;
        this.flowStatus = 0;
        this.url = str;
        this.timeCost = j;
        this.responseCode = i;
        this.exceptionName = str2;
        this.netFlow = j2;
        setNet();
    }

    public HttpEvent(String str, String str2) {
        this(str, -1, -1, str2);
    }

    public void setNet(String str) {
        this.net = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setFirstPacketCost(long j) {
        this.firstPacketCost = j;
    }

    public long getFirstPacketCost() {
        return this.firstPacketCost;
    }

    public void setNet() {
        if (c.a() == null) {
            this.net = "NULL";
            return;
        }
        String b = j.b(c.a());
        if (TextUtils.isEmpty(b)) {
            this.net = "NULL";
            return;
        }
        this.net = b;
        if (!"WIFI".equalsIgnoreCase(b)) {
            this.operator = ((TelephonyManager) c.a().getSystemService(UserInfo.TYPE_PHONE)).getSimOperator();
        }
    }

    public void setFlowStatus(int i) {
        this.flowStatus = i;
    }

    public int getFlowStatus() {
        return this.flowStatus;
    }

    public JSONObject toJSON() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("net", this.net);
        if (this.timeCost > 0) {
            jSONObject.put("cost", this.timeCost);
        }
        if (this.firstPacketCost > 0) {
            jSONObject.put("first_byte_t", this.firstPacketCost);
        }
        if (this.responseCode != -1) {
            jSONObject.put("code", this.responseCode);
        }
        if (!TextUtils.isEmpty(this.exceptionName)) {
            jSONObject.put("exception", this.exceptionName);
        }
        if (!TextUtils.isEmpty(this.operator)) {
            jSONObject.put("op", this.operator);
        }
        if (this.netFlow > 0) {
            jSONObject.put("flow", this.netFlow);
        }
        if (this.flowStatus == 1 || this.flowStatus == 2) {
            jSONObject.put("flow_status", this.flowStatus);
        }
        if (!TextUtils.isEmpty(this.reqId)) {
            jSONObject.put("rid", this.reqId);
        }
        if (!TextUtils.isEmpty(this.ip)) {
            jSONObject.put("dns", this.ip);
        }
        jSONObject.put("t", this.time);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HttpEvent)) {
            return false;
        }
        HttpEvent httpEvent = (HttpEvent) obj;
        if (TextUtils.equals(this.url, httpEvent.url) && TextUtils.equals(this.net, httpEvent.net) && TextUtils.equals(this.exceptionName, httpEvent.exceptionName) && TextUtils.equals(this.ip, httpEvent.ip) && this.responseCode == httpEvent.responseCode && this.timeCost == httpEvent.timeCost && this.time == httpEvent.time && this.netFlow == httpEvent.netFlow && this.flowStatus == httpEvent.flowStatus && TextUtils.equals(this.reqId, httpEvent.reqId) && this.firstPacketCost == httpEvent.firstPacketCost) {
            return true;
        }
        return false;
    }

    public String getRequestId() {
        return this.reqId;
    }

    public void setRequestId(String str) {
        this.reqId = str;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public long getNetFlow() {
        return this.netFlow;
    }
}
