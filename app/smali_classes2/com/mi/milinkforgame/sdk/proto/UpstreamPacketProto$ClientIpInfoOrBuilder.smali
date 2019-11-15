.class public interface abstract Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;
.super Ljava/lang/Object;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientIpInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientIpV4()I
.end method

.method public abstract getClientIpV6()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getClientPort()I
.end method

.method public abstract getIpType()I
.end method

.method public abstract hasClientIpV4()Z
.end method

.method public abstract hasClientIpV6()Z
.end method

.method public abstract hasClientPort()Z
.end method

.method public abstract hasIpType()Z
.end method
