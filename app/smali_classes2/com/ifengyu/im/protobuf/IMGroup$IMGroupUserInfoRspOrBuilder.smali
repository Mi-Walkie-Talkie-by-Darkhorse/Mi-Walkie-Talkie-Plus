.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRspOrBuilder;
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
    name = "IMGroupUserInfoRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
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

.method public abstract getResultCode()I
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasResultCode()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method
