package com.mi.mimsgsdk.stat.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.proto.Scribe.AgoralogReq;
import com.mi.mimsgsdk.proto.Scribe.AgoralogReq.Builder;
import com.mi.mimsgsdk.proto.Scribe.AgoralogRsp;
import com.mi.mimsgsdk.utils.MnsCommand.Scribe;
import org.json.JSONException;
import org.json.JSONObject;

public class AgoraLog extends BaseStatModel {
    protected String engine;
    protected String extra;
    protected String sessionRoom;
    protected String status;
    protected long uid;

    protected interface Key {
        public static final String ENGINE = "engine";
        public static final String EXTRA = "extra";
        public static final String SESSION_ROOM = "sessionRoom";
        public static final String STATUS = "status";
        public static final String UID = "uid";
    }

    public AgoraLog() {
        this("", 0);
    }

    public AgoraLog(String str, int i) {
        super(str, i);
    }

    /* access modifiers changed from: protected */
    @Nullable
    public GeneratedMessage toPbReq() {
        if (this.uid <= 0) {
            return null;
        }
        Builder status2 = AgoralogReq.newBuilder().setTraceid(getTraceId()).setTs(this.ts).setAppid(this.appid).setUid(this.uid).setCmd(this.cmd).setEngine(this.engine).setStatus(this.status);
        if (!TextUtils.isEmpty(this.sessionRoom)) {
            status2.setSessionRoom(this.sessionRoom);
        }
        if (!TextUtils.isEmpty(this.extra)) {
            status2.setExtra(this.extra);
        }
        return status2.build();
    }

    private String getTraceId() {
        return String.format("%d_%d_%s", new Object[]{Long.valueOf(this.createTime), Long.valueOf(this.uid), "and"});
    }

    public JSONObject toJsonObject() {
        JSONObject jsonObject = super.toJsonObject();
        try {
            jsonObject.put(Key.UID, this.uid);
            if (!TextUtils.isEmpty(this.sessionRoom)) {
                jsonObject.put(Key.SESSION_ROOM, this.sessionRoom);
            }
            jsonObject.put(Key.ENGINE, this.engine);
            jsonObject.put("status", this.status);
            if (!TextUtils.isEmpty(this.extra)) {
                jsonObject.put(Key.EXTRA, this.extra);
            }
        } catch (JSONException e) {
            ClientLog.e("AgoraLog", e.getMessage(), e);
        }
        return jsonObject;
    }

    public void fromJsonObject(@NonNull JSONObject jSONObject) {
        super.fromJsonObject(jSONObject);
        this.uid = jSONObject.optLong(Key.UID);
        this.sessionRoom = jSONObject.optString(Key.SESSION_ROOM, null);
        this.engine = jSONObject.optString(Key.ENGINE);
        this.status = jSONObject.optString("status");
        this.extra = jSONObject.optString(Key.EXTRA, null);
        ClientLog.e(AgoraLog.class.getSimpleName(), "after fromJsonObject : " + this.appid);
    }

    /* access modifiers changed from: protected */
    public String getCommond() {
        return Scribe.AGORA_LOG;
    }

    public void setUid(long j) {
        this.uid = j;
    }

    public void setSessionRoom(String str) {
        this.sessionRoom = str;
    }

    public void setEngine(String str) {
        this.engine = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public int getType() {
        return 1;
    }

    public GeneratedMessage toPbRsp(@NonNull PacketData packetData) throws InvalidProtocolBufferException {
        return AgoralogRsp.parseFrom(packetData.getData());
    }
}
