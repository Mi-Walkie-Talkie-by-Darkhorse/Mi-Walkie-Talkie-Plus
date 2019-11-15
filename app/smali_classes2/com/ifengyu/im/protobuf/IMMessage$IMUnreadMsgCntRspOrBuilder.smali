.class public interface abstract Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRspOrBuilder;
.super Ljava/lang/Object;
.source "IMMessage.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMUnreadMsgCntRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTotalCnt()I
.end method

.method public abstract getUnreadinfoList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
.end method

.method public abstract getUnreadinfoListCount()I
.end method

.method public abstract getUnreadinfoListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasTotalCnt()Z
.end method

.method public abstract hasUserId()Z
.end method
