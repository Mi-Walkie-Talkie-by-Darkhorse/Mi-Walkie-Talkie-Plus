.class public interface abstract Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersStatRspOrBuilder;
.super Ljava/lang/Object;
.source "IMBuddy.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMUsersStatRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserStatList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;
.end method

.method public abstract getUserStatListCount()I
.end method

.method public abstract getUserStatListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasUserId()Z
.end method
