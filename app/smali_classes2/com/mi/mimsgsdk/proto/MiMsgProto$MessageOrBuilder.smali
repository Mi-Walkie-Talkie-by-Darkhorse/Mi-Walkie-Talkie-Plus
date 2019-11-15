.class public interface abstract Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
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
    name = "MessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBodyType()I
.end method

.method public abstract getFromGuid()Ljava/lang/String;
.end method

.method public abstract getFromGuidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsgId()J
.end method

.method public abstract getMsgSeq()J
.end method

.method public abstract getSentTime()I
.end method

.method public abstract getTargetId()Ljava/lang/String;
.end method

.method public abstract getTargetIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasBody()Z
.end method

.method public abstract hasBodyType()Z
.end method

.method public abstract hasFromGuid()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasMsgSeq()Z
.end method

.method public abstract hasSentTime()Z
.end method

.method public abstract hasTargetId()Z
.end method
