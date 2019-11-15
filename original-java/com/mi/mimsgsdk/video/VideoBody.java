package com.mi.mimsgsdk.video;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.message.MiMsgBody;

public class VideoBody implements MiMsgBody {
    private static final String LOG_TAG = VideoBody.class.getSimpleName();
    private byte[] content;
    private int mLength;
    private int mSize;
    private String mUrl;
    private String thumbnailUrl;

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setLength(int i) {
        this.mLength = i;
    }

    public int getLength() {
        return this.mLength;
    }

    public void setSize(int i) {
        this.mSize = i;
    }

    public int getSize() {
        return this.mSize;
    }

    public void setContent(byte[] bArr) {
        this.content = bArr;
    }

    public byte[] getContent() {
        return this.content;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public byte[] codeBody() {
        com.mi.mimsgsdk.proto.BodyDefine.VideoBody build;
        if (this.content != null && this.thumbnailUrl != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.VideoBody.newBuilder().setServerURL(this.mUrl).setDuration(this.mLength).setSize(this.mSize).setContent(ByteString.copyFrom(this.content)).setThumbnailURL(this.thumbnailUrl).build();
        } else if (this.content != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.VideoBody.newBuilder().setServerURL(this.mUrl).setDuration(this.mLength).setSize(this.mSize).setContent(ByteString.copyFrom(this.content)).build();
        } else if (this.thumbnailUrl != null) {
            build = com.mi.mimsgsdk.proto.BodyDefine.VideoBody.newBuilder().setServerURL(this.mUrl).setDuration(this.mLength).setSize(this.mSize).setThumbnailURL(this.thumbnailUrl).build();
        } else {
            build = com.mi.mimsgsdk.proto.BodyDefine.VideoBody.newBuilder().setServerURL(this.mUrl).setDuration(this.mLength).setSize(this.mSize).build();
        }
        return build.toByteArray();
    }

    public void decodeBody(byte[] bArr) {
        try {
            com.mi.mimsgsdk.proto.BodyDefine.VideoBody parseFrom = com.mi.mimsgsdk.proto.BodyDefine.VideoBody.parseFrom(bArr);
            this.mUrl = parseFrom.getServerURL();
            this.mLength = parseFrom.getDuration();
            this.mSize = parseFrom.getSize();
            if (parseFrom.getContent() != null) {
                this.content = parseFrom.getContent().toByteArray();
            }
            if (parseFrom.getThumbnailURL() != null) {
                this.thumbnailUrl = parseFrom.getThumbnailURL();
            }
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(LOG_TAG, "VideoBody decode error e.getMessage " + e.getMessage());
        }
    }
}
