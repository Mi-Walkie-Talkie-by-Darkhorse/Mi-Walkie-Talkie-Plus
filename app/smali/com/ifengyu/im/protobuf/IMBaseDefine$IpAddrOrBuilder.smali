.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddrOrBuilder;
.super Ljava/lang/Object;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IpAddrOrBuilder"
.end annotation


# virtual methods
.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getIpBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPort()I
.end method

.method public abstract hasIp()Z
.end method

.method public abstract hasPort()Z
.end method
