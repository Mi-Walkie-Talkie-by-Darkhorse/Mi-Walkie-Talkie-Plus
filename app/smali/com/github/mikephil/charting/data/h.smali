.class public abstract Lcom/github/mikephil/charting/data/h;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/e/b/e",
        "<+",
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
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v0, -0x800001

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

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
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v0, -0x800001

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->b:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->d:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->h:F

    iput-object p1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    goto :goto_0
.end method

.method public a(Lcom/github/mikephil/charting/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/e/b/e;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/github/mikephil/charting/e/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)Lcom/github/mikephil/charting/e/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/e/b/e;->a(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->c()V

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->x()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->x()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->w()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->w()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    :cond_3
    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    :cond_7
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    goto :goto_0
.end method

.method public b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    const v1, -0x800001

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Lcom/github/mikephil/charting/e/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/h;->c()V

    return-void
.end method

.method protected c()V
    .locals 4

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput v2, p0, Lcom/github/mikephil/charting/data/h;->a:F

    iput v3, p0, Lcom/github/mikephil/charting/data/h;->b:F

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->c:F

    iput v3, p0, Lcom/github/mikephil/charting/data/h;->d:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/h;->a(Lcom/github/mikephil/charting/e/b/e;)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/github/mikephil/charting/data/h;->e:F

    iput v3, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->g:F

    iput v3, p0, Lcom/github/mikephil/charting/data/h;->h:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/h;->a(Ljava/util/List;)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->e:F

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->f:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->f:F

    :cond_4
    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->e:F

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/h;->b(Ljava/util/List;)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/h;->g:F

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->h:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_6

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->u()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/h;->h:F

    :cond_7
    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/h;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->v()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/h;->g:F

    goto :goto_2
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->b:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->a:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->d:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/h;->c:F

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public k()Lcom/github/mikephil/charting/e/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v3

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v4

    if-le v3, v4, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
