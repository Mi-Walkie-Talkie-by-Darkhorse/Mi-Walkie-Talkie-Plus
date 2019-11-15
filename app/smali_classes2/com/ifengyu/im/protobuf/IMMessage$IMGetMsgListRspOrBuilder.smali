.class public interface abstract Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRspOrBuilder;
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
    name = "IMGetMsgListRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsgIdBegin()I
.end method

.method public abstract getMsgList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;
.end method

.method public abstract getMsgListCount()I
.end method

.method public abstract getMsgListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasMsgIdBegin()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSessionType()Z
.end method

.method public abstract hasUserId()Z
.end method
