.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Lcom/github/mikephil/charting/data/d;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/DataSet$Rounding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/data/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->n:F

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->o:F

    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->r()V

    return-void
.end method


# virtual methods
.method public a(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/DataSet;->b(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v0, v1, v2

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v5

    cmpl-float v5, p1, v5

    if-nez v5, :cond_1

    move v1, v3

    :goto_1
    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_3
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    goto :goto_3

    :cond_3
    return-object v4
.end method

.method public a(FF)V
    .locals 3

    const/high16 v2, 0x7fc00000    # Float.NaN

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const v0, -0x800001

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->b:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/data/DataSet;->b(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v0

    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->a:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p2, v2, v1}, Lcom/github/mikephil/charting/data/DataSet;->b(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->c(Lcom/github/mikephil/charting/data/Entry;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->b(Lcom/github/mikephil/charting/data/Entry;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->c(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0
.end method

.method public b(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I
    .locals 11

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v1, v2

    :goto_1
    if-ge v3, v1, :cond_6

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    sub-float v5, v0, p1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v7, v0, v6

    if-gez v7, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_2
    move v2, v0

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    cmpg-float v0, v6, v0

    if-gez v0, :cond_4

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_4
    float-to-double v6, v5

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_5

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_5
    float-to-double v6, v5

    cmpg-double v0, v6, v8

    if-gez v0, :cond_e

    add-int/lit8 v0, v2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_2

    :cond_6
    if-eq v2, v4, :cond_d

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->a:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v0, :cond_7

    cmpg-float v0, v4, p1

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_c

    add-int/lit8 v0, v2, 0x1

    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    :goto_4
    if-lez v1, :cond_8

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_8

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->b:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v0, :cond_c

    cmpl-float v0, v4, p1

    if-lez v0, :cond_c

    if-lez v2, :cond_c

    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    move v2, v0

    move v0, v1

    :goto_5
    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_a

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v5, v2, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    move v0, v3

    move v1, p2

    :goto_6
    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v1

    move v1, v2

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move v0, v1

    move v1, v3

    goto/16 :goto_2
.end method

.method public b(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/data/DataSet;->a(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->o:F

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->n:F

    :cond_1
    return-void
.end method

.method protected c(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    :cond_1
    return-void
.end method

.method public d(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    return-object v0
.end method

.method public r()V
    .locals 3

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->n:F

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->o:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->a(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSet, label: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", entries: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->m:F

    return v0
.end method

.method public v()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->l:F

    return v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->o:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->n:F

    return v0
.end method
