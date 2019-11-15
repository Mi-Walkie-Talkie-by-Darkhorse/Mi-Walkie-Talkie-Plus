.class public interface abstract Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;
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
    name = "TokenInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getExtKey(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;
.end method

.method public abstract getExtKeyCount()I
.end method

.method public abstract getExtKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtKeyOrBuilder(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;
.end method

.method public abstract getExtKeyOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getType()I
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasType()Z
.end method
