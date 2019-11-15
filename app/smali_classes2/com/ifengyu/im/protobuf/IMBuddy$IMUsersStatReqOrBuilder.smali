.class public interface abstract Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersStatReqOrBuilder;
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
    name = "IMUsersStatReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserIdList(I)I
.end method

.method public abstract getUserIdListCount()I
.end method

.method public abstract getUserIdListList()Ljava/util/List;
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

.method public abstract hasAttachData()Z
.end method

.method public abstract hasUserId()Z
.end method
