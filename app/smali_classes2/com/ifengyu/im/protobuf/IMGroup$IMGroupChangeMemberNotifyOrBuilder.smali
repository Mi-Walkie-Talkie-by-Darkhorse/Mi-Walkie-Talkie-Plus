.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotifyOrBuilder;
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
    name = "IMGroupChangeMemberNotifyOrBuilder"
.end annotation


# virtual methods
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

.method public abstract getUserId()I
.end method

.method public abstract hasChangeType()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasUserId()Z
.end method
