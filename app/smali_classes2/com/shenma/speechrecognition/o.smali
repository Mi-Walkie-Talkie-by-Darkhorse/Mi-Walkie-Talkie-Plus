.class Lcom/shenma/speechrecognition/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shenma/speechrecognition/y;


# instance fields
.field private final a:Lcom/shenma/speechrecognition/j;

.field private final b:[Lcom/shenma/speechrecognition/p;

.field private final c:Ljava/util/concurrent/BlockingQueue;

.field private final d:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/o;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/o;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/shenma/speechrecognition/j;

    iget-object v1, p0, Lcom/shenma/speechrecognition/o;->c:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/shenma/speechrecognition/o;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/shenma/speechrecognition/j;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/o;->a:Lcom/shenma/speechrecognition/j;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->e()I

    move-result v0

    new-array v0, v0, [Lcom/shenma/speechrecognition/p;

    iput-object v0, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->e()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v7, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    new-instance v0, Lcom/shenma/speechrecognition/p;

    iget-object v4, p0, Lcom/shenma/speechrecognition/o;->d:Ljava/util/concurrent/BlockingQueue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shenma/speechrecognition/p;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Ljava/util/concurrent/BlockingQueue;Lcom/shenma/speechrecognition/ae;)V

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->a:Lcom/shenma/speechrecognition/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->a:Lcom/shenma/speechrecognition/j;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/j;->start()V

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/p;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a([BII)V
    .locals 4

    const-string v0, "The %d-th length %d."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/shenma/speechrecognition/f;

    invoke-direct {v1, p3, p1, p2}, Lcom/shenma/speechrecognition/f;-><init>(I[BI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->a:Lcom/shenma/speechrecognition/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->a:Lcom/shenma/speechrecognition/j;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/j;->a()V

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shenma/speechrecognition/o;->b:[Lcom/shenma/speechrecognition/p;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/p;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
