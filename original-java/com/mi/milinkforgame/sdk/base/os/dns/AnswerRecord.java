package com.mi.milinkforgame.sdk.base.os.dns;

public class AnswerRecord {
    public String domain;
    public byte[] ip;
    public int qclass;
    public long ttl;
    public int type;

    public AnswerRecord() {
    }

    public AnswerRecord(String str, byte[] bArr, int i, long j, int i2) {
        this.domain = str;
        this.ip = bArr;
        this.type = i;
        this.ttl = j;
        this.qclass = i2;
    }
}
