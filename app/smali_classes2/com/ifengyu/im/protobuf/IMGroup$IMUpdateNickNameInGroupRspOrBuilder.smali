.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRspOrBuilder;
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
    name = "IMUpdateNickNameInGroupRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupId()I
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

.method public abstract getNicknameIngroup()Ljava/lang/String;
.end method

.method public abstract getNicknameIngroupBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResultCode()I
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasNicknameIngroup()Z
.end method

.method public abstract hasResultCode()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method
