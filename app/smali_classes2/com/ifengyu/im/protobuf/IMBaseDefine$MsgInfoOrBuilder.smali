.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfoOrBuilder;
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
    name = "MsgInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getCreateTime()I
.end method

.method public abstract getFromSessionId()I
.end method

.method public abstract getMsgData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsgId()I
.end method

.method public abstract getMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
.end method

.method public abstract hasCreateTime()Z
.end method

.method public abstract hasFromSessionId()Z
.end method

.method public abstract hasMsgData()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasMsgType()Z
.end method
