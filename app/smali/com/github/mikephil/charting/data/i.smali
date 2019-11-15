.class public Lcom/github/mikephil/charting/data/i;
.super Lcom/github/mikephil/charting/data/b;
.source "CombinedData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/b",
        "<",
        "Lcom/github/mikephil/charting/e/b/b",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private j:Lcom/github/mikephil/charting/data/j;

.field private k:Lcom/github/mikephil/charting/data/a;

.field private l:Lcom/github/mikephil/charting/data/o;

.field private m:Lcom/github/mikephil/charting/data/g;

.field private n:Lcom/github/mikephil/charting/data/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/data/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->e()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/h;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->d()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/h;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/e/b/e;->a(F)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a()Lcom/github/mikephil/charting/data/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/j;->b()V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/g;->b()V

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/o;->b()V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/f;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/i;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/github/mikephil/charting/data/i;->a:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->b:F

    iput v1, p0, Lcom/github/mikephil/charting/data/i;->c:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->d:F

    iput v1, p0, Lcom/github/mikephil/charting/data/i;->e:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/data/i;->g:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->h:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/data/i;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->a:F

    :cond_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->e()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->b:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->e()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->b:F

    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->h()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->c:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->h()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->c:F

    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->g()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->d:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->g()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->d:F

    :cond_5
    iget v2, v0, Lcom/github/mikephil/charting/data/h;->e:F

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget v2, v0, Lcom/github/mikephil/charting/data/h;->e:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->e:F

    :cond_6
    iget v2, v0, Lcom/github/mikephil/charting/data/h;->f:F

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, v0, Lcom/github/mikephil/charting/data/h;->f:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->f:F

    :cond_7
    iget v2, v0, Lcom/github/mikephil/charting/data/h;->g:F

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget v2, v0, Lcom/github/mikephil/charting/data/h;->g:F

    iput v2, p0, Lcom/github/mikephil/charting/data/i;->g:F

    :cond_8
    iget v2, v0, Lcom/github/mikephil/charting/data/h;->h:F

    iget v3, p0, Lcom/github/mikephil/charting/data/i;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v0, v0, Lcom/github/mikephil/charting/data/h;->h:F

    iput v0, p0, Lcom/github/mikephil/charting/data/i;->h:F

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public l()Lcom/github/mikephil/charting/data/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    return-object v0
.end method

.method public m()Lcom/github/mikephil/charting/data/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    return-object v0
.end method

.method public n()Lcom/github/mikephil/charting/data/o;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    return-object v0
.end method

.method public o()Lcom/github/mikephil/charting/data/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
