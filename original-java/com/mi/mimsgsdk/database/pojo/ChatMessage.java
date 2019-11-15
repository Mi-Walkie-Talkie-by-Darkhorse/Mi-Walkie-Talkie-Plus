package com.mi.mimsgsdk.database.pojo;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.mi.mimsgsdk.database.ContentValuesable;
import com.mi.mimsgsdk.database.IMessageDao;
import com.mi.mimsgsdk.database.JSONable;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class ChatMessage implements ContentValuesable, JSONable, Serializable {
    private static final String TAG = "ChatMessage";
    private String appid;
    private byte[] body;
    private String fromGuid;
    private long msgId;
    private long msgSeq;
    private long sentTime;
    private String toGuid;
    private String userId;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("appid: " + this.appid).append(", fromGuid: " + this.fromGuid).append(", toGuid: " + this.toGuid).append(", msgSeq: " + this.msgSeq).append(", msgId: " + this.msgId).append(", sentTime: " + this.sentTime).append(", body: " + this.body).append(", userId: " + this.userId);
        return sb.toString();
    }

    public ChatMessage() {
        this.appid = "appid";
        this.fromGuid = IMessageDao.FROM_GUID;
        this.toGuid = IMessageDao.TO_GUID;
        this.msgSeq = 0;
        this.msgId = 0;
        this.sentTime = 0;
        this.body = new byte[]{1, 3, 2, 4};
        this.userId = IMessageDao.USER_ID;
    }

    public ChatMessage(Cursor cursor) {
        this.appid = cursor.getString(1);
        this.fromGuid = cursor.getString(2);
        this.toGuid = cursor.getString(3);
        this.msgSeq = cursor.getLong(4);
        this.msgId = cursor.getLong(5);
        this.sentTime = (long) cursor.getInt(6);
        this.body = cursor.getBlob(7);
        this.userId = cursor.getString(8);
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public String getAppid() {
        return this.appid;
    }

    public void setFromGuid(String str) {
        this.fromGuid = str;
    }

    public String getFromGuid() {
        return this.fromGuid;
    }

    public void setToGuid(String str) {
        this.toGuid = str;
    }

    public String getToGuid() {
        return this.toGuid;
    }

    public void setMsgSeq(Long l) {
        this.msgSeq = l.longValue();
    }

    public Long getMsgSeq() {
        return Long.valueOf(this.msgSeq);
    }

    public void setMsgId(long j) {
        this.msgId = j;
    }

    public long getMsgId() {
        return this.msgId;
    }

    public void setSentTime(long j) {
        this.sentTime = j;
    }

    public long getSentTime() {
        return this.sentTime;
    }

    public void setBody(byte[] bArr) {
        this.body = bArr;
    }

    public byte[] getBody() {
        return this.body;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public ContentValues toContentValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("appid", this.appid);
        contentValues.put(IMessageDao.FROM_GUID, this.fromGuid);
        contentValues.put(IMessageDao.TO_GUID, this.toGuid);
        contentValues.put(IMessageDao.MSG_SEQ, Long.valueOf(this.msgSeq));
        contentValues.put(IMessageDao.MSG_ID, Long.valueOf(this.msgId));
        contentValues.put(IMessageDao.SENT_TIME, Long.valueOf(this.sentTime));
        contentValues.put(IMessageDao.BODY, this.body);
        contentValues.put(IMessageDao.USER_ID, this.userId);
        return contentValues;
    }

    public void updateByContentValues(ContentValues contentValues) {
    }

    public String toJSONString() {
        JSONObject jSONObject = toJSONObject();
        if (jSONObject != null) {
            return jSONObject.toString();
        }
        return "";
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", this.appid);
            jSONObject.put(IMessageDao.FROM_GUID, this.fromGuid);
            jSONObject.put(IMessageDao.TO_GUID, this.toGuid);
            jSONObject.put(IMessageDao.MSG_SEQ, this.msgSeq);
            jSONObject.put(IMessageDao.MSG_ID, this.msgId);
            jSONObject.put(IMessageDao.SENT_TIME, this.sentTime);
            jSONObject.put(IMessageDao.BODY, this.body);
            jSONObject.put(IMessageDao.USER_ID, this.userId);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public boolean parseJSONString(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.appid = jSONObject.getString("appid");
            this.fromGuid = jSONObject.getString(IMessageDao.FROM_GUID);
            this.toGuid = jSONObject.getString(IMessageDao.TO_GUID);
            this.msgSeq = jSONObject.getLong(IMessageDao.MSG_SEQ);
            this.msgId = jSONObject.getLong(IMessageDao.MSG_ID);
            this.sentTime = jSONObject.getLong(IMessageDao.SENT_TIME);
            this.body = (byte[]) jSONObject.get(IMessageDao.BODY);
            this.userId = jSONObject.getString(IMessageDao.USER_ID);
            return true;
        } catch (JSONException e) {
            return false;
        }
    }
}
