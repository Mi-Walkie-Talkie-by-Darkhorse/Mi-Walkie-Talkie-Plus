.class public Lcom/github/mikephil/charting/f/f;
.super Lcom/github/mikephil/charting/f/g;
.source "CombinedChartRenderer.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/f/g;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/g;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/f;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/f;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/g;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 9

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/f/g;

    const/4 v2, 0x0

    instance-of v4, v1, Lcom/github/mikephil/charting/f/b;

    if-eqz v4, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/f/b;

    iget-object v2, v2, Lcom/github/mikephil/charting/f/b;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v2

    move-object v4, v2

    :goto_1
    if-nez v4, :cond_8

    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    array-length v6, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_9

    aget-object v7, p2, v4

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->e()I

    move-result v8

    if-eq v8, v2, :cond_2

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->e()I

    move-result v8

    if-ne v8, v3, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/github/mikephil/charting/f/f;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    instance-of v4, v1, Lcom/github/mikephil/charting/f/j;

    if-eqz v4, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/f/j;

    iget-object v2, v2, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_5
    instance-of v4, v1, Lcom/github/mikephil/charting/f/e;

    if-eqz v4, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/f/e;

    iget-object v2, v2, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_6
    instance-of v4, v1, Lcom/github/mikephil/charting/f/p;

    if-eqz v4, :cond_7

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/f/p;

    iget-object v2, v2, Lcom/github/mikephil/charting/f/p;->a:Lcom/github/mikephil/charting/e/a/h;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_7
    instance-of v4, v1, Lcom/github/mikephil/charting/f/d;

    if-eqz v4, :cond_a

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/f/d;

    iget-object v2, v2, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/i;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/github/mikephil/charting/f/f;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/github/mikephil/charting/d/d;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v1, p1, v2}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V

    goto/16 :goto_0

    :cond_a
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    sget-object v5, Lcom/github/mikephil/charting/f/f$1;->a:[I

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/f/b;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/f;->g:Lcom/github/mikephil/charting/a/a;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/f;->o:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v5, v0, v6, v7}, Lcom/github/mikephil/charting/f/b;-><init>(Lcom/github/mikephil/charting/e/a/a;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/f/d;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/f;->g:Lcom/github/mikephil/charting/a/a;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/f;->o:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v5, v0, v6, v7}, Lcom/github/mikephil/charting/f/d;-><init>(Lcom/github/mikephil/charting/e/a/c;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/f/j;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/f;->g:Lcom/github/mikephil/charting/a/a;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/f;->o:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v5, v0, v6, v7}, Lcom/github/mikephil/charting/f/j;-><init>(Lcom/github/mikephil/charting/e/a/g;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/f/e;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/f;->g:Lcom/github/mikephil/charting/a/a;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/f;->o:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v5, v0, v6, v7}, Lcom/github/mikephil/charting/f/e;-><init>(Lcom/github/mikephil/charting/e/a/d;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/f/p;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/f;->g:Lcom/github/mikephil/charting/a/a;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/f;->o:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v5, v0, v6, v7}, Lcom/github/mikephil/charting/f/p;-><init>(Lcom/github/mikephil/charting/e/a/h;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
