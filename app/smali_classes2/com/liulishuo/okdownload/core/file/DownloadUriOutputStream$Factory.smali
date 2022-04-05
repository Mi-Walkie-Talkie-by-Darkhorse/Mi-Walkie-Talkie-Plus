.class public Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/net/Uri;I)Lcom/liulishuo/okdownload/core/file/DownloadOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public create(Landroid/content/Context;Ljava/io/File;I)Lcom/liulishuo/okdownload/core/file/DownloadOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public supportSeek()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
