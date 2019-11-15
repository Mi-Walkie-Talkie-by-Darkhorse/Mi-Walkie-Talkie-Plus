.class public interface abstract Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReqOrBuilder;
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
    name = "QueryMuidReqOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppid()I
.end method

.method public abstract getMediaMuid(I)I
.end method

.method public abstract getMediaMuidCount()I
.end method

.method public abstract getMediaMuidList()Ljava/util/List;
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

.method public abstract hasAppid()Z
.end method
