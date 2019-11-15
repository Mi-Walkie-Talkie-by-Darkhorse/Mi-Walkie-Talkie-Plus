.class public Lcom/tencent/open/a/a;
.super Lcom/tencent/open/a/i;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/open/a/b;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/File;

.field private d:[C

.field private volatile e:Lcom/tencent/open/a/g;

.field private volatile f:Lcom/tencent/open/a/g;

.field private volatile g:Lcom/tencent/open/a/g;

.field private volatile h:Lcom/tencent/open/a/g;

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/open/a/h;Lcom/tencent/open/a/b;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/a/i;-><init>(IZLcom/tencent/open/a/h;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/a/a;->i:Z

    invoke-virtual {p0, p4}, Lcom/tencent/open/a/a;->a(Lcom/tencent/open/a/b;)V

    new-instance v0, Lcom/tencent/open/a/g;

    invoke-direct {v0}, Lcom/tencent/open/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    new-instance v0, Lcom/tencent/open/a/g;

    invoke-direct {v0}, Lcom/tencent/open/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iget-object v0, p0, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    iget-object v0, p0, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {p4}, Lcom/tencent/open/a/b;->d()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/open/a/a;->d:[C

    invoke-direct {p0}, Lcom/tencent/open/a/a;->g()Ljava/io/Writer;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/open/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/open/a/b;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tencent/open/a/b;)V
    .locals 3

    sget v0, Lcom/tencent/open/a/c;->b:I

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/open/a/a;-><init>(IZLcom/tencent/open/a/h;Lcom/tencent/open/a/b;)V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/open/a/a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/open/a/a;->i:Z

    invoke-direct {p0}, Lcom/tencent/open/a/a;->i()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-direct {p0}, Lcom/tencent/open/a/a;->g()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/a/a;->d:[C

    invoke-virtual {v0, v1, v2}, Lcom/tencent/open/a/g;->a(Ljava/io/Writer;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->b()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/a/a;->i:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v1}, Lcom/tencent/open/a/g;->b()V

    throw v0
.end method

.method private g()Ljava/io/Writer;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/open/a/a;->c()Lcom/tencent/open/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/a/b;->a()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/open/a/a;->h()V

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    iget-object v0, p0, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    iget-object v1, p0, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    iget-object v0, p0, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    iget-object v0, p0, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x400

    iget-object v0, p0, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    invoke-virtual {p0}, Lcom/tencent/open/a/a;->e()Lcom/tencent/open/a/h;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/open/a/h;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/open/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/open/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/a/a;->a:Lcom/tencent/open/a/b;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    invoke-virtual {v0, p1}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/open/a/a;->c()Lcom/tencent/open/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/a/b;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/open/a/a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/open/a/a;->h()V

    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public c()Lcom/tencent/open/a/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/a/a;->a:Lcom/tencent/open/a/b;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/open/a/a;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
