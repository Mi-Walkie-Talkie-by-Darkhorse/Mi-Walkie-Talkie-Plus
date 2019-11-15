.class public Lcom/github/mikephil/charting/d/c;
.super Lcom/github/mikephil/charting/d/b;
.source "CombinedHighlighter.java"

# interfaces
.implements Lcom/github/mikephil/charting/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/d/b",
        "<",
        "Lcom/github/mikephil/charting/e/a/f;",
        ">;",
        "Lcom/github/mikephil/charting/d/f;"
    }
.end annotation


# instance fields
.field protected c:Lcom/github/mikephil/charting/d/a;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/f;Lcom/github/mikephil/charting/e/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/d/b;-><init>(Lcom/github/mikephil/charting/e/a/b;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/github/mikephil/charting/d/c;->c:Lcom/github/mikephil/charting/d/a;

    return-void

    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/d/a;

    invoke-direct {v0, p2}, Lcom/github/mikephil/charting/d/a;-><init>(Lcom/github/mikephil/charting/e/a/a;)V

    goto :goto_0
.end method


# virtual methods
.method protected b(FFF)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/mikephil/charting/d/c;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v0, Lcom/github/mikephil/charting/e/a/f;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/f;->getCombinedData()Lcom/github/mikephil/charting/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->p()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/h;

    iget-object v3, p0, Lcom/github/mikephil/charting/d/c;->c:Lcom/github/mikephil/charting/d/a;

    if-eqz v3, :cond_1

    instance-of v3, v0, Lcom/github/mikephil/charting/data/a;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/c;->c:Lcom/github/mikephil/charting/d/a;

    invoke-virtual {v0, p2, p3}, Lcom/github/mikephil/charting/d/a;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/d/d;->a(I)V

    iget-object v3, p0, Lcom/github/mikephil/charting/d/c;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->d()I

    move-result v5

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/b;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->f()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v0, v3, p1, v6}, Lcom/github/mikephil/charting/d/c;->a(Lcom/github/mikephil/charting/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/d/d;->a(I)V

    iget-object v7, p0, Lcom/github/mikephil/charting/d/c;->b:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/d/c;->b:Ljava/util/List;

    return-object v0
.end method
