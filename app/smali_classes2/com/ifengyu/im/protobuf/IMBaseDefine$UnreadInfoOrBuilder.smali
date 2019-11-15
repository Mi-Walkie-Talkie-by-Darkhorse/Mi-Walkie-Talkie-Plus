.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfoOrBuilder;
.super Ljava/lang/Object;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnreadInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getLatestMsgData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLatestMsgFromUserId()I
.end method

.method public abstract getLatestMsgId()I
.end method

.method public abstract getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
.end method

.method public abstract getUnreadCnt()I
.end method

.method public abstract hasLatestMsgData()Z
.end method

.method public abstract hasLatestMsgFromUserId()Z
.end method

.method public abstract hasLatestMsgId()Z
.end method

.method public abstract hasLatestMsgType()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSessionType()Z
.end method

.method public abstract hasUnreadCnt()Z
.end method
