.class public interface abstract Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfflineMapDownloadListener"
.end annotation


# virtual methods
.method public abstract onCheckUpdate(ZLjava/lang/String;)V
.end method

.method public abstract onDownload(IILjava/lang/String;)V
.end method

.method public abstract onRemove(ZLjava/lang/String;Ljava/lang/String;)V
.end method
