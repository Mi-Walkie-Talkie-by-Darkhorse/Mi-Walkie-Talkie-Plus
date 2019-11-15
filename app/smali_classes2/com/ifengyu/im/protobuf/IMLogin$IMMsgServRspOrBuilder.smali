.class public interface abstract Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServRspOrBuilder;
.super Ljava/lang/Object;
.source "IMLogin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMMsgServRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getBackipIp()Ljava/lang/String;
.end method

.method public abstract getBackipIpBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPriorIp()Ljava/lang/String;
.end method

.method public abstract getPriorIpBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResultCode()Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;
.end method

.method public abstract hasBackipIp()Z
.end method

.method public abstract hasPort()Z
.end method

.method public abstract hasPriorIp()Z
.end method

.method public abstract hasResultCode()Z
.end method
