.class public Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;
    }
.end annotation


# instance fields
.field protected final a:La/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:La/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/widget/ListAdapter;

.field private f:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

.field private g:Z

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a:La/b/d;

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->g:Z

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->i:Z

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a:La/b/d;

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    new-instance p1, La/b/d;

    invoke-direct {p1}, La/b/d;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->g:Z

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->i:Z

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected a(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->f:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->f:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;->getItemId(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getChangeDisappearDuration()J
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getOffsetDurationUnit()F
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    return v0
.end method

.method public getRealAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->e:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    invoke-virtual {v0}, La/b/d;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    invoke-virtual {v2}, La/b/d;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    invoke-virtual {v2, v1}, La/b/d;->a(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->b:La/b/d;

    invoke-virtual {v4, v1}, La/b/d;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a(J)I

    move-result v5

    iget-wide v6, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->c:J

    long-to-float v6, v6

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    if-ge v5, v7, :cond_0

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a:La/b/d;

    invoke-virtual {v5, v2, v3}, La/b/d;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->a:La/b/d;

    invoke-virtual {v5, v2, v3}, La/b/d;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    iget-wide v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->c:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->getChangeDisappearDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v4, v2, v3}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->e:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->e:Landroid/widget/ListAdapter;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;-><init>(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->f:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAnimationManipulateDurationLimit(I)V
    .locals 0

    return-void
.end method

.method public setOffsetDurationUnit(F)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->h:F

    return-void
.end method

.method public setOffsetInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    return-void
.end method

.method public setOpenChangeDisappearAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->i:Z

    return-void
.end method
