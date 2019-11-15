.class public interface abstract Lcom/mi/mimsgsdk/proto/Statis$ActionLogReqOrBuilder;
.super Ljava/lang/Object;
.source "Statis.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/Statis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionLogReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getItems(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;
.end method

.method public abstract getItemsCount()I
.end method

.method public abstract getItemsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsOrBuilder(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItemOrBuilder;
.end method

.method public abstract getItemsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method
