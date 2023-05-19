.class public Lcom/qmuiteam/qmui/widget/tab/QMUITabView;
.super Landroid/widget/FrameLayout;
.source "QMUITabView.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

.field private b:Lcom/qmuiteam/qmui/util/a;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/view/GestureDetector;

.field private e:Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    .line 7
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    .line 8
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    .line 10
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    .line 12
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 13
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    .line 14
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    .line 15
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    .line 16
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 18
    new-instance p1, Lcom/qmuiteam/qmui/util/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p0, v0}, Lcom/qmuiteam/qmui/util/a;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    .line 19
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView$a;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView$a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;

    return-object p0
.end method

.method private d()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    :goto_1
    float-to-int v1, v1

    .line 7
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->y:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_2

    .line 12
    :cond_2
    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    :goto_2
    return-object v2
.end method

.method private f(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->e(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 3
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-object p1
.end method

.method private k(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v2

    int-to-float v0, v0

    mul-float v3, v0, v2

    .line 6
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2, p1, v1}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    .line 8
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->k()F

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/util/a;->j()F

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result v2

    .line 13
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/util/a;->p()F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2, p1, v4}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3, p1, v0}, Lcom/qmuiteam/qmui/util/a;->x(FFFLandroid/view/animation/Interpolator;)F

    return-void
.end method

