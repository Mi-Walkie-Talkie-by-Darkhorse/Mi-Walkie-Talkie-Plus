.class public Lcom/liulishuo/filedownloader/l;
.super Ljava/lang/Object;
.source "FileDownloadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/liulishuo/filedownloader/l$a;


# direct methods
.method public static a()Lcom/liulishuo/filedownloader/l$a;
    .locals 1

    sget-object v0, Lcom/liulishuo/filedownloader/l;->a:Lcom/liulishuo/filedownloader/l$a;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Lcom/liulishuo/filedownloader/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
