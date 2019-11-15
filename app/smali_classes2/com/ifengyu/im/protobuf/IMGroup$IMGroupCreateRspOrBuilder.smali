.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRspOrBuilder;
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
    name = "IMGroupCreateRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupAvatar()Ljava/lang/String;
.end method

.method public abstract getGroupAvatarBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getGroupNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;
.end method

.method public abstract getResultCode()I
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserIdList(I)I
.end method

.method public abstract getUserIdListCount()I
.end method

.method public abstract getUserIdListList()Ljava/util/List;
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

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasGroupAvatar()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasGroupName()Z
.end method

.method public abstract hasGroupType()Z
.end method

.method public abstract hasResultCode()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method

.method public abstract hasUserName()Z
.end method
