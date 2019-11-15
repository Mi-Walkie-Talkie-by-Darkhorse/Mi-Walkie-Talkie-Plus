.class public Lcom/liulishuo/filedownloader/b/c;
.super Ljava/lang/Object;
.source "RemitDatabase.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a;


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/b/b;

.field private final b:Lcom/liulishuo/filedownloader/b/d;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/liulishuo/filedownloader/b/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b/b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    new-instance v0, Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b/d;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/e/e;->b:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b/c;->d:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    invoke-static {v1}, Lcom/liulishuo/filedownloader/e/g;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/liulishuo/filedownloader/b/c$1;

    invoke-direct {v2, p0}, Lcom/liulishuo/filedownloader/b/c$1;-><init>(Lcom/liulishuo/filedownloader/b/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/b/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->g(I)V

    return-void
.end method

.method static synthetic b(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    return-object v0
.end method

.method private g(I)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "sync cache to db %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/b/d;->d(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(I)Z
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->g(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/b/b;->a()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/b/d;->a()V

    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/b/c;->d:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/b/b;->a(II)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/b/d;->a(II)V

    goto :goto_0
.end method

.method public a(IIJ)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/b;->a(IIJ)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/d;->a(IIJ)V

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/b;->a(IJ)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->a(IJ)V

    goto :goto_0
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/b/b;->a(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/b/d;->a(IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;JJI)V
    .locals 9

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/liulishuo/filedownloader/b/b;->a(ILjava/lang/String;JJI)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/String;JJI)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/b/b;->a(ILjava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Throwable;J)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/b;->a(ILjava/lang/Throwable;J)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/Throwable;J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    goto :goto_0
.end method

.method public a(Lcom/liulishuo/filedownloader/model/a;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->a(Lcom/liulishuo/filedownloader/model/a;)V

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0
.end method

.method public b()Lcom/liulishuo/filedownloader/b/a$a;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/b/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/liulishuo/filedownloader/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public b(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/b;->b(IJ)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->b(IJ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->b(IJ)V

    goto :goto_0
.end method

.method public c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/b;->c(IJ)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->c(IJ)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->d(I)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->d(I)V

    goto :goto_0
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->e(I)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->e(I)Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->f(I)V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->f(I)V

    goto :goto_0
.end method
