.class Lcom/liulishuo/filedownloader/k;
.super Ljava/lang/Object;
.source "FileDownloadMessenger.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/t;


# instance fields
.field private a:Lcom/liulishuo/filedownloader/a$b;

.field private b:Lcom/liulishuo/filedownloader/a$d;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/k;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    const-string v1, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    :cond_1
    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V
    .locals 1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/k;->a(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/liulishuo/filedownloader/j;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/t;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify pending %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "notify begin %s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v2, :cond_1

    const-string v2, "can\'t begin the task, the holder fo the messenger is nil, %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->a()V

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 8

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v7

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->z()Lcom/liulishuo/filedownloader/x$a;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/k;->a(I)V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/i;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    :try_start_0
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->blockComplete(Lcom/liulishuo/filedownloader/a;)V

    check-cast v6, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->d_()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v3, v0}, Lcom/liulishuo/filedownloader/x$a;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/k;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    instance-of v3, v7, Lcom/liulishuo/filedownloader/g;

    if-eqz v3, :cond_4

    move-object v0, v7

    check-cast v0, Lcom/liulishuo/filedownloader/g;

    :cond_4
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->warn(Lcom/liulishuo/filedownloader/a;)V

    goto :goto_0

    :pswitch_2
    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->a(Lcom/liulishuo/filedownloader/a;JJ)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->pending(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->started(Lcom/liulishuo/filedownloader/a;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/liulishuo/filedownloader/g;->a(Lcom/liulishuo/filedownloader/a;Ljava/lang/String;ZJJ)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->m()I

    move-result v4

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v5

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/i;->connected(Lcom/liulishuo/filedownloader/a;Ljava/lang/String;ZII)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->b(Lcom/liulishuo/filedownloader/a;JJ)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->o()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->progress(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v3

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;IJ)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v3

    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/liulishuo/filedownloader/i;->retry(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;II)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v7, v1}, Lcom/liulishuo/filedownloader/i;->completed(Lcom/liulishuo/filedownloader/a;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/liulishuo/filedownloader/i;->error(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz v0, :cond_9

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/g;->c(Lcom/liulishuo/filedownloader/a;JJ)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/liulishuo/filedownloader/i;->paused(Lcom/liulishuo/filedownloader/a;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify started %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->w()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "notify progress %s %d %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->f()I

    move-result v0

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "notify progress but client not request notify %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify block completed %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 5

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    const-string v1, "notify retry %s %d %d %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->u()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->v()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->s()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->b()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify warn %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify error %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->s()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify paused %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "notify completed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$d;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v1, "%d:%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v0

    goto :goto_0
.end method
