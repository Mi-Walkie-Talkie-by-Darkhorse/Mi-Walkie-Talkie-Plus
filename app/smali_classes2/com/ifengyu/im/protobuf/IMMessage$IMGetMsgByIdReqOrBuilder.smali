.class public interface abstract Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgByIdReqOrBuilder;
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
    name = "IMGetMsgByIdReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsgIdList(I)I
.end method

.method public abstract getMsgIdListCount()I
.end method

.method public abstract getMsgIdListList()Ljava/util/List;
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

.method public abstract getSessionId()I
.end method

.method public abstract getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSessionType()Z
.end method

.method public abstract hasUserId()Z
.end method
