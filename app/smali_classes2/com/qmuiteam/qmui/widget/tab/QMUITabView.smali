.class public Lcom/qmuiteam/qmui/widget/tab/QMUITabView;
.super Landroid/widget/FrameLayout;

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

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    new-instance p1, Lcom/qmuiteam/qmui/util/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p0, v0}, Lcom/qmuiteam/qmui/util/a;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView$a;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView$a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method private a()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    :goto_1
    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->y:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v1, :cond_2

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

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v1, v1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Point;->offset(II)V

    :goto_2
    return-object v2
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;

    return-object p0
.end method

.method private a(F)V
    .locals 5

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v2

    int-to-float v0, v0

    mul-float v3, v0, v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    int-to-float v0, v1

    mul-float v2, v2, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2, p1, v1}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->e()F

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/util/a;->d()F

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/util/a;->h()F

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2, p1, v4}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->l:F

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3, p1, v0}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-object p1
.end method

.method private b(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 6

    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Z)V

    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v2, :cond_5

    iget-boolean v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->o:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/c;->a(II)V

    goto :goto_1

    :cond_0
    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->p:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p0, v2}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget v4, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->q:I

    if-eqz v4, :cond_2

    invoke-static {p0, v4}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {p1, v2, v3}, Lcom/qmuiteam/qmui/widget/tab/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/c;->a()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    invoke-virtual {p1, v2, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/c;->a(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QMUITabView"

    const-string v1, "skin attr not matched with current value."

    invoke-static {v0, v1, p1}, Lcom/qmuiteam/qmui/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .locals 3

    new-instance v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {p1}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_sign_count_view_bg_color:I

    const-string v2, "background"

    invoke-virtual {p1, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_sign_count_view_text_color:I

    const-string v2, "textColor"

    invoke-virtual {p1, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected a(II)V
    .locals 3

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a()Landroid/graphics/Point;

    move-result-object p2

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    if-le v2, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    :cond_0
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p2

    sub-int p2, v1, p2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->f:F

    iget v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->j:F

    float-to-int v1, v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->k:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/c;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->h:F

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

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

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    iget v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c:I

    int-to-float v1, v1

    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFZ)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    iget-object v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e:Landroid/graphics/Typeface;

    iget-object v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Z)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v1, v3}, Lcom/qmuiteam/qmui/util/a;->a(IIZ)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/a;->a(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget-object v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->n:Lcom/qmuiteam/qmui/widget/tab/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v1, v1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v4, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->z:I

    iget v2, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->w:I

    invoke-static {v4, v2}, Lcom/qmuiteam/qmui/util/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_min_size_with_text:I

    invoke-static {v2, v4}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_min_size_with_text:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_min_size:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected b(II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/util/a;->b()V

    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v3

    iget-object v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/util/a;->e()F

    move-result v4

    iget-object v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v5}, Lcom/qmuiteam/qmui/util/a;->d()F

    move-result v5

    iget-object v6, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v6}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result v6

    iget-object v7, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v7}, Lcom/qmuiteam/qmui/util/a;->h()F

    move-result v7

    const/4 v8, 0x5

    const v9, 0x800007

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/4 v12, 0x3

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-nez v3, :cond_5

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v3, v3, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    and-int/lit8 v3, v3, 0x70

    if-eq v3, v11, :cond_2

    if-eq v3, v10, :cond_1

    int-to-float v2, v2

    sub-float v3, v2, v5

    div-float/2addr v3, v13

    iput v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v2, v7

    div-float/2addr v2, v13

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    sub-float v3, v2, v5

    iput v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v2, v7

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_0

    :cond_2
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    :goto_0
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v2, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    and-int/2addr v2, v9

    if-eq v2, v12, :cond_4

    if-eq v2, v8, :cond_3

    int-to-float v1, v1

    sub-float v2, v1, v4

    div-float/2addr v2, v13

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v1, v6

    div-float/2addr v1, v13

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_d

    :cond_3
    int-to-float v1, v1

    sub-float v2, v1, v4

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_d

    :cond_4
    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iput v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_d

    :cond_5
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v3

    iget-object v15, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v8, v15, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    invoke-virtual {v15}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v15

    int-to-float v15, v15

    iget-object v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v9}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c()I

    move-result v9

    int-to-float v9, v9

    iget-object v14, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v14}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v14

    mul-float v14, v14, v15

    iget-object v13, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v13}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

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

    goto/16 :goto_7

    :cond_6
    iget-object v11, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v11, v11, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    and-int/lit8 v11, v11, 0x70

    move/from16 v22, v12

    const/16 v12, 0x30

    if-eq v11, v12, :cond_8

    const/16 v12, 0x50

    if-eq v11, v12, :cond_7

    int-to-float v2, v2

    sub-float v9, v2, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float v5, v2, v5

    div-float/2addr v5, v11

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float v5, v2, v13

    div-float/2addr v5, v11

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v7

    div-float/2addr v2, v11

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_1

    :cond_7
    int-to-float v2, v2

    sub-float v9, v2, v9

    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float v5, v2, v5

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float v5, v2, v13

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v7

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    :goto_1
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v2, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    const v5, 0x800007

    and-int/2addr v2, v5

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

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v2, v2, v18

    div-float/2addr v2, v7

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    add-float/2addr v2, v6

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_2

    :cond_9
    const/high16 v7, 0x40000000    # 2.0f

    int-to-float v2, v1

    sub-float v5, v2, v16

    div-float/2addr v5, v7

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v2, v2, v18

    div-float/2addr v2, v7

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float/2addr v5, v15

    add-float/2addr v5, v3

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float/2addr v2, v14

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_2

    :cond_a
    if-ne v8, v5, :cond_b

    int-to-float v2, v1

    sub-float v5, v2, v16

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v5, v2, v18

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    sub-float v5, v2, v15

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float/2addr v2, v14

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_2

    :cond_b
    int-to-float v2, v1

    sub-float v5, v2, v16

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v5, v2, v18

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float v5, v2, v4

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float/2addr v2, v6

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_2

    :cond_c
    if-ne v8, v5, :cond_d

    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    iput v10, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    move/from16 v5, v22

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float v2, v15, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float v2, v14, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    :goto_2
    if-nez v8, :cond_10

    int-to-float v1, v1

    cmpl-float v2, v16, v1

    if-ltz v2, :cond_e

    sub-float v2, v1, v16

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    goto :goto_3

    :cond_e
    sub-float v2, v1, v16

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    :goto_3
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    add-float/2addr v2, v15

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    cmpl-float v2, v18, v1

    if-ltz v2, :cond_f

    sub-float v1, v1, v18

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto :goto_4

    :cond_f
    sub-float v1, v1, v18

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    :goto_4
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    add-float/2addr v1, v14

    add-float/2addr v1, v3

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto/16 :goto_d

    :cond_10
    int-to-float v1, v1

    cmpl-float v2, v16, v1

    if-ltz v2, :cond_11

    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    goto :goto_5

    :cond_11
    sub-float v2, v1, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    :goto_5
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    cmpl-float v2, v18, v1

    if-ltz v2, :cond_12

    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_6

    :cond_12
    sub-float v1, v1, v18

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    :goto_6
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    goto/16 :goto_d

    :cond_13
    :goto_7
    iget-object v10, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v10, v10, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    const v11, 0x800007

    and-int/2addr v10, v11

    const/4 v11, 0x3

    if-eq v10, v11, :cond_15

    const/4 v11, 0x5

    if-eq v10, v11, :cond_14

    int-to-float v1, v1

    sub-float v10, v1, v15

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iput v10, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v4, v1, v4

    div-float/2addr v4, v11

    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v4, v1, v14

    div-float/2addr v4, v11

    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float/2addr v1, v6

    div-float/2addr v1, v11

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_8

    :cond_14
    int-to-float v1, v1

    sub-float v10, v1, v15

    iput v10, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    sub-float v4, v1, v4

    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    sub-float v4, v1, v14

    iput v4, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->m:F

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->o:F

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    :goto_8
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v1, v1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->u:I

    and-int/lit8 v1, v1, 0x70

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

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    goto :goto_9

    :cond_16
    sub-float v2, v1, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    :goto_9
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    add-float/2addr v2, v3

    add-float/2addr v2, v9

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    cmpl-float v2, v20, v1

    if-ltz v2, :cond_17

    sub-float v1, v1, v20

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    goto :goto_a

    :cond_17
    sub-float v1, v1, v20

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    :goto_a
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    add-float/2addr v1, v3

    add-float/2addr v1, v13

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto/16 :goto_d

    :cond_18
    int-to-float v1, v2

    cmpl-float v2, v17, v1

    if-ltz v2, :cond_19

    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    goto :goto_b

    :cond_19
    sub-float v2, v1, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    :goto_b
    iget v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v2, v3

    add-float/2addr v2, v5

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    cmpl-float v2, v20, v1

    if-ltz v2, :cond_1a

    const/4 v2, 0x0

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    goto :goto_c

    :cond_1a
    sub-float v1, v1, v20

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    :goto_c
    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v1, v3

    add-float/2addr v1, v7

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    goto :goto_d

    :cond_1b
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1c

    int-to-float v1, v2

    sub-float v2, v1, v5

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v9

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v13

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    goto :goto_d

    :cond_1c
    int-to-float v1, v2

    sub-float v2, v1, v9

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    sub-float/2addr v1, v13

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    iput v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_d

    :cond_1d
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1e

    const/4 v1, 0x0

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    add-float/2addr v9, v3

    iput v9, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    add-float/2addr v13, v3

    iput v13, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    goto :goto_d

    :cond_1e
    const/4 v1, 0x0

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->p:F

    iput v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->t:F

    move/from16 v5, v19

    iput v5, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->n:F

    move/from16 v7, v21

    iput v7, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->r:F

    :goto_d
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->k()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(F)V

    return-void
