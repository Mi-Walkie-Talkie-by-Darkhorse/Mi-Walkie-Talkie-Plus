.class public Lcom/liulishuo/filedownloader/services/f;
.super Ljava/lang/Object;
.source "FileDownloadBroadcastHandler.java"


# direct methods
.method public static a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "filedownloader.intent.action.completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "model"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
