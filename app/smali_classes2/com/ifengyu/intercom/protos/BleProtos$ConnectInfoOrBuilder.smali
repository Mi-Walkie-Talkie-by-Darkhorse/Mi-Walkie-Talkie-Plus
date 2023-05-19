.class public interface abstract Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfoOrBuilder;
.super Ljava/lang/Object;
.source "BleProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceId()I
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getIv()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMac()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasDeviceType()Z
.end method

.method public abstract hasIv()Z
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasMac()Z
.end method

.method public abstract hasToken()Z
.end method
