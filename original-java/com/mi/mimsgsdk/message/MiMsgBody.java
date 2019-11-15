package com.mi.mimsgsdk.message;

import com.google.protobuf.InvalidProtocolBufferException;

public interface MiMsgBody {
    byte[] codeBody();

    void decodeBody(byte[] bArr) throws InvalidProtocolBufferException;
}
