.class public interface abstract Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequestOrBuilder;
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
    name = "SyncUserMsgRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getCurrGuid()Ljava/lang/String;
.end method

.method public abstract getCurrGuidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLimit()I
.end method

.method public abstract getMaxRecvSeq()J
.end method

.method public abstract hasAppid()Z
.end method

.method public abstract hasCurrGuid()Z
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasMaxRecvSeq()Z
.end method
