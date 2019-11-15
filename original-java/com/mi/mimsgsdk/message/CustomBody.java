package com.mi.mimsgsdk.message;

public class CustomBody implements MiMsgBody {
    private String TAG = "CustomBody";
    public byte[] mByteData;

    public byte[] codeBody() {
        return this.mByteData;
    }

    public void decodeBody(byte[] bArr) {
        this.mByteData = bArr;
    }

    public void setData(byte[] bArr) {
        this.mByteData = bArr;
    }

    public byte[] getData() {
        return this.mByteData;
    }
}
