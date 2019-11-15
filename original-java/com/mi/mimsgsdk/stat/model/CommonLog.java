package com.mi.mimsgsdk.stat.model;

import android.support.annotation.NonNull;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.proto.Scribe.CommonlogReq;
import com.mi.mimsgsdk.proto.Scribe.CommonlogRsp;
import com.mi.mimsgsdk.utils.MnsCommand.Scribe;
import org.json.JSONException;
import org.json.JSONObject;

public class CommonLog extends BaseStatModel {
    protected String str;

    protected interface Key {
        public static final String STR = "str";
    }

    public CommonLog() {
        this("", 0);
    }

    public CommonLog(String str2, int i) {
        super(str2, i);
    }

    /* access modifiers changed from: protected */
    public GeneratedMessage toPbReq() {
        return CommonlogReq.newBuilder().setCmd(this.cmd).setAppid(this.appid).setTs(this.ts).setStr(this.str).build();
    }

    /* access modifiers changed from: protected */
    public String getCommond() {
        return Scribe.COMMON_LOG;
    }

    public JSONObject toJsonObject() {
        JSONObject jsonObject = super.toJsonObject();
        try {
            jsonObject.put(Key.STR, this.str);
        } catch (JSONException e) {
            ClientLog.e("CommonLog", e.getMessage(), e);
        }
        return jsonObject;
    }

    public void fromJsonObject(@NonNull JSONObject jSONObject) {
        super.fromJsonObject(jSONObject);
        this.str = jSONObject.optString(Key.STR);
    }

    public void setStr(String str2) {
        this.str = str2;
    }

    public int getType() {
        return 2;
    }

    public GeneratedMessage toPbRsp(@NonNull PacketData packetData) throws InvalidProtocolBufferException {
        return CommonlogRsp.parseFrom(packetData.getData());
    }
}