.end method

.method protected c(II)V
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v2, v1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    mul-float v0, v0, v2

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v3, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->m:F

    mul-float v1, v1, v3

    iget v3, v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->t:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

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

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/qmuiteam/qmui/util/a;->a(IIII)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/qmuiteam/qmui/util/a;->b(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->a()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getContentViewLeft()I
    .locals 7

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

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

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->q:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->s:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

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

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-nez v1, :cond_1

    :goto_0
    float-to-double v0, v0

    :goto_1
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v5}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v5

    mul-float v4, v4, v5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-float/2addr v4, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-double v0, v4

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0, p4, p5}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b(II)V

    invoke-virtual {p0, p4, p5}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c(II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_5

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->i()F

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

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result p1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v6}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v6

    mul-float v2, v2, v6

    add-float/2addr p1, v2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->d()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v2

    mul-float p1, p1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :goto_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Landroid/widget/Button;->measure(II)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    iget v6, v6, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->x:I

    add-int/2addr v2, v6

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    if-ne v3, v5, :cond_9

    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/a;->h()F

    move-result p2

    :goto_3
    float-to-int p2, p2

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    const/4 p2, 0x2

    if-ne v1, p2, :cond_7

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/util/a;->h()F

    move-result p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->c()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->e()F

    move-result v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/util/a;->i()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_3

    :goto_5
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

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

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;

    return-void
.end method

.method public setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setSelectFraction(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/qmuiteam/qmui/util/g;->a(FFF)F

    move-result p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->f()Lcom/qmuiteam/qmui/widget/tab/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v2, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {v3, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/qmuiteam/qmui/widget/tab/c;->a(FI)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(F)V

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->b:Lcom/qmuiteam/qmui/util/a;

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/util/a;->a(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a()Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p1, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->u:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    :cond_3
    return-void
.end method
