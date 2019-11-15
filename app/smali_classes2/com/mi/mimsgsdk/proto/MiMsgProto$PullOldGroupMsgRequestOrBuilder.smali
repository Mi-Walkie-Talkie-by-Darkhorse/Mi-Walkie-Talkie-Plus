.class public interface abstract Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequestOrBuilder;
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
    name = "PullOldGroupMsgRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getCurrGuid()Ljava/lang/String;
.end method

.method public abstract getCurrGuidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCurrMuid()J
.end method

.method public abstract getLimit()I
.end method

.method public abstract getStartMsgSeq()J
.end method

.method public abstract getTargetGgid()Ljava/lang/String;
.end method

.method public abstract getTargetGgidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAppid()Z
.end method

.method public abstract hasCurrGuid()Z
.end method

.method public abstract hasCurrMuid()Z
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasStartMsgSeq()Z
.end method

.method public abstract hasTargetGgid()Z
.end method
