.class public interface abstract Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReqOrBuilder;
.super Ljava/lang/Object;
.source "IMFile.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMFilePullDataReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getDataSize()I
.end method

.method public abstract getOffset()I
.end method

.method public abstract getTaskId()Ljava/lang/String;
.end method

.method public abstract getTaskIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransMode()Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasDataSize()Z
.end method

.method public abstract hasOffset()Z
.end method

.method public abstract hasTaskId()Z
.end method

.method public abstract hasTransMode()Z
.end method

.method public abstract hasUserId()Z
.end method
