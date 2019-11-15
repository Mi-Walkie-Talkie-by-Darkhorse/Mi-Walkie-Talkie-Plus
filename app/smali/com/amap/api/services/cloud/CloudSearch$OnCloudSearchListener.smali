.class public interface abstract Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;
.super Ljava/lang/Object;
.source "CloudSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/cloud/CloudSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCloudSearchListener"
.end annotation


# virtual methods
.method public abstract onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V
.end method

.method public abstract onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V
.end method
