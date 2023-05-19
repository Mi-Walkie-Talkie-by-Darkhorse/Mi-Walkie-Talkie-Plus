.class final Landroidx/room/x$a;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements La/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/room/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/w;)V
    .locals 0
    .param p1    # Landroidx/room/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    return-void
.end method

.method static synthetic f(Ljava/lang/String;La/g/a/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, La/g/a/b;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g(La/g/a/b;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, La/g/a/b;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic h(La/g/a/b;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->d()La/g/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    sget-object v1, Landroidx/room/f;->a:Landroidx/room/f;

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeNewApiCall"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    sget-object v1, Landroidx/room/c;->a:Landroidx/room/c;

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->a()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    sget-object v1, Landroidx/room/a;->a:Landroidx/room/a;

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    sget-object v1, Landroidx/room/d;->a:Landroidx/room/d;

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->d()La/g/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, La/g/a/b;->isOpen()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->e()La/g/a/b;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, La/g/a/b;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v1}, Landroidx/room/w;->b()V

    .line 4
    throw v0
.end method

.method public o()Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    sget-object v1, Landroidx/room/t;->a:Landroidx/room/t;

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    new-instance v1, Landroidx/room/b;

    invoke-direct {v1, p1}, Landroidx/room/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/room/w;->c(La/a/a/c/a;)Ljava/lang/Object;

    return-void
.end method

.method public r(Ljava/lang/String;)La/g/a/f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/x$b;

    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-direct {v0, p1, v1}, Landroidx/room/x$b;-><init>(Ljava/lang/String;Landroidx/room/w;)V

    return-object v0
.end method

.method public s(La/g/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->e()La/g/a/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, La/g/a/b;->s(La/g/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance p2, Landroidx/room/x$c;

    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-direct {p2, p1, v0}, Landroidx/room/x$c;-><init>(Landroid/database/Cursor;Landroidx/room/w;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 4
    iget-object p2, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {p2}, Landroidx/room/w;->b()V

    .line 5
    throw p1
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->d()La/g/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, La/g/a/b;->t()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->e()La/g/a/b;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, La/g/a/b;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v1}, Landroidx/room/w;->b()V

    .line 4
    throw v0
.end method

.method public x(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->e()La/g/a/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, La/g/a/b;->x(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Landroidx/room/x$c;

    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-direct {v0, p1, v1}, Landroidx/room/x$c;-><init>(Landroid/database/Cursor;Landroidx/room/w;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->b()V

    .line 5
    throw p1
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->d()La/g/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->d()La/g/a/b;

    move-result-object v0

    invoke-interface {v0}, La/g/a/b;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v1}, Landroidx/room/w;->b()V

    .line 4
    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End transaction called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(La/g/a/e;)Landroid/database/Cursor;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->e()La/g/a/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, La/g/a/b;->z(La/g/a/e;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Landroidx/room/x$c;

    iget-object v1, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-direct {v0, p1, v1}, Landroidx/room/x$c;-><init>(Landroid/database/Cursor;Landroidx/room/w;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Landroidx/room/x$a;->a:Landroidx/room/w;

    invoke-virtual {v0}, Landroidx/room/w;->b()V

    .line 5
    throw p1
.end method
