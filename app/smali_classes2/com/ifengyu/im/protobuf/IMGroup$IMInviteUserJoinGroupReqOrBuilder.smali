.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqOrBuilder;
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
    name = "IMInviteUserJoinGroupReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getGroupId()I
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getGroupNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInviteUserId()I
.end method

.method public abstract getInviteeUidList(I)I
.end method

.method public abstract getInviteeUidListCount()I
.end method

.method public abstract getInviteeUidListList()Ljava/util/List;
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

.method public abstract getReqUserHandle()I
.end method

.method public abstract getReqUserId()I
.end method

.method public abstract getReqUserName()Ljava/lang/String;
.end method

.method public abstract getReqUserNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasGroupName()Z
.end method

.method public abstract hasInviteUserId()Z
.end method

.method public abstract hasReqUserHandle()Z
.end method

.method public abstract hasReqUserId()Z
.end method

.method public abstract hasReqUserName()Z
.end method
