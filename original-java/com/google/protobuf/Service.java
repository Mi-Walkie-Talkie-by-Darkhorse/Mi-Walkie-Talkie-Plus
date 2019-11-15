package com.google.protobuf;

import com.google.protobuf.Descriptors.MethodDescriptor;
import com.google.protobuf.Descriptors.ServiceDescriptor;

public interface Service {
    void callMethod(MethodDescriptor methodDescriptor, RpcController rpcController, Message message, RpcCallback<Message> rpcCallback);

    ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(MethodDescriptor methodDescriptor);

    Message getResponsePrototype(MethodDescriptor methodDescriptor);
}
