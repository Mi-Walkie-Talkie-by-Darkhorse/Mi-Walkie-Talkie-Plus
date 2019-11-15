.class public interface abstract Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRspOrBuilder;
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
    name = "IMGroupInfoListRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupInfoList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;
.end method

.method public abstract getGroupInfoListCount()I
.end method

.method public abstract getGroupInfoListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method
