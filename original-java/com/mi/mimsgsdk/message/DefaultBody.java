package com.mi.mimsgsdk.message;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.client.ClientLog;

public class DefaultBody implements MiMsgBody {
    private static final String LOG_TAG = DefaultBody.class.getSimpleName();
    private byte[] content;
    private String tips;

    public void setTips(String str) {
        this.tips = str;
    }

    public void setContent(byte[] bArr) {
        this.content = bArr;
    }

    public String getTips() {
        return this.tips;
    }

    public byte[] getContent() {
        return this.content;
    }

    public byte[] codeBody() {
        com.mi.mimsgsdk.proto.BodyDefine.DefaultBody build;
        if (this.content != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.DefaultBody.newBuilder().setTips(this.tips).setContent(ByteString.copyFrom(this.content)).build();
        } else {
            build = com.mi.mimsgsdk.proto.BodyDefine.DefaultBody.newBuilder().setTips(this.tips).build();
        }
        return build.toByteArray();
    }

    public void decodeBody(byte[] bArr) {
        try {
            com.mi.mimsgsdk.proto.BodyDefine.DefaultBody parseFrom = com.mi.mimsgsdk.proto.BodyDefine.DefaultBody.parseFrom(bArr);
            this.tips = parseFrom.getTips();
            if (parseFrom.getContent() != null) {
                this.content = parseFrom.getContent().toByteArray();
            }
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(LOG_TAG, "DefaultBody decode error e.getMessage " + e.getMessage());
        }
    }
}
