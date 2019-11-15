package com.google.zxing.common;

import java.util.List;

public final class DecoderResult {
    private final List<byte[]> byteSegments;
    private final String ecLevel;
    private Integer erasures;
    private Integer errorsCorrected;
    private int numBits;
    private Object other;
    private final byte[] rawBytes;
    private final int structuredAppendParity;
    private final int structuredAppendSequenceNumber;
    private final String text;

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.rawBytes = bArr;
        this.numBits = bArr == null ? 0 : bArr.length * 8;
        this.text = str;
        this.byteSegments = list;
        this.ecLevel = str2;
        this.structuredAppendParity = i2;
        this.structuredAppendSequenceNumber = i;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public int getNumBits() {
        return this.numBits;
    }

    public void setNumBits(int i) {
        this.numBits = i;
    }

    public String getText() {
        return this.text;
    }

    public List<byte[]> getByteSegments() {
        return this.byteSegments;
    }

    public String getECLevel() {
        return this.ecLevel;
    }

    public Integer getErrorsCorrected() {
        return this.errorsCorrected;
    }

    public void setErrorsCorrected(Integer num) {
        this.errorsCorrected = num;
    }

    public Integer getErasures() {
        return this.erasures;
    }

    public void setErasures(Integer num) {
        this.erasures = num;
    }

    public Object getOther() {
        return this.other;
    }

    public void setOther(Object obj) {
        this.other = obj;
    }

    public boolean hasStructuredAppend() {
        return this.structuredAppendParity >= 0 && this.structuredAppendSequenceNumber >= 0;
    }

    public int getStructuredAppendParity() {
        return this.structuredAppendParity;
    }

    public int getStructuredAppendSequenceNumber() {
        return this.structuredAppendSequenceNumber;
    }
}
