.class public interface abstract Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    }
.end annotation


# virtual methods
.method public abstract getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
