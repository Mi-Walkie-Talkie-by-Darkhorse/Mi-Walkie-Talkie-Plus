.class Lcom/liulishuo/filedownloader/q$c;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/x$b;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/x$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/x$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/q$c;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/x$b;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/q$c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/x$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/x$b;->l()V

    goto :goto_0
.end method
