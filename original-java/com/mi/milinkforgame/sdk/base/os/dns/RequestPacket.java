package com.mi.milinkforgame.sdk.base.os.dns;

public class RequestPacket {
    private static byte[] header = {0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0};
    private static byte[] question = {0, 0, 1, 0, 1};
    private String domain;
    private int reqId = AtomicRequestId.getInstance().getId();

    public RequestPacket(String str) {
        this.domain = str;
    }

    public byte[] getQueryData() {
        if (this.domain == null) {
            return null;
        }
        this.domain = this.domain.trim().toLowerCase();
        if (this.domain.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[(header.length + question.length + this.domain.length() + 1)];
        String[] split = this.domain.split("\\.");
        int length = header.length;
        for (int i = 0; i < split.length; i++) {
            bArr[length] = (byte) split[i].length();
            int i2 = length + 1;
            byte[] bytes = split[i].getBytes();
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            length = i2 + bytes.length;
        }
        System.arraycopy(header, 0, bArr, 0, header.length);
        System.arraycopy(question, 0, bArr, length, question.length);
        warpReqId(bArr);
        return bArr;
    }

    public int getReqId() {
        return this.reqId;
    }

    public int getType() {
        return 1;
    }

    private void warpReqId(byte[] bArr) {
        bArr[0] = (byte) ((this.reqId >>> 8) & 255);
        bArr[1] = (byte) (this.reqId & 255);
    }
}
