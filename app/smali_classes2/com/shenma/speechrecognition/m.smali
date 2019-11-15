.class Lcom/shenma/speechrecognition/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shenma/speechrecognition/y;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    new-instance v1, Lcom/shenma/speechrecognition/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/shenma/speechrecognition/ab;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    new-instance v1, Lcom/shenma/speechrecognition/o;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/shenma/speechrecognition/o;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    new-instance v1, Lcom/shenma/speechrecognition/q;

    invoke-direct {v1, p1, p2, p4}, Lcom/shenma/speechrecognition/q;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/ae;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/y;

    invoke-interface {v0}, Lcom/shenma/speechrecognition/y;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a([BII)V
    .locals 4

    monitor-enter p0

    :try_start_0
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

    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/y;

    invoke-interface {v0, p1, p2, p3}, Lcom/shenma/speechrecognition/y;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/shenma/speechrecognition/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/y;

    invoke-interface {v0}, Lcom/shenma/speechrecognition/y;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
