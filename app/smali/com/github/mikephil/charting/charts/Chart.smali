.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "Chart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/h",
        "<+",
        "Lcom/github/mikephil/charting/e/b/e",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/e/a/e;"
    }
.end annotation


# instance fields
.field protected D:Z

.field protected E:Lcom/github/mikephil/charting/data/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected F:Z

.field protected G:Lcom/github/mikephil/charting/c/c;

.field protected H:Landroid/graphics/Paint;

.field protected I:Landroid/graphics/Paint;

.field protected J:Lcom/github/mikephil/charting/components/XAxis;

.field protected K:Z

.field protected L:Lcom/github/mikephil/charting/components/c;

.field protected M:Lcom/github/mikephil/charting/components/Legend;

.field protected N:Lcom/github/mikephil/charting/listener/c;

.field protected O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected P:Lcom/github/mikephil/charting/f/i;

.field protected Q:Lcom/github/mikephil/charting/f/g;

.field protected R:Lcom/github/mikephil/charting/d/f;

.field protected S:Lcom/github/mikephil/charting/g/j;

.field protected T:Lcom/github/mikephil/charting/a/a;

.field protected U:[Lcom/github/mikephil/charting/d/d;

.field protected V:F

.field protected W:Z

.field private a:Z

.field protected aa:Lcom/github/mikephil/charting/components/d;

.field protected ab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:Ljava/lang/String;

.field private d:Lcom/github/mikephil/charting/listener/b;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    new-instance v0, Lcom/github/mikephil/charting/c/c;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    new-instance v0, Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/j;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    new-instance v0, Lcom/github/mikephil/charting/c/c;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    new-instance v0, Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/j;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    new-instance v0, Lcom/github/mikephil/charting/c/c;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    new-instance v0, Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/j;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->a(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Z

    return v0
.end method

.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/d/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/d/f;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setWillNotDraw(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/github/mikephil/charting/a/a;

    invoke-direct {v0}, Lcom/github/mikephil/charting/a/a;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:Lcom/github/mikephil/charting/a/a;

    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/content/Context;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    new-instance v0, Lcom/github/mikephil/charting/components/c;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/c;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcom/github/mikephil/charting/components/Legend;

    new-instance v0, Lcom/github/mikephil/charting/f/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/f/i;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/Legend;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->P:Lcom/github/mikephil/charting/f/i;

    new-instance v0, Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/XAxis;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Lcom/github/mikephil/charting/components/XAxis;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/a/a;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/a/a;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:Lcom/github/mikephil/charting/a/a;

    goto :goto_0
.end method

.method public a(Lcom/github/mikephil/charting/d/d;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/d/d;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcom/github/mikephil/charting/listener/c;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->v()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcom/github/mikephil/charting/listener/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/listener/c;->a()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Highlighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/h;->a(Lcom/github/mikephil/charting/d/d;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/mikephil/charting/d/d;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcom/github/mikephil/charting/listener/c;

    invoke-interface {v1, v0, p1}, Lcom/github/mikephil/charting/listener/c;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/d/d;)V

    goto :goto_1
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->i()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->j()F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/c;->b()Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->v()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->c()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->b()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/c;->s()F

    move-result v1

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->d()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->t()F

    move-result v2

    sub-float/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget v1, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    goto :goto_0
.end method

.method protected c(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->b(F)I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/c/c;->a(I)V

    return-void

    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->aa:Lcom/github/mikephil/charting/components/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->v()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/h;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/h;->a(Lcom/github/mikephil/charting/d/d;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/e/b/e;->d(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    if-eqz v4, :cond_2

    int-to-float v5, v5

    invoke-interface {v3}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->T:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v6

    mul-float/2addr v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->a(Lcom/github/mikephil/charting/d/d;)[F

    move-result-object v3

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    aget v6, v3, v1

    aget v7, v3, v8

    invoke-virtual {v5, v6, v7}, Lcom/github/mikephil/charting/g/j;->d(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->aa:Lcom/github/mikephil/charting/components/d;

    invoke-interface {v5, v4, v2}, Lcom/github/mikephil/charting/components/d;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/d/d;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->aa:Lcom/github/mikephil/charting/components/d;

    aget v4, v3, v1

    aget v3, v3, v8

    invoke-interface {v2, p1, v4, v3}, Lcom/github/mikephil/charting/components/d;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method public getAnimator()Lcom/github/mikephil/charting/a/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->T:Lcom/github/mikephil/charting/a/a;

    return-object v0
.end method

.method public getCenter()Lcom/github/mikephil/charting/g/e;
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOfView()Lcom/github/mikephil/charting/g/e;
    .locals 1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Lcom/github/mikephil/charting/g/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->l()Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/c/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    return-object v0
.end method

.method public getDescription()Lcom/github/mikephil/charting/components/c;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    return v0
.end method

.method public getExtraBottomOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    return v0
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/d/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    return-object v0
.end method

.method public getHighlighter()Lcom/github/mikephil/charting/d/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lcom/github/mikephil/charting/d/f;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->M:Lcom/github/mikephil/charting/components/Legend;

    return-object v0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/f/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->P:Lcom/github/mikephil/charting/f/i;

    return-object v0
.end method

.method public getMarker()Lcom/github/mikephil/charting/components/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->aa:Lcom/github/mikephil/charting/components/d;

    return-object v0
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getMarker()Lcom/github/mikephil/charting/components/d;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHighlightDistance()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    return v0
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lcom/github/mikephil/charting/listener/b;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/github/mikephil/charting/listener/ChartTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-object v0
.end method

.method public getRenderer()Lcom/github/mikephil/charting/f/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->Q:Lcom/github/mikephil/charting/f/g;

    return-object v0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/g/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    return-object v0
.end method

.method public getXAxis()Lcom/github/mikephil/charting/components/XAxis;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Lcom/github/mikephil/charting/components/XAxis;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->s:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->t:F

    return v0
.end method

.method public getXRange()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    return v0
.end method

.method public getYMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->e()F

    move-result v0

    return v0
.end method

.method public abstract h()V
.end method

.method protected abstract j()V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    iget v2, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->j()V

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/16 v2, 0x2710

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "OnSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v2, :cond_3

    if-ge p2, v2, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->S:Lcom/github/mikephil/charting/g/j;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/g/j;->a(FF)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting chart dimens, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->h()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/h;->e()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/h;->f()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->c(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    if-ne v2, v3, :cond_2

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Lcom/github/mikephil/charting/c/c;

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/e/b/e;->a(Lcom/github/mikephil/charting/c/f;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->h()V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Data is set."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDescription(Lcom/github/mikephil/charting/components/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->L:Lcom/github/mikephil/charting/components/c;

    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const v0, 0x3f7fbe77    # 0.999f

    :cond_0
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:F

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->W:Z

    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:F

    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->f:F

    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->e:F

    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const-string v0, "MPAndroidChart"

    const-string v1, "Cannot enable/disable hardware acceleration for devices below API level 11."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Z

    return-void
.end method

.method public setHighlighter(Lcom/github/mikephil/charting/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->R:Lcom/github/mikephil/charting/d/f;

    return-void
.end method

.method protected setLastHighlighted([Lcom/github/mikephil/charting/d/d;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(Lcom/github/mikephil/charting/d/d;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(Lcom/github/mikephil/charting/d/d;)V

    goto :goto_0
.end method

.method public setLogEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    return-void
.end method

.method public setMarker(Lcom/github/mikephil/charting/components/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->aa:Lcom/github/mikephil/charting/components/d;

    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/d;)V

    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->V:F

    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Ljava/lang/String;

    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/b;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lcom/github/mikephil/charting/listener/b;

    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->N:Lcom/github/mikephil/charting/listener/c;

    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->I:Landroid/graphics/Paint;

    goto :goto_0

    :sswitch_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Landroid/graphics/Paint;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setRenderer(Lcom/github/mikephil/charting/f/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->Q:Lcom/github/mikephil/charting/f/g;

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->K:Z

    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Z

    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Z

    return v0
.end method

.method public v()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->U:[Lcom/github/mikephil/charting/d/d;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->a:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:Z

    return v0
.end method

.method public y()V
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
