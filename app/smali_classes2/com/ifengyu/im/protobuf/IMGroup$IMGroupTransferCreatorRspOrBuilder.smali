.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRspOrBuilder;
.super Ljava/lang/Object;
.source "IMGroup.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMGroupTransferCreatorRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getGroupNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIsfromuser()I
.end method

.method public abstract getMemberIdList(I)I
.end method

.method public abstract getMemberIdListCount()I
.end method

.method public abstract getMemberIdListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewCreator()I
.end method

.method public abstract getOldCreator()I
.end method

.method public abstract getReason()I
.end method

.method public abstract getResultCode()I
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasGroupName()Z
.end method

.method public abstract hasIsfromuser()Z
.end method

.method public abstract hasNewCreator()Z
.end method

.method public abstract hasOldCreator()Z
.end method

.method public abstract hasReason()Z
.end method

.method public abstract hasResultCode()Z
.end method

.method public abstract hasUserHandle()Z
.end method
