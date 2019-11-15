.class Lcom/liulishuo/filedownloader/e/f$a;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/e/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/e/f$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/liulishuo/filedownloader/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/a;->b(Lcom/liulishuo/filedownloader/a$a;)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f$a;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->b(Lcom/liulishuo/filedownloader/e/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
