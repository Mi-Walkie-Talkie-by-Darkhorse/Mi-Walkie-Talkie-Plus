.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/i;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/i;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/liulishuo/filedownloader/e/c;->a(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/e/e;->a:I

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->a(I)V

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/e/e;->b:J

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/g;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/g;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/e/e;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/liulishuo/filedownloader/services/e;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/e;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/i;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/d;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/i;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/i;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/i;->d()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/services/i;->a(Landroid/content/Intent;II)V

    const/4 v0, 0x1

    return v0
.end method
