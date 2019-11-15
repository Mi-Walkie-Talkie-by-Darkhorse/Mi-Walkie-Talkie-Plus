package com.mi.mimsgsdk.message;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.client.ClientLog;

public class AudioBody implements MiMsgBody {
    private String TAG = "AudioBody";
    public byte[] content;
    public long mLength;
    public String mUrl;

    public void setLength(long j) {
        this.mLength = j;
    }

    public long getLength() {
        return this.mLength;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setContent(byte[] bArr) {
        this.content = bArr;
    }

    public byte[] getContent() {
        return this.content;
    }

    public byte[] codeBody() {
        com.mi.mimsgsdk.proto.BodyDefine.AudioBody build;
        if (this.content != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.AudioBody.newBuilder().setDuration((int) this.mLength).setServerURL(this.mUrl).setContent(ByteString.copyFrom(this.content)).build();
        } else {
            build = com.mi.mimsgsdk.proto.BodyDefine.AudioBody.newBuilder().setDuration((int) this.mLength).setServerURL(this.mUrl).build();
        }
        return build.toByteArray();
    }

    public void decodeBody(byte[] bArr) throws InvalidProtocolBufferException {
        try {
            com.mi.mimsgsdk.proto.BodyDefine.AudioBody parseFrom = com.mi.mimsgsdk.proto.BodyDefine.AudioBody.parseFrom(bArr);
            this.mLength = (long) parseFrom.getDuration();
            this.mUrl = parseFrom.getServerURL();
            if (parseFrom.getContent() != null) {
                this.content = parseFrom.getContent().toByteArray();
            }
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(this.TAG, "AudioBody decode error e.getMessage " + e.getMessage());
            throw e;
        }
    }
}