.method private l(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    .line 4
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 5
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lcom/qmuiteam/qmui/util/a;->S(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Z)V

    .line 7
    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v2, :cond_5

    .line 8
    iget-boolean v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->o:Z

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/c;->e(II)V

    goto :goto_1

    .line 10
    :cond_0
    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->p:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    invoke-static {p0, v2}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 12
    :goto_0
    iget v4, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->q:I

    if-eqz v4, :cond_2

    .line 13
    invoke-static {p0, v4}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 14
    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {p1, v2, v3}, Lcom/qmuiteam/qmui/widget/tab/c;->d(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 15
    iget-object v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/c;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 16
    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {p1, v2, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/c;->c(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QMUITabView"

    const-string v1, "skin attr not matched with current value."

    .line 17
    invoke-static {v0, v1, p1}, Lcom/qmuiteam/qmui/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;La/b/g;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/c/g;",
            "I",
            "Landroid/content/res/Resources$Theme;",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    iget v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c:I

    int-to-float v1, v1

    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/util/a;->T(FFZ)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    iget-object v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e:Landroid/graphics/Typeface;

    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/util/a;->V(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Z)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v1, v3}, Lcom/qmuiteam/qmui/util/a;->N(IIZ)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/a;->R(Ljava/lang/CharSequence;)V

    .line 5
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 6
    iget-object v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_5

    .line 13
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v4, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    iget v2, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->w:I

    .line 14
    invoke-static {v4, v2}, Lcom/qmuiteam/qmui/util/g;->d(II)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_min_size_with_text:I

    invoke-static {v2, v4}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_min_size:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 21
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    :goto_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 24
    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected e(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .locals 3

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {p1}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    .line 3
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_sign_count_view_bg_color:I

    const-string v2, "background"

    invoke-virtual {p1, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 4
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_sign_count_view_text_color:I

    const-string v2, "textColor"

    invoke-virtual {p1, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 5
    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected g(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iget v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    float-to-int v1, v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/c;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->g(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getContentViewLeft()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    .line 6
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    .line 7
    :cond_4
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    float-to-double v3, v0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    float-to-double v5, v0

    add-double/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentViewWidth()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-nez v1, :cond_1

    :goto_0
    float-to-double v0, v0

    :goto_1
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    .line 5
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v5}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v5

    mul-float v4, v4, v5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-float/2addr v4, v0

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-double v0, v4

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected h(II)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz p2, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->d()Landroid/graphics/Point;

    move-result-object p2

    .line 3
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    if-le v2, p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    .line 6
    :cond_0
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    sub-int p2, v1, p2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 9
    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 10
    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected i(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/util/a;->b()V

    .line 3
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/util/a;->k()F

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v5}, Lcom/qmuiteam/qmui/util/a;->j()F

    move-result v5

    .line 6
    iget-object v6, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v6}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result v6

    .line 7
    iget-object v7, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v7}, Lcom/qmuiteam/qmui/util/a;->p()F

    move-result v7

    const/4 v8, 0x5

    const v9, 0x800007

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/4 v12, 0x3

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-nez v3, :cond_5

    .line 8
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    .line 9
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v3, v3, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    and-int/lit8 v15, v3, 0x70

    if-eq v15, v11, :cond_2

    if-eq v15, v10, :cond_1

    int-to-float v2, v2

    sub-float v5, v2, v5

    div-float/2addr v5, v13

    .line 10
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v2, v7

    div-float/2addr v2, v13

    .line 11
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    sub-float v5, v2, v5

    .line 12
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v2, v7

    .line 13
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_0

    .line 14
    :cond_2
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 15
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    :goto_0
    and-int v2, v3, v9

    if-eq v2, v12, :cond_4

    if-eq v2, v8, :cond_3

    int-to-float v1, v1

    sub-float v2, v1, v4

    div-float/2addr v2, v13

    .line 16
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v1, v6

    div-float/2addr v1, v13

    .line 17
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_e

    :cond_3
    int-to-float v1, v1

    sub-float v2, v1, v4

    .line 18
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v1, v6

    .line 19
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_e

    .line 20
    :cond_4
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    .line 21
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_e

    .line 22
    :cond_5
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v3

    .line 23
    iget-object v15, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v8, v15, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    .line 24
    invoke-virtual {v15}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result v15

    int-to-float v15, v15

    .line 25
    iget-object v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v9}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v9

    int-to-float v9, v9

    .line 26
    iget-object v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v14}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v14

    mul-float v14, v14, v15

    .line 27
    iget-object v13, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v13}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v13

    mul-float v13, v13, v9

    int-to-float v3, v3

    add-float v10, v4, v3

    add-float v16, v10, v15

    add-float v11, v5, v3

    add-float v17, v11, v9

    add-float v12, v6, v3

    add-float v18, v12, v14

    move/from16 v19, v11

    add-float v11, v7, v3

    add-float v20, v11, v13

    move/from16 v21, v11

    const/4 v11, 0x1

    if-eq v8, v11, :cond_13

    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    goto/16 :goto_8

    .line 28
    :cond_6
    iget-object v11, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v11, v11, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    move/from16 v22, v12

    and-int/lit8 v12, v11, 0x70

    move/from16 v23, v10

    const/16 v10, 0x30

    if-eq v12, v10, :cond_8

    const/16 v10, 0x50

    if-eq v12, v10, :cond_7

    int-to-float v2, v2

    sub-float v9, v2, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 29
    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float v5, v2, v5

    div-float/2addr v5, v10

    .line 30
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float v5, v2, v13

    div-float/2addr v5, v10

    .line 31
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v7

    div-float/2addr v2, v10

    .line 32
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    :goto_1
    const v2, 0x800007

    goto :goto_2

    :cond_7
    int-to-float v2, v2

    sub-float v9, v2, v9

    .line 33
    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float v5, v2, v5

    .line 34
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float v5, v2, v13

    .line 35
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v7

    .line 36
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 37
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    .line 38
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 39
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    .line 40
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_1

    :goto_2
    and-int/2addr v2, v11

    const/4 v5, 0x2

    const/4 v7, 0x3

    if-eq v2, v7, :cond_c

    const/4 v7, 0x5

    if-eq v2, v7, :cond_a

    if-ne v8, v5, :cond_9

    int-to-float v2, v1

    sub-float v5, v2, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 41
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v2, v2, v18

    div-float/2addr v2, v7

    .line 42
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    .line 43
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    add-float/2addr v2, v6

    add-float/2addr v2, v3

    .line 44
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_3

    :cond_9
    const/high16 v7, 0x40000000    # 2.0f

    int-to-float v2, v1

    sub-float v5, v2, v16

    div-float/2addr v5, v7

    .line 45
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v2, v2, v18

    div-float/2addr v2, v7

    .line 46
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float/2addr v5, v15

    add-float/2addr v5, v3

    .line 47
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float/2addr v2, v14

    add-float/2addr v2, v3

    .line 48
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_3

    :cond_a
    if-ne v8, v5, :cond_b

    int-to-float v2, v1

    sub-float v5, v2, v16

    .line 49
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v5, v2, v18

    .line 50
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    sub-float v5, v2, v15

    .line 51
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float/2addr v2, v14

    .line 52
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_3

    :cond_b
    int-to-float v2, v1

    sub-float v5, v2, v16

    .line 53
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v5, v2, v18

    .line 54
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float v5, v2, v4

    .line 55
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v2, v6

    .line 56
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_3

    :cond_c
    if-ne v8, v5, :cond_d

    const/4 v2, 0x0

    .line 57
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    .line 58
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    move/from16 v5, v23

    .line 59
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    move/from16 v5, v22

    .line 60
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    .line 61
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    .line 62
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float v2, v15, v3

    .line 63
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float v2, v14, v3

    .line 64
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    :goto_3
    if-nez v8, :cond_10

    int-to-float v1, v1

    cmpl-float v2, v16, v1

    if-ltz v2, :cond_e

    sub-float v2, v1, v16

    .line 65
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    goto :goto_4

    :cond_e
    sub-float v2, v1, v16

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 66
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    .line 67
    :goto_4
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    add-float/2addr v2, v15

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    cmpl-float v2, v18, v1

    if-ltz v2, :cond_f

    sub-float v1, v1, v18

    .line 68
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_5

    :cond_f
    sub-float v1, v1, v18

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 69
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    .line 70
    :goto_5
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float/2addr v1, v14

    add-float/2addr v1, v3

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_e

    :cond_10
    int-to-float v1, v1

    cmpl-float v2, v16, v1

    if-ltz v2, :cond_11

    const/4 v2, 0x0

    .line 71
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    goto :goto_6

    :cond_11
    sub-float v2, v1, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 72
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    .line 73
    :goto_6
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    cmpl-float v2, v18, v1

    if-ltz v2, :cond_12

    const/4 v2, 0x0

    .line 74
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_7

    :cond_12
    sub-float v1, v1, v18

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 75
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    .line 76
    :goto_7
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto/16 :goto_e

    .line 77
    :cond_13
    :goto_8
    iget-object v10, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v10, v10, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    const v11, 0x800007

    and-int/2addr v11, v10

    const/4 v12, 0x3

    if-eq v11, v12, :cond_15

    const/4 v12, 0x5

    if-eq v11, v12, :cond_14

    int-to-float v1, v1

    sub-float v11, v1, v15

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 78
    iput v11, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v4, v1, v4

    div-float/2addr v4, v12

    .line 79
    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v4, v1, v14

    div-float/2addr v4, v12

    .line 80
    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float/2addr v1, v6

    div-float/2addr v1, v12

    .line 81
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_9

    :cond_14
    int-to-float v1, v1

    sub-float v11, v1, v15

    .line 82
    iput v11, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v4, v1, v4

    .line 83
    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v4, v1, v14

    .line 84
    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float/2addr v1, v6

    .line 85
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_9

    :cond_15
    const/4 v1, 0x0

    .line 86
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    .line 87
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    .line 88
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    .line 89
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    :goto_9
    and-int/lit8 v1, v10, 0x70

    const/16 v4, 0x30

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x50

    if-eq v1, v4, :cond_1b

    const/4 v1, 0x1

    if-ne v8, v1, :cond_18

    int-to-float v1, v2

    cmpl-float v2, v17, v1

    if-ltz v2, :cond_16

    sub-float v2, v1, v17

    .line 90
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    goto :goto_a

    :cond_16
    sub-float v2, v1, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 91
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    .line 92
    :goto_a
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    add-float/2addr v2, v3

    add-float/2addr v2, v9

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    cmpl-float v2, v20, v1

    if-ltz v2, :cond_17

    sub-float v1, v1, v20

    .line 93
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    goto :goto_b

    :cond_17
    sub-float v1, v1, v20

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 94
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    .line 95
    :goto_b
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    add-float/2addr v1, v3

    add-float/2addr v1, v13

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto/16 :goto_e

    :cond_18
    int-to-float v1, v2

    cmpl-float v2, v17, v1

    if-ltz v2, :cond_19

    const/4 v2, 0x0

    .line 96
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    goto :goto_c

    :cond_19
    sub-float v2, v1, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 97
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 98
    :goto_c
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v2, v3

    add-float/2addr v2, v5

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    cmpl-float v2, v20, v1

    if-ltz v2, :cond_1a

    const/4 v2, 0x0

    .line 99
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    goto :goto_d

    :cond_1a
    sub-float v1, v1, v20

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 100
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 101
    :goto_d
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v1, v3

    add-float/2addr v1, v7

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    goto :goto_e

    :cond_1b
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1c

    int-to-float v1, v2

    sub-float v2, v1, v5

    .line 102
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v1, v7

    .line 103
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v9

    .line 104
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v13

    .line 105
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    goto :goto_e

    :cond_1c
    int-to-float v1, v2

    sub-float v2, v1, v9

    .line 106
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float/2addr v1, v13

    .line 107
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    .line 108
    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v7

    .line 109
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_e

    :cond_1d
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1e

    const/4 v1, 0x0

    .line 110
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    .line 111
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    add-float/2addr v9, v3

    .line 112
    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v13, v3

    .line 113
    iput v13, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_e

    :cond_1e
    const/4 v1, 0x0

    .line 114
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    .line 115
    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    move/from16 v5, v19

    .line 116
    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    move/from16 v7, v21

    .line 117
    iput v7, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    :goto_e
    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->s()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k(F)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected j(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v2, v1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    mul-float v0, v0, v2

    .line 4
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v3, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    mul-float v1, v1, v3

    .line 5
    iget v3, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 6
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p2, p2

    .line 7
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr p2, v1

    float-to-int p2, p2

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/qmuiteam/qmui/util/a;->C(IIII)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/qmuiteam/qmui/util/a;->H(IIII)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->a()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    invoke-virtual {p0, p4, p5}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i(II)V

    .line 3
    invoke-virtual {p0, p4, p5}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j(II)V

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_5

    if-nez v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    const/4 p1, 0x1

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result p1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 12
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 13
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v6}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v6

    mul-float v2, v2, v6

    add-float/2addr p1, v2

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 15
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v2

    mul-float p1, p1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    .line 16
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result v2

    .line 17
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 18
    :goto_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_4

    .line 19
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Landroid/widget/Button;->measure(II)V

    .line 20
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 21
    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v6, v6, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    add-int/2addr v2, v6

    .line 22
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 23
    :cond_4
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    if-ne v3, v5, :cond_9

    if-nez v0, :cond_6

    .line 24
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/a;->p()F

    move-result p2

    :goto_3
    float-to-int p2, p2

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    const/4 p2, 0x2

    if-ne v1, p2, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/a;->p()F

    move-result p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 26
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 27
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    goto :goto_3

    .line 28
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 29
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()F

    move-result v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    .line 30
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->q()F

    move-result v0

    .line 31
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_3

    .line 32
    :goto_5
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 33
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setCallback(Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;

    return-void
.end method

.method public setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->P(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setSelectFraction(F)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/util/g;->b(FFF)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 4
    invoke-virtual {v2, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 5
    invoke-virtual {v3, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f(Landroid/view/View;)I

    move-result v3

    .line 6
    invoke-static {v2, v3, p1}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result v2

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/qmuiteam/qmui/widget/tab/c;->b(FI)V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k(F)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/a;->M(F)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->d()Landroid/graphics/Point;

    move-result-object p1

    .line 12
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 15
    :cond_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p1, v2

    if-gez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->b0(Landroid/view/View;I)V

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->c0(Landroid/view/View;I)V

    :cond_3
    return-void
.end method
