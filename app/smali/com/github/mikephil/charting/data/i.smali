.class public Lcom/github/mikephil/charting/data/i;
.super Lcom/github/mikephil/charting/data/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/b<",
        "Lb/a/a/a/e/b/b<",
        "+",
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
.method public a(Lb/a/a/a/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/a/d/d;->b()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/d/d;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/h;

    invoke-virtual {p1}, Lb/a/a/a/d/d;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1}, Lb/a/a/a/d/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/a/d/d;->g()F

    move-result v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/b/e;->a(F)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    invoke-virtual {p1}, Lb/a/a/a/d/d;->i()F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lb/a/a/a/d/d;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    return-object v1

    :cond_4
    return-object v3
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, -0x800001

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->b:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->d:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->a()V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->h()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->h()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->a:F

    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->i()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->b:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->i()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->b:F

    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->c:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->c:F

    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->g()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->d:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->g()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->d:F

    :cond_5
    iget v2, v1, Lcom/github/mikephil/charting/data/h;->e:F

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->e:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->e:F

    :cond_6
    iget v2, v1, Lcom/github/mikephil/charting/data/h;->f:F

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->f:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->f:F

    :cond_7
    iget v2, v1, Lcom/github/mikephil/charting/data/h;->g:F

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->g:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->g:F

    :cond_8
    iget v1, v1, Lcom/github/mikephil/charting/data/h;->h:F

    iget v2, p0, Lcom/github/mikephil/charting/data/h;->h:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()V

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/i;->a()V

    return-void
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public l()Lcom/github/mikephil/charting/data/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->k:Lcom/github/mikephil/charting/data/a;

    return-object v0
.end method

.method public m()Lcom/github/mikephil/charting/data/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->n:Lcom/github/mikephil/charting/data/f;

    return-object v0
.end method

.method public n()Lcom/github/mikephil/charting/data/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->m:Lcom/github/mikephil/charting/data/g;

    return-object v0
.end method

.method public o()Lcom/github/mikephil/charting/data/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->j:Lcom/github/mikephil/charting/data/j;

    return-object v0
.end method

.method public p()Lcom/github/mikephil/charting/data/o;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/i;->l:Lcom/github/mikephil/charting/data/o;

    return-object v0
.end method
