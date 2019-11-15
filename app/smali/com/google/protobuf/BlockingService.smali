.class public interface abstract Lcom/google/protobuf/BlockingService;
.super Ljava/lang/Object;
.source "BlockingService.java"


# virtual methods
.method public abstract callBlockingMethod(Lcom/google/protobuf/Descriptors$MethodDescriptor;Lcom/google/protobuf/RpcController;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/ServiceException;
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/google/protobuf/Descriptors$MethodDescriptor;)Lcom/google/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/google/protobuf/Descriptors$MethodDescriptor;)Lcom/google/protobuf/Message;
.end method
