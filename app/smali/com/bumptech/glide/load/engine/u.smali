.class Lcom/bumptech/glide/load/engine/u;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/b$a;
.implements Lcom/bumptech/glide/load/engine/d;
.implements Lcom/bumptech/glide/load/engine/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/b$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/engine/d;",
        "Lcom/bumptech/glide/load/engine/d$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/e",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/d$a;

.field private c:I

.field private d:Lcom/bumptech/glide/load/engine/a;

.field private e:Ljava/lang/Object;

.field private volatile f:Lcom/bumptech/glide/load/b/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/load/engine/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/e",
            "<*>;",
            "Lcom/bumptech/glide/load/engine/d$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/engine/c;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/e;->e()Lcom/bumptech/glide/load/e;

    move-result-object v4

    invoke-direct {v3, v2, p1, v4}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/e;)V

    new-instance v4, Lcom/bumptech/glide/load/engine/b;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v5, v5, Lcom/bumptech/glide/load/b/n$a;->a:Lcom/bumptech/glide/load/c;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/e;->f()Lcom/bumptech/glide/load/c;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/u;->g:Lcom/bumptech/glide/load/engine/b;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/e;->b()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->g:Lcom/bumptech/glide/load/engine/b;

    invoke-interface {v4, v5, v3}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/b/a$b;)V

    const-string v3, "SourceGenerator"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SourceGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->g:Lcom/bumptech/glide/load/engine/b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/b;->a()V

    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->a:Lcom/bumptech/glide/load/c;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, v2, p0}, Lcom/bumptech/glide/load/engine/a;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/d$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/u;->d:Lcom/bumptech/glide/load/engine/a;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/b;->a()V

    throw v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->c:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/e;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/engine/d$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/d$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->g:Lcom/bumptech/glide/load/engine/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/d$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/e;->c()Lcom/bumptech/glide/load/engine/g;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/u;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/d$a;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Lcom/bumptech/glide/load/engine/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/n$a;->a:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v2}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/u;->g:Lcom/bumptech/glide/load/engine/b;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/d$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/u;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/u;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->d:Lcom/bumptech/glide/load/engine/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->d:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/u;->d:Lcom/bumptech/glide/load/engine/a;

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/u;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/e;->k()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/bumptech/glide/load/engine/u;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/u;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/n$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/e;->c()Lcom/bumptech/glide/load/engine/g;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/g;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->d()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/u;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/e;->d()Lcom/bumptech/glide/Priority;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/a/b;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/b$a;)V

    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->f:Lcom/bumptech/glide/load/b/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
