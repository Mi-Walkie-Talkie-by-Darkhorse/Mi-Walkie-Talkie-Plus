.class Lcom/shenma/speechrecognition/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shenma/speechrecognition/b;
.implements Lcom/shenma/speechrecognition/y;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Lcom/shenma/speechrecognition/l;

.field private final c:Lcom/shenma/speechrecognition/ae;

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;

.field private e:Lcom/shenma/speechrecognition/r;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/q;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/shenma/speechrecognition/q;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/shenma/speechrecognition/q;->b:Lcom/shenma/speechrecognition/l;

    iput-object p3, p0, Lcom/shenma/speechrecognition/q;->c:Lcom/shenma/speechrecognition/ae;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/q;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/q;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    new-instance v0, Lcom/shenma/speechrecognition/r;

    iget-object v1, p0, Lcom/shenma/speechrecognition/q;->a:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shenma/speechrecognition/q;->b:Lcom/shenma/speechrecognition/l;

    iget-object v3, p0, Lcom/shenma/speechrecognition/q;->c:Lcom/shenma/speechrecognition/ae;

    iget-object v4, p0, Lcom/shenma/speechrecognition/q;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shenma/speechrecognition/r;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/ae;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/r;->start()V

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "The %d-th length %d."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/q;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/shenma/speechrecognition/f;

    invoke-direct {v1, p3, p1, p2}, Lcom/shenma/speechrecognition/f;-><init>(I[BI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ne p3, v4, :cond_1

    invoke-static {}, Lcom/shenma/speechrecognition/a;->a()Lcom/shenma/speechrecognition/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shenma/speechrecognition/a;->a(Lcom/shenma/speechrecognition/b;)V

    :cond_1
    if-gtz p3, :cond_2

    invoke-static {}, Lcom/shenma/speechrecognition/a;->a()Lcom/shenma/speechrecognition/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/a;->b()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/r;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/speechrecognition/q;->e:Lcom/shenma/speechrecognition/r;

    :cond_0
    return-void
.end method
