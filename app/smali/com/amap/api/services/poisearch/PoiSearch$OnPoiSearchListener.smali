.class public interface abstract Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPoiSearchListener"
.end annotation


# virtual methods
.method public abstract onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V
.end method

.method public abstract onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V
.end method
