.class public Lb/a/a/a/d/c;
.super Lb/a/a/a/d/b;
.source "CombinedHighlighter.java"

# interfaces
.implements Lb/a/a/a/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/d/b<",
        "Lb/a/a/a/e/a/f;",
        ">;",
        "Lb/a/a/a/d/f;"
    }
.end annotation


# instance fields
.field protected c:Lb/a/a/a/d/a;


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/f;Lb/a/a/a/e/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/a/d/b;-><init>(Lb/a/a/a/e/a/b;)V

    .line 2
    invoke-interface {p2}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lb/a/a/a/d/a;

    invoke-direct {p1, p2}, Lb/a/a/a/d/a;-><init>(Lb/a/a/a/e/a/a;)V

    :goto_0
    iput-object p1, p0, Lb/a/a/a/d/c;->c:Lb/a/a/a/d/a;

    return-void
.end method


# virtual methods
.method protected b(FFF)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    check-cast v0, Lb/a/a/a/e/a/f;

    invoke-interface {v0}, Lb/a/a/a/e/a/f;->getCombinedData()Lcom/github/mikephil/charting/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/h;

    .line 5
    iget-object v4, p0, Lb/a/a/a/d/c;->c:Lb/a/a/a/d/a;

    if-eqz v4, :cond_0

    instance-of v5, v3, Lcom/github/mikephil/charting/data/a;

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4, p2, p3}, Lb/a/a/a/d/a;->a(FF)Lb/a/a/a/d/d;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3, v2}, Lb/a/a/a/d/d;->a(I)V

    .line 8
    iget-object v4, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 12
    :cond_1
    sget-object v6, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v5, v4, p1, v6}, Lb/a/a/a/d/b;->a(Lb/a/a/a/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v5

    .line 13
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/a/a/a/d/d;

    .line 14
    invoke-virtual {v6, v2}, Lb/a/a/a/d/d;->a(I)V

    .line 15
    iget-object v7, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    return-object p1
.end method
