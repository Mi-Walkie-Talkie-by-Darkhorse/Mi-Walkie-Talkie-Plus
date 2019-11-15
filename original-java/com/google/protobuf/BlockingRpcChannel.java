package com.google.protobuf;

import com.google.protobuf.Descriptors.MethodDescriptor;

public interface BlockingRpcChannel {
    Message callBlockingMethod(MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2) throws ServiceException;
}
