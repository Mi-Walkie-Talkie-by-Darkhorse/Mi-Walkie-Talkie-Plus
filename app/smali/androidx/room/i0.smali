.class final Landroidx/room/i0;
.super Ljava/lang/Object;
.source "QueryInterceptorDatabase.java"

# interfaces
.implements La/g/a/b;


# instance fields
.field private final a:La/g/a/b;

.field private final b:Landroidx/room/RoomDatabase$e;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(La/g/a/b;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # La/g/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/i0;->a:La/g/a/b;

    .line 3
    iput-object p2, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 4
    iput-object p3, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic D(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v0, p1, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic F(La/g/a/e;Landroidx/room/l0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    invoke-interface {p1}, La/g/a/e;->f()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroidx/room/l0;->f()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic H(La/g/a/e;Landroidx/room/l0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    invoke-interface {p1}, La/g/a/e;->f()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroidx/room/l0;->f()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic J()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "TRANSACTION SUCCESSFUL"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic f()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic h()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BEGIN DEFERRED TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "END TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1, v1}, Landroidx/room/RoomDatabase$e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->A()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->B()Z

    move-result v0

    return v0
.end method

.method public synthetic E(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/i0;->D(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic G(La/g/a/e;Landroidx/room/l0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/i0;->F(La/g/a/e;Landroidx/room/l0;)V

    return-void
.end method

.method public synthetic I(La/g/a/e;Landroidx/room/l0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/i0;->H(La/g/a/e;Landroidx/room/l0;)V

    return-void
.end method

.method public synthetic K()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/i0;->J()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/i0;->f()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/i0;->h()V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic k()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/i0;->j()V

    return-void
.end method

.method public synthetic m(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/i0;->l(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/n;

    invoke-direct {v1, p0}, Landroidx/room/n;-><init>(Landroidx/room/i0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->n()V

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/j;

    invoke-direct {v1, p0, p1}, Landroidx/room/j;-><init>(Landroidx/room/i0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0, p1}, La/g/a/b;->p(Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)La/g/a/f;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/m0;

    iget-object v1, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v1, p1}, La/g/a/b;->r(Ljava/lang/String;)La/g/a/f;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/i0;->b:Landroidx/room/RoomDatabase$e;

    iget-object v3, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/room/m0;-><init>(La/g/a/f;Landroidx/room/RoomDatabase$e;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public s(La/g/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1    # La/g/a/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Landroidx/room/l0;

    invoke-direct {p2}, Landroidx/room/l0;-><init>()V

    .line 2
    invoke-interface {p1, p2}, La/g/a/e;->g(La/g/a/d;)V

    .line 3
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/m;

    invoke-direct {v1, p0, p1, p2}, Landroidx/room/m;-><init>(Landroidx/room/i0;La/g/a/e;Landroidx/room/l0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {p2, p1}, La/g/a/b;->z(La/g/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/i;

    invoke-direct {v1, p0}, Landroidx/room/i;-><init>(Landroidx/room/i0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->t()V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/h;

    invoke-direct {v1, p0}, Landroidx/room/h;-><init>(Landroidx/room/i0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->u()V

    return-void
.end method

.method public x(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/l;

    invoke-direct {v1, p0, p1}, Landroidx/room/l;-><init>(Landroidx/room/i0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0, p1}, La/g/a/b;->x(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/g;

    invoke-direct {v1, p0}, Landroidx/room/g;-><init>(Landroidx/room/i0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0}, La/g/a/b;->y()V

    return-void
.end method

.method public z(La/g/a/e;)Landroid/database/Cursor;
    .locals 3
    .param p1    # La/g/a/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/l0;

    invoke-direct {v0}, Landroidx/room/l0;-><init>()V

    .line 2
    invoke-interface {p1, v0}, La/g/a/e;->g(La/g/a/d;)V

    .line 3
    iget-object v1, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/k;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/k;-><init>(Landroidx/room/i0;La/g/a/e;Landroidx/room/l0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Landroidx/room/i0;->a:La/g/a/b;

    invoke-interface {v0, p1}, La/g/a/b;->z(La/g/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
