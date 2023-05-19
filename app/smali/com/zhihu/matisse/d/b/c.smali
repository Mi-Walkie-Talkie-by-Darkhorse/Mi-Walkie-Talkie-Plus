.class public Lcom/zhihu/matisse/d/b/c;
.super Ljava/lang/Object;
.source "SelectedItemCollection.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    .line 3
    iput-object p1, p0, Lcom/zhihu/matisse/d/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method private g()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/b;->g:I

    if-lez v1, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->h:I

    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->i:I

    return v0

    :cond_2
    return v1
.end method

.method private o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 2
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 5
    iput v4, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/d/b/c;->q(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget v1, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput v3, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iput v2, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v3, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iput v4, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iput v4, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    :cond_3
    :goto_0
    return v0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t select images and videos at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    iget-object v3, p0, Lcom/zhihu/matisse/d/b/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zhihu/matisse/d/c/c;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Lcom/zhihu/matisse/internal/entity/Item;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public h()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "state_selection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    iget v1, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const-string v2, "state_collection_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public i(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/zhihu/matisse/d/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/zhihu/matisse/d/b/c;->g()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->a:Landroid/content/Context;

    sget v1, Lcom/zhihu/matisse/R$string;->error_over_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/zhihu/matisse/internal/entity/IncapableCause;

    invoke-direct {v0, p1}, Lcom/zhihu/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/d/b/c;->q(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;

    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->a:Landroid/content/Context;

    sget v1, Lcom/zhihu/matisse/R$string;->error_type_conflict:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zhihu/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/d/c/d;->e(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/zhihu/matisse/d/b/c;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string v0, "state_selection"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    const/4 v0, 0x0

    const-string v1, "state_collection_type"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    :goto_0
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "state_selection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2
    iget v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const-string v1, "state_collection_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public n(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 5
    iget-object p2, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public p(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/d/b/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/zhihu/matisse/d/b/c;->o()V

    :cond_1
    :goto_0
    return p1
.end method

.method public q(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zhihu/matisse/d/b/c;->c:I

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
