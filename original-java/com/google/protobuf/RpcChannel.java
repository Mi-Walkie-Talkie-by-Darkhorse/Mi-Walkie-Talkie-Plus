package com.google.protobuf;

import com.google.protobuf.Descriptors.MethodDescriptor;

public interface RpcChannel {
    void callMethod(MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2, RpcCallback<Message> rpcCallback);
}
