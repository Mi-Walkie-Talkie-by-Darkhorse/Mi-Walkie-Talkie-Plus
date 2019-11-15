.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/h",
            "<**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/engine/h;

.field private c:Lcom/bumptech/glide/load/engine/a/e;

.field private d:Lcom/bumptech/glide/load/engine/a/b;

.field private e:Lcom/bumptech/glide/load/engine/b/h;

.field private f:Lcom/bumptech/glide/load/engine/c/a;

.field private g:Lcom/bumptech/glide/load/engine/c/a;

.field private h:Lcom/bumptech/glide/load/engine/b/a$a;

.field private i:Lcom/bumptech/glide/load/engine/b/i;

.field private j:Lcom/bumptech/glide/manager/d;

.field private k:I

.field private l:Lcom/bumptech/glide/request/d;

.field private m:Lcom/bumptech/glide/manager/k$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/d;->k:I

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/request/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 11

    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->b()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/bumptech/glide/load/engine/b/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/i$a;->a()Lcom/bumptech/glide/load/engine/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/i;->b()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v1, Lcom/bumptech/glide/load/engine/a/k;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/a/k;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/bumptech/glide/load/engine/a/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/b/i;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    if-nez v0, :cond_6

    new-instance v0, Lcom/bumptech/glide/load/engine/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/b/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/g;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    if-nez v0, :cond_7

    new-instance v0, Lcom/bumptech/glide/load/engine/b/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/h;

    if-nez v0, :cond_8

    new-instance v0, Lcom/bumptech/glide/load/engine/h;

    iget-object v1, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v2, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->c()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/h;

    :cond_8
    new-instance v6, Lcom/bumptech/glide/manager/k;

    iget-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/k$a;)V

    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/h;

    iget-object v3, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v4, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    iget v8, p0, Lcom/bumptech/glide/d;->k:I

    iget-object v1, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->g()Lcom/bumptech/glide/request/d;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/d;Ljava/util/Map;)V

    return-object v0

    :cond_9
    new-instance v0, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    goto :goto_0
.end method

.method a(Lcom/bumptech/glide/manager/k$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$a;

    return-object p0
.end method
