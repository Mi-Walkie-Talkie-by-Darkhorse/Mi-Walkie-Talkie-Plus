.class public Lcom/flyco/tablayout/CommonTabLayout;
.super Landroid/widget/FrameLayout;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/tablayout/CommonTabLayout$b;,
        Lcom/flyco/tablayout/CommonTabLayout$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:I

.field private T:Landroid/animation/ValueAnimator;

.field private U:Landroid/view/animation/OvershootInterpolator;

.field private V:Lcom/flyco/tablayout/b/a;

.field private W:Z

.field private a:Landroid/content/Context;

.field private aa:Landroid/graphics/Paint;

.field private ab:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Lcom/flyco/tablayout/a/b;

.field private ad:Lcom/flyco/tablayout/CommonTabLayout$a;

.field private ae:Lcom/flyco/tablayout/CommonTabLayout$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyco/tablayout/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Path;

.field private m:I

.field private n:F

.field private o:Z

.field private p:F

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/flyco/tablayout/CommonTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyco/tablayout/CommonTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    iput v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->U:Landroid/view/animation/OvershootInterpolator;

    iput-boolean v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->W:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->aa:Landroid/graphics/Paint;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ab:Landroid/util/SparseArray;

    new-instance v0, Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/CommonTabLayout$a;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    new-instance v0, Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/CommonTabLayout$a;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->setClipToPadding(Z)V

    iput-object p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/flyco/tablayout/CommonTabLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout_height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/flyco/tablayout/CommonTabLayout$b;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/CommonTabLayout$b;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [I

    const v1, 0x10100f5

    aput v1, v0, v3

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->S:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flyco/tablayout/CommonTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    return v0
.end method

.method private a(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v3, p1, :cond_1

    move v5, v6

    :goto_1
    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->J:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lcom/flyco/tablayout/R$id;->iv_tab_icon:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyco/tablayout/a/a;

    if-eqz v5, :cond_3

    invoke-interface {v2}, Lcom/flyco/tablayout/a/a;->b()I

    move-result v2

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->K:I

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/flyco/tablayout/a/a;->c()I

    move-result v2

    goto :goto_3

    :cond_4
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyco/tablayout/a/a;

    invoke-interface {v1}, Lcom/flyco/tablayout/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/flyco/tablayout/R$id;->iv_tab_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyco/tablayout/a/a;

    invoke-interface {v1}, Lcom/flyco/tablayout/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/flyco/tablayout/CommonTabLayout$1;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/CommonTabLayout$1;-><init>(Lcom/flyco/tablayout/CommonTabLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->o:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    float-to-int v1, v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_style:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_color:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v1, :cond_1

    const-string v0, "#4B6A87"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_height:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v6, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_width:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v6, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    :goto_2
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_corner_radius:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_margin_top:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v1, :cond_6

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_4
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    sget v5, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_margin_bottom:I

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v1, :cond_7

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_5
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_anim_enable:I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->z:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_bounce_enable:I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->A:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_anim_duration:I

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_indicator_gravity:I

    const/16 v1, 0x50

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->B:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_underline_color:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->C:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_underline_height:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_underline_gravity:I

    const/16 v1, 0x50

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->E:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_divider_color:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->F:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_divider_width:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->G:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_divider_padding:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->H:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_textsize:I

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/CommonTabLayout;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->I:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_textSelectColor:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->J:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_textUnselectColor:I

    const-string v1, "#AAffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->K:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_textBold:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_textAllCaps:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->M:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_iconVisible:I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->N:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_iconGravity:I

    const/16 v1, 0x30

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_iconWidth:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->P:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_iconHeight:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_iconMargin:I

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_tab_space_equal:I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->o:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_tab_width:I

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    sget v1, Lcom/flyco/tablayout/R$styleable;->CommonTabLayout_tl_tab_padding:I

    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    :cond_0
    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    :goto_6
    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->n:F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const-string v0, "#ffffff"

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    :goto_7
    int-to-float v0, v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto :goto_7

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v0, v3

    goto/16 :goto_3

    :cond_6
    move v0, v3

    goto/16 :goto_4

    :cond_7
    move v0, v3

    goto/16 :goto_5

    :cond_8
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_6
.end method

.method static synthetic b(Lcom/flyco/tablayout/CommonTabLayout;)Lcom/flyco/tablayout/a/b;
    .locals 1

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ac:Lcom/flyco/tablayout/a/b;

    return-object v0
.end method

.method private b()V
    .locals 8

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    if-ge v2, v0, :cond_b

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->n:F

    float-to-int v1, v1

    invoke-virtual {v5, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    if-ne v2, v1, :cond_2

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->J:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->I:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->M:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_1
    :goto_2
    sget v0, Lcom/flyco/tablayout/R$id;->iv_tab_icon:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->N:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyco/tablayout/a/a;

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    if-ne v2, v5, :cond_4

    invoke-interface {v1}, Lcom/flyco/tablayout/a/a;->b()I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->P:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_5

    move v1, v4

    :goto_4
    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_6

    move v5, v4

    :goto_5
    invoke-direct {v6, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->K:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lcom/flyco/tablayout/a/a;->c()I

    move-result v1

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->P:F

    float-to-int v1, v1

    goto :goto_4

    :cond_6
    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    float-to-int v5, v5

    goto :goto_5

    :cond_7
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_8

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_8
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/16 v5, 0x50

    if-ne v1, v5, :cond_9

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    iget v0, v0, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    iget v1, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    iget v0, v0, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    iget v1, v1, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->ae:Lcom/flyco/tablayout/CommonTabLayout$a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->ad:Lcom/flyco/tablayout/CommonTabLayout$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->U:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-wide v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->A:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f4

    :goto_1
    iput-wide v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    :cond_2
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xfa

    goto :goto_1
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method protected a(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_left:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/flyco/tablayout/CommonTabLayout;->a(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_right:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_bottom:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_top:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method protected b(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentTab()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->F:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->H:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->G:F

    return v0
.end method

.method public getIconGravity()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    return v0
.end method

.method public getIconHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    return v0
.end method

.method public getIconMargin()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    return v0
.end method

.method public getIconWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->P:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->n:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->J:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->K:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->I:F

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->C:I

    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/CommonTabLayout$a;

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v0, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v0, Lcom/flyco/tablayout/CommonTabLayout$a;->b:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void

    :cond_0
    iget v0, v0, Lcom/flyco/tablayout/CommonTabLayout$a;->a:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/16 v12, 0x50

    const/4 v7, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->getPaddingLeft()I

    move-result v9

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->G:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->G:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v6, v7

    :goto_1
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->H:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    int-to-float v0, v8

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->H:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->E:I

    if-ne v0, v12, :cond_5

    int-to-float v1, v9

    int-to-float v0, v8

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->z:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->W:Z

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/flyco/tablayout/CommonTabLayout;->W:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->d()V

    :cond_4
    :goto_3
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    int-to-float v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v8

    iget v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    int-to-float v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    int-to-float v1, v9

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    iget-object v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->i:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->d()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_8

    int-to-float v0, v8

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    :cond_8
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    cmpg-float v0, v0, v10

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    div-float/2addr v1, v11

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    div-float/2addr v0, v11

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    :cond_a
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    float-to-int v1, v1

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->B:I

    if-ne v0, v12, :cond_c

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    float-to-int v1, v1

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    float-to-int v2, v2

    sub-int v2, v8, v2

    iget v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    float-to-int v4, v4

    sub-int v4, v8, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :goto_4
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    float-to-int v1, v1

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    float-to-int v4, v4

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-direct {p0, v0}, Lcom/flyco/tablayout/CommonTabLayout;->a(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "mCurrentTab"

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->e:I

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->d:I

    invoke-direct {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->V:Lcom/flyco/tablayout/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->V:Lcom/flyco/tablayout/b/a;

    invoke-virtual {v0, p1}, Lcom/flyco/tablayout/b/a;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->z:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->F:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->H:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->G:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->a()V

    return-void
.end method

.method public setIconHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setIconMargin(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->N:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setIconWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->P:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->y:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->z:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->A:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->q:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->t:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->B:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->r:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->u:F

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->v:F

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->w:F

    invoke-virtual {p0, p4}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->x:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->m:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->s:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 8

    const/4 v3, 0x0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->f:I

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_3

    sget v2, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->aa:Landroid/graphics/Paint;

    iget v4, p0, Lcom/flyco/tablayout/CommonTabLayout;->I:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->aa:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    iget-object v1, p0, Lcom/flyco/tablayout/CommonTabLayout;->aa:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->aa:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v4, v1, v2

    invoke-virtual {v0}, Lcom/flyco/tablayout/widget/MsgView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->Q:F

    iget-boolean v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->N:Z

    if-eqz v5, :cond_7

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyco/tablayout/a/a;

    invoke-interface {v2}, Lcom/flyco/tablayout/a/a;->b()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    :cond_1
    iget v3, p0, Lcom/flyco/tablayout/CommonTabLayout;->R:F

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_0
    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->O:I

    const/16 v6, 0x50

    if-ne v5, v6, :cond_5

    :cond_2
    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->S:I

    if-lez v5, :cond_4

    iget v5, p0, Lcom/flyco/tablayout/CommonTabLayout;->S:I

    int-to-float v5, v5

    sub-float v4, v5, v4

    sub-float v3, v4, v3

    sub-float v2, v3, v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/widget/MsgView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->S:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/flyco/tablayout/CommonTabLayout;->S:I

    int-to-float v2, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_3
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v2

    goto :goto_3

    :cond_7
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_0
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->ac:Lcom/flyco/tablayout/a/b;

    return-void
.end method

.method public setTabData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyco/tablayout/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabEntitys can not be NULL or EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->a()V

    return-void
.end method

.method public setTabData(Ljava/util/ArrayList;Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyco/tablayout/a/a;",
            ">;",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/flyco/tablayout/b/a;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/flyco/tablayout/b/a;-><init>(Landroid/support/v4/app/FragmentManager;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->V:Lcom/flyco/tablayout/b/a;

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->setTabData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setTabPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->n:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->o:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->p:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->M:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->L:I

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->J:I

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->K:I

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->b(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->I:F

    invoke-direct {p0}, Lcom/flyco/tablayout/CommonTabLayout;->b()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->C:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->E:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/CommonTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->D:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/CommonTabLayout;->invalidate()V

    return-void
.end method
