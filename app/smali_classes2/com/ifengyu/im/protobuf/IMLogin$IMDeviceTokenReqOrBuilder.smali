.class public interface abstract Lcom/ifengyu/im/protobuf/IMLogin$IMDeviceTokenReqOrBuilder;
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
    name = "IMDeviceTokenReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
.end method

.method public abstract getDeviceToken()Ljava/lang/String;
.end method

.method public abstract getDeviceTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasClientType()Z
.end method

.method public abstract hasDeviceToken()Z
.end method

.method public abstract hasUserId()Z
.end method
