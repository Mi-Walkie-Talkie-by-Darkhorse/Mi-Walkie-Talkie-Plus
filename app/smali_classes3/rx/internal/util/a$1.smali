.class Lrx/internal/util/a$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/util/a;


# direct methods
.method constructor <init>(Lrx/internal/util/a;)V
    .locals 0

    iput-object p1, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v1}, Lrx/internal/util/a;->a(Lrx/internal/util/a;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->b(Lrx/internal/util/a;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->c(Lrx/internal/util/a;)I

    move-result v2

    sub-int v1, v2, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->a(Lrx/internal/util/a;)Ljava/util/Queue;

    move-result-object v2

    iget-object v3, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-virtual {v3}, Lrx/internal/util/a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->c(Lrx/internal/util/a;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->c(Lrx/internal/util/a;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lrx/internal/util/a$1;->a:Lrx/internal/util/a;

    invoke-static {v2}, Lrx/internal/util/a;->a(Lrx/internal/util/a;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
