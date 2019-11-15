package com.mi.mimsgsdk.stat.model;

import android.support.annotation.CallSuper;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseStatModel {
    protected int appid;
    protected String cmd;
    protected long createTime = System.currentTimeMillis();
    protected long ts = (this.createTime / 1000);

    public interface Key {
        public static final String APPID = "appid";
        public static final String CMD = "cmd";
        public static final String CREATE_TIME = "createTime";
        public static final String LOG_TYPE = "logtype";
        public static final String TS = "ts";
    }

    /* access modifiers changed from: protected */
    public abstract String getCommond();

    public abstract int getType();

    /* access modifiers changed from: protected */
    @Nullable
    public abstract GeneratedMessage toPbReq();

    public abstract GeneratedMessage toPbRsp(@NonNull PacketData packetData) throws InvalidProtocolBufferException;

    public BaseStatModel(@NonNull String str, int i) {
        this.cmd = str;
        this.appid = i;
    }

    @CallSuper
    @CheckResult
    public JSONObject toJsonObject() {
        if (TextUtils.isEmpty(this.cmd) || this.appid <= 0) {
            throw new IllegalArgumentException("please check cmd & appid");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Key.CMD, this.cmd);
            jSONObject.put("appid", this.appid);
            jSONObject.put(Key.TS, this.ts);
            jSONObject.put(Key.CREATE_TIME, this.createTime);
            jSONObject.put(Key.LOG_TYPE, getType());
        } catch (JSONException e) {
            ClientLog.e("BaseStatModel", e.getMessage(), e);
        }
        return jSONObject;
    }

    @CallSuper
    public void fromJsonObject(@NonNull JSONObject jSONObject) {
        this.cmd = jSONObject.optString(Key.CMD);
        this.appid = jSONObject.optInt("appid");
        this.ts = jSONObject.optLong(Key.TS);
        this.createTime = jSONObject.optLong(Key.CREATE_TIME);
    }

    @Nullable
    public final PacketData toReqPacketData() {
        PacketData packetData = new PacketData();
        packetData.setCommand(getCommond());
        GeneratedMessage pbReq = toPbReq();
        if (pbReq == null) {
            return null;
        }
        ClientLog.d(getClass().getSimpleName(), "PB to be send:\n" + pbReq.toString());
        packetData.setData(pbReq.toByteArray());
        return packetData;
    }
}
