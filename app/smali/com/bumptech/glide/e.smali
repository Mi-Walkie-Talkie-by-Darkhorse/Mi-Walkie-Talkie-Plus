.class public Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/h;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/bumptech/glide/Registry;

.field private final d:Lcom/bumptech/glide/request/a/e;

.field private final e:Lcom/bumptech/glide/request/d;

.field private final f:Ljava/util/Map;
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

.field private final g:Lcom/bumptech/glide/load/engine/h;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/e;->a:Lcom/bumptech/glide/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/a/e;Lcom/bumptech/glide/request/d;Ljava/util/Map;Lcom/bumptech/glide/load/engine/h;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Registry;",
            "Lcom/bumptech/glide/request/a/e;",
            "Lcom/bumptech/glide/request/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/h",
            "<**>;>;",
            "Lcom/bumptech/glide/load/engine/h;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    iput-object p3, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/request/a/e;

    iput-object p4, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/request/d;

    iput-object p5, p0, Lcom/bumptech/glide/e;->f:Ljava/util/Map;

    iput-object p6, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/load/engine/h;

    iput p7, p0, Lcom/bumptech/glide/e;->h:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/e;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/h",
            "<*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/e;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/e;->a:Lcom/bumptech/glide/h;

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/bumptech/glide/request/a/h",
            "<TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/request/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/a/h;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bumptech/glide/request/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/request/d;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/engine/h;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/load/engine/h;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/e;->h:I

    return v0
.end method
