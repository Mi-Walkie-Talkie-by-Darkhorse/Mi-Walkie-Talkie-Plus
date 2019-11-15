.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRspOrBuilder;
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
    name = "IMGroupChangeMemberRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getChangeType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;
.end method

.method public abstract getChgUserIdList(I)I
.end method

.method public abstract getChgUserIdListCount()I
.end method

.method public abstract getChgUserIdListList()Ljava/util/List;
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

.method public abstract getCurUserIdList(I)I
.end method

.method public abstract getCurUserIdListCount()I
.end method

.method public abstract getCurUserIdListList()Ljava/util/List;
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

.method public abstract getGroupId()I
.end method

.method public abstract getGroupUserinfoList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
.end method

.method public abstract getGroupUserinfoListCount()I
.end method

.method public abstract getGroupUserinfoListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;",
            ">;"
        }
    .end annotation
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

.method public abstract getResultCode()I
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasChangeType()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasIsfromuser()Z
.end method

.method public abstract hasResultCode()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method
