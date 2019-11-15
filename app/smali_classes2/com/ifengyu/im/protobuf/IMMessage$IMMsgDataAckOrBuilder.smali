.class public interface abstract Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataAckOrBuilder;
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
    name = "IMMsgDataAckOrBuilder"
.end annotation


# virtual methods
.method public abstract getMsgId()I
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSessionType()Z
.end method

.method public abstract hasUserId()Z
.end method
