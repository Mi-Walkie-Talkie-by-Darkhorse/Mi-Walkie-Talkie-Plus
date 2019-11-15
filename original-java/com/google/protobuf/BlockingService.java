package com.google.protobuf;

import com.google.protobuf.Descriptors.MethodDescriptor;
import com.google.protobuf.Descriptors.ServiceDescriptor;

public interface BlockingService {
    Message callBlockingMethod(MethodDescriptor methodDescriptor, RpcController rpcController, Message message) throws ServiceException;

    ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(MethodDescriptor methodDescriptor);

    Message getResponsePrototype(MethodDescriptor methodDescriptor);
}
