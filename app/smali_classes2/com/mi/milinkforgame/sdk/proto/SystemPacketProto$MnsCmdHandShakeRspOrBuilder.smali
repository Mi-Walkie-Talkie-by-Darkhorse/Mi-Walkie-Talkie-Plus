.class public interface abstract Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRspOrBuilder;
.super Ljava/lang/Object;
.source "SystemPacketProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MnsCmdHandShakeRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientinfo()Ljava/lang/String;
.end method

.method public abstract getClientinfoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCrossOpr()I
.end method

.method public abstract getRedirect(I)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;
.end method

.method public abstract getRedirectCount()I
.end method

.method public abstract getRedirectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRedirectOrBuilder(I)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfoOrBuilder;
.end method

.method public abstract getRedirectOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getUprinciple()I
.end method

.method public abstract hasClientinfo()Z
.end method

.method public abstract hasCrossOpr()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasUprinciple()Z
.end method
