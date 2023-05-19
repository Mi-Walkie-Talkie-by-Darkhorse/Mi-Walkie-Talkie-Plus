.class public Lcom/zhihu/matisse/d/c/f;
.super Ljava/lang/Object;
.source "SingleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/d/c/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaScannerConnection;

.field private b:Ljava/lang/String;

.field private c:Lcom/zhihu/matisse/d/c/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/zhihu/matisse/d/c/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/zhihu/matisse/d/c/f;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/zhihu/matisse/d/c/f;->c:Lcom/zhihu/matisse/d/c/f$a;

    .line 4
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/zhihu/matisse/d/c/f;->a:Landroid/media/MediaScannerConnection;

    .line 5
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/c/f;->a:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/zhihu/matisse/d/c/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/d/c/f;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 2
    iget-object p1, p0, Lcom/zhihu/matisse/d/c/f;->c:Lcom/zhihu/matisse/d/c/f$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/zhihu/matisse/d/c/f$a;->a()V

    :cond_0
    return-void
.end method
