package com.mi.mimsgsdk.message;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.client.ClientLog;

public class TextBody implements MiMsgBody {
    private String TAG = "TextBody";
    public byte[] content;
    public String text;

    public void setText(String str) {
        this.text = str;
    }

    public String getText() {
        return this.text;
    }

    public void setContent(byte[] bArr) {
        this.content = bArr;
    }

    public byte[] getContent() {
        return this.content;
    }

    public byte[] codeBody() {
        com.mi.mimsgsdk.proto.BodyDefine.TextBody build;
        if (this.content != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.TextBody.newBuilder().setText(this.text).setContent(ByteString.copyFrom(this.content)).build();
        } else {
            build = com.mi.mimsgsdk.proto.BodyDefine.TextBody.newBuilder().setText(this.text).build();
        }
        return build.toByteArray();
    }

    public void decodeBody(byte[] bArr) throws InvalidProtocolBufferException {
        try {
            com.mi.mimsgsdk.proto.BodyDefine.TextBody parseFrom = com.mi.mimsgsdk.proto.BodyDefine.TextBody.parseFrom(bArr);
            this.text = parseFrom.getText();
            if (parseFrom.getContent() != null) {
                this.content = parseFrom.getContent().toByteArray();
            }
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(this.TAG, "TextBody decode error e.getMessage " + e.getMessage());
            throw e;
        }
    }
}
