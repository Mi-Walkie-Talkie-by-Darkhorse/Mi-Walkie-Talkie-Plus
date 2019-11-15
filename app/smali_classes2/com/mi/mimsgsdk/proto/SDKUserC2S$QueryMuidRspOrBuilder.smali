.class public interface abstract Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRspOrBuilder;
.super Ljava/lang/Object;
.source "SDKUserC2S.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKUserC2S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryMuidRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getErrorMsgBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;
.end method

.method public abstract getMediaIdsCount()I
.end method

.method public abstract getMediaIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaIdsOrBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;
.end method

.method public abstract getMediaIdsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRet()I
.end method

.method public abstract hasAppid()Z
.end method

.method public abstract hasErrorMsg()Z
.end method

.method public abstract hasRet()Z
.end method
