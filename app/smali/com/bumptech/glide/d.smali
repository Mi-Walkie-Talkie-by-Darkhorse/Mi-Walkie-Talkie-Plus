.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/h<",
            "**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/engine/i;

.field private c:Lcom/bumptech/glide/load/engine/x/e;

.field private d:Lcom/bumptech/glide/load/engine/x/b;

.field private e:Lcom/bumptech/glide/load/engine/y/h;

.field private f:Lcom/bumptech/glide/load/engine/z/a;

.field private g:Lcom/bumptech/glide/load/engine/z/a;

.field private h:Lcom/bumptech/glide/load/engine/y/a$a;

.field private i:Lcom/bumptech/glide/load/engine/y/i;

.field private j:Lcom/bumptech/glide/manager/d;

.field private k:I

.field private l:Lcom/bumptech/glide/request/e;

.field private m:Lcom/bumptech/glide/manager/k$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/bumptech/glide/load/engine/z/a;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/d;->k:I

    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/request/e;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->d()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/z/a;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->c()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->b()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/engine/z/a;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/i;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bumptech/glide/load/engine/y/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i$a;->a()Lcom/bumptech/glide/load/engine/y/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/i;

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/x/e;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i;->b()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v2, Lcom/bumptech/glide/load/engine/x/k;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/x/k;-><init>(J)V

    iput-object v2, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/x/e;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/x/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/x/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/x/e;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/b;

    if-nez v0, :cond_7

    new-instance v0, Lcom/bumptech/glide/load/engine/x/j;

    iget-object v2, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/y/i;->a()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/x/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/b;

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/y/h;

    if-nez v0, :cond_8

    new-instance v0, Lcom/bumptech/glide/load/engine/y/g;

    iget-object v2, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/y/i;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/load/engine/y/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/y/h;

    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/y/a$a;

    if-nez v0, :cond_9

    new-instance v0, Lcom/bumptech/glide/load/engine/y/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/y/a$a;

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/i;

    if-nez v0, :cond_a

    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    iget-object v3, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v4, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/y/a$a;

    iget-object v5, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    iget-object v6, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/z/a;

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->e()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v7

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->b()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/bumptech/glide/d;->o:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/i;

    :cond_a
    new-instance v6, Lcom/bumptech/glide/manager/k;

    iget-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$b;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/k$b;)V

    new-instance v11, Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/i;

    iget-object v3, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v4, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/x/e;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    iget v8, p0, Lcom/bumptech/glide/d;->k:I

    iget-object v9, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/request/e;

    invoke-virtual {v9}, Lcom/bumptech/glide/request/e;->B()Lcom/bumptech/glide/request/e;

    iget-object v10, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/e;Ljava/util/Map;)V

    return-object v11
.end method

.method a(Lcom/bumptech/glide/manager/k$b;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/k$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$b;

    return-void
.end method
