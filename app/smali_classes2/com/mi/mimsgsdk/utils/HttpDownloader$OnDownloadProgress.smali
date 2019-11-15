.class public interface abstract Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/utils/HttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadProgress"
.end annotation


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onCompleted(Ljava/lang/String;)V
.end method

.method public abstract onDownloaded(JJ)V
.end method

.method public abstract onFailed()V
.end method
