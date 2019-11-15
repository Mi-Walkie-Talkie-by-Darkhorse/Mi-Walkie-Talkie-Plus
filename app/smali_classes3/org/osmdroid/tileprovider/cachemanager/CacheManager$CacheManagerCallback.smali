.class public interface abstract Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheManagerCallback"
.end annotation


# virtual methods
.method public abstract downloadStarted()V
.end method

.method public abstract onTaskComplete()V
.end method

.method public abstract onTaskFailed(I)V
.end method

.method public abstract setPossibleTilesInArea(I)V
.end method

.method public abstract updateProgress(IIII)V
.end method
