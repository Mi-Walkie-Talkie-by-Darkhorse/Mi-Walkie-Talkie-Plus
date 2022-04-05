.class public abstract Lcom/github/mikephil/charting/data/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/a/a/a/e/b/e<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object p1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->j()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    :cond_2
    return p1
.end method

.method public a(I)Lb/a/a/a/e/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/a/a/e/b/e;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/util/List;)Lb/a/a/a/e/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e;

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/a/a/a/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    invoke-virtual {p1}, Lb/a/a/a/d/d;->c()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p1}, Lb/a/a/a/d/d;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e;

    invoke-virtual {p1}, Lb/a/a/a/d/d;->g()F

    move-result v1

    invoke-virtual {p1}, Lb/a/a/a/d/d;->i()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x800001

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->a:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->b:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->c:F

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->d:F

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/a/a/e/b/e;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/data/h;->a(Lb/a/a/a/e/b/e;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->h:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/h;->a(Ljava/util/List;)Lb/a/a/a/e/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->x()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/e;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->x()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->x()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->f:F

    :cond_3
    invoke-interface {v1}, Lb/a/a/a/e/b/e;->l()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/h;->b(Ljava/util/List;)Lb/a/a/a/e/b/e;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->x()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/e;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_5

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->x()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->x()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->h:F

    :cond_6
    invoke-interface {v1}, Lb/a/a/a/e/b/e;->l()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/e;

    invoke-interface {v1, p1, p2}, Lb/a/a/a/e/b/e;->b(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->a()V

    return-void
.end method

.method protected a(Lb/a/a/a/e/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->g0()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->g0()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->j()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    :cond_3
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/h;->f:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    :cond_7
    :goto_0
    return-void
.end method

.method public b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->f:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Lcom/github/mikephil/charting/data/h;->f:F

    :cond_2
    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)Lb/a/a/a/e/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e;

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/e/b/e;

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public e()Lb/a/a/a/e/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/e/b/e;

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v3

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->q0()I

    move-result v4

    if-le v3, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    return v0
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->a()V

    return-void
.end method
