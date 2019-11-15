.class public interface abstract Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponseOrBuilder;
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
    name = "SyncGroupMsgResponseOrBuilder"
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

.method public abstract getMaxMsgSeq()J
.end method

.method public abstract getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
.end method

.method public abstract getMsgsCount()I
.end method

.method public abstract getMsgsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMsgsOrBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
.end method

.method public abstract getMsgsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetCode()I
.end method

.method public abstract getTargetGgid()Ljava/lang/String;
.end method

.method public abstract getTargetGgidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTargetMgid()J
.end method

.method public abstract hasAppid()Z
.end method

.method public abstract hasCurrGuid()Z
.end method

.method public abstract hasCurrMuid()Z
.end method

.method public abstract hasMaxMsgSeq()Z
.end method

.method public abstract hasRetCode()Z
.end method

.method public abstract hasTargetGgid()Z
.end method

.method public abstract hasTargetMgid()Z
.end method
