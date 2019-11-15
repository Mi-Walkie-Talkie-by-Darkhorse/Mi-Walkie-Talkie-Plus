.class public interface abstract Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataOrBuilder;
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
    name = "IMMsgDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCreateTime()I
.end method

.method public abstract getFromUserId()I
.end method

.method public abstract getMsgData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsgId()I
.end method

.method public abstract getMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
.end method

.method public abstract getToSessionId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasCreateTime()Z
.end method

.method public abstract hasFromUserId()Z
.end method

.method public abstract hasMsgData()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasMsgType()Z
.end method

.method public abstract hasToSessionId()Z
.end method
