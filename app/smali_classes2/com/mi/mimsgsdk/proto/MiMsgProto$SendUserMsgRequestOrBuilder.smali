.class public interface abstract Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequestOrBuilder;
.super Ljava/lang/Object;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendUserMsgRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBodyType()I
.end method

.method public abstract getFromGuid()Ljava/lang/String;
.end method

.method public abstract getFromGuidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFromMuid()J
.end method

.method public abstract getMsgId()J
.end method

.method public abstract getToGuid(I)Ljava/lang/String;
.end method

.method public abstract getToGuidBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToGuidCount()I
.end method

.method public abstract getToGuidList()Lcom/google/protobuf/ProtocolStringList;
.end method

.method public abstract hasAppid()Z
.end method

.method public abstract hasBody()Z
.end method

.method public abstract hasBodyType()Z
.end method

.method public abstract hasFromGuid()Z
.end method

.method public abstract hasFromMuid()Z
.end method

.method public abstract hasMsgId()Z
.end method
