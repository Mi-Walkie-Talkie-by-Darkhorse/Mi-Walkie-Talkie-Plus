.class public final Lcom/efs/sdk/base/a/i/d;
.super Lcom/efs/sdk/base/a/i/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/a/i/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/a;->a:Lcom/efs/sdk/base/a/d/a;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/a;->a:Lcom/efs/sdk/base/a/d/a;

    .line 6
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 11
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v6

    .line 12
    iget-object v6, v6, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    .line 13
    iget-object v6, v6, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    .line 14
    new-instance v7, Lcom/efs/sdk/base/a/i/b;

    const-string v8, "efs_core"

    const-string v9, "lf_st"

    invoke-direct {v7, v8, v9, v6}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "create_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "cache_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "req_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "err_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "expire_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v6, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 21
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 22
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 23
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 24
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 25
    invoke-virtual {v0, v7}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
