package com.google.protobuf;

public interface RpcCallback<ParameterType> {
    void run(ParameterType parametertype);
}
