.class public Lb/a/a/a/f/f;
.super Lb/a/a/a/f/g;
.source "CombinedChartRenderer.java"


# instance fields
.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a/a/f/g;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/g;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/f;->h:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lb/a/a/a/f/f;->g:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Lb/a/a/a/f/f;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/f/g;

    .line 2
    invoke-virtual {v1}, Lb/a/a/a/f/g;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/f/g;

    .line 4
    invoke-virtual {v1, p1}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 9

    .line 5
    iget-object v0, p0, Lb/a/a/a/f/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/f/g;

    const/4 v3, 0x0

    .line 7
    instance-of v4, v2, Lb/a/a/a/f/b;

    if-eqz v4, :cond_1

    .line 8
    move-object v3, v2

    check-cast v3, Lb/a/a/a/f/b;

    iget-object v3, v3, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v3}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_1
    instance-of v4, v2, Lb/a/a/a/f/j;

    if-eqz v4, :cond_2

    .line 10
    move-object v3, v2

    check-cast v3, Lb/a/a/a/f/j;

    iget-object v3, v3, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v3}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v3

    goto :goto_1

    .line 11
    :cond_2
    instance-of v4, v2, Lb/a/a/a/f/e;

    if-eqz v4, :cond_3

    .line 12
    move-object v3, v2

    check-cast v3, Lb/a/a/a/f/e;

    iget-object v3, v3, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v3}, Lb/a/a/a/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v3

    goto :goto_1

    .line 13
    :cond_3
    instance-of v4, v2, Lb/a/a/a/f/p;

    if-eqz v4, :cond_4

    .line 14
    move-object v3, v2

    check-cast v3, Lb/a/a/a/f/p;

    iget-object v3, v3, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v3}, Lb/a/a/a/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_4
    instance-of v4, v2, Lb/a/a/a/f/d;

    if-eqz v4, :cond_5

    .line 16
    move-object v3, v2

    check-cast v3, Lb/a/a/a/f/d;

    iget-object v3, v3, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v3}, Lb/a/a/a/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v3

    :cond_5
    :goto_1
    const/4 v4, -0x1

    if-nez v3, :cond_6

    const/4 v3, -0x1

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/i;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 18
    :goto_2
    iget-object v5, p0, Lb/a/a/a/f/f;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 19
    array-length v5, p2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_9

    aget-object v7, p2, v6

    .line 20
    invoke-virtual {v7}, Lb/a/a/a/d/d;->b()I

    move-result v8

    if-eq v8, v3, :cond_7

    invoke-virtual {v7}, Lb/a/a/a/d/d;->b()I

    move-result v8

    if-ne v8, v4, :cond_8

    .line 21
    :cond_7
    iget-object v8, p0, Lb/a/a/a/f/f;->h:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 22
    :cond_9
    iget-object v3, p0, Lb/a/a/a/f/f;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lb/a/a/a/d/d;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lb/a/a/a/d/d;

    invoke-virtual {v2, p1, v3}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/a/a/f/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 5
    sget-object v5, Lb/a/a/a/f/f$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 7
    iget-object v4, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    new-instance v5, Lb/a/a/a/f/p;

    iget-object v6, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    iget-object v7, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-direct {v5, v0, v6, v7}, Lb/a/a/a/f/p;-><init>(Lb/a/a/a/e/a/h;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 9
    iget-object v4, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    new-instance v5, Lb/a/a/a/f/e;

    iget-object v6, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    iget-object v7, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-direct {v5, v0, v6, v7}, Lb/a/a/a/f/e;-><init>(Lb/a/a/a/e/a/d;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    new-instance v5, Lb/a/a/a/f/j;

    iget-object v6, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    iget-object v7, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-direct {v5, v0, v6, v7}, Lb/a/a/a/f/j;-><init>(Lb/a/a/a/e/a/g;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 13
    iget-object v4, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    new-instance v5, Lb/a/a/a/f/d;

    iget-object v6, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    iget-object v7, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-direct {v5, v0, v6, v7}, Lb/a/a/a/f/d;-><init>(Lb/a/a/a/e/a/c;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 15
    iget-object v4, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    new-instance v5, Lb/a/a/a/f/b;

    iget-object v6, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    iget-object v7, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-direct {v5, v0, v6, v7}, Lb/a/a/a/f/b;-><init>(Lb/a/a/a/e/a/a;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/f/g;

    .line 17
    invoke-virtual {v1, p1}, Lb/a/a/a/f/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/f/g;

    .line 2
    invoke-virtual {v1, p1}, Lb/a/a/a/f/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
