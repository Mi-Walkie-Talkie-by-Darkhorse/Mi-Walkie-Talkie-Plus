.class public interface abstract Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberRspOrBuilder;
.super Ljava/lang/Object;
.source "SDKSignal.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryConferenceMemberRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getMemebers(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;
.end method

.method public abstract getMemebersCount()I
.end method

.method public abstract getMemebersList()Ljava/util/List;
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

.method public abstract getMemebersOrBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;
.end method

.method public abstract getMemebersOrBuilderList()Ljava/util/List;
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

.method public abstract hasAppid()Z
.end method
