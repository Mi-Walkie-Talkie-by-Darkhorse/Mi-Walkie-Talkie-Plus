.class public interface abstract Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/nearby/NearbySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NearbyListener"
.end annotation


# virtual methods
.method public abstract onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V
.end method

.method public abstract onNearbyInfoUploaded(I)V
.end method

.method public abstract onUserInfoCleared(I)V
.end method
