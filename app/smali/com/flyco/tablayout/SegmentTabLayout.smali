.class public Lcom/flyco/tablayout/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/tablayout/SegmentTabLayout$b;,
        Lcom/flyco/tablayout/SegmentTabLayout$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:I

.field private G:I

.field private H:F

.field private I:I

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/view/animation/OvershootInterpolator;

.field private L:Lcom/flyco/tablayout/b/a;

.field private M:[F

.field private N:Z

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/flyco/tablayout/a/b;

.field private R:Lcom/flyco/tablayout/SegmentTabLayout$a;

.field private S:Lcom/flyco/tablayout/SegmentTabLayout$a;

.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/Paint;

.field private k:F

.field private l:Z

.field private m:F

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:Z

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyco/tablayout/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->K:Landroid/view/animation/OvershootInterpolator;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iput-boolean v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->N:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->O:Landroid/graphics/Paint;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->P:Landroid/util/SparseArray;

    new-instance v0, Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SegmentTabLayout$a;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    new-instance v0, Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SegmentTabLayout$a;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SegmentTabLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SegmentTabLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SegmentTabLayout;->setClipToPadding(Z)V

    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    new-instance v0, Lcom/flyco/tablayout/SegmentTabLayout$b;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SegmentTabLayout$b;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

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

    iput v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->I:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flyco/tablayout/SegmentTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    return v0
.end method

.method private a(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v1, p1, :cond_1

    move v3, v4

    :goto_1
    sget v5, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->B:I

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    if-ne v5, v4, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->C:I

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/flyco/tablayout/SegmentTabLayout$1;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SegmentTabLayout$1;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    float-to-int v1, v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_color:I

    const-string v2, "#222831"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_height:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_corner_radius:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->q:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_top:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->s:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_bottom:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->t:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_anim_enable:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_bounce_enable:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->w:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_anim_duration:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_color:I

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->x:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_width:I

    invoke-virtual {p0, v7}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->y:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_padding:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->z:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textsize:I

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/SegmentTabLayout;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->A:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textSelectColor:I

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->B:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textUnselectColor:I

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->C:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textBold:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textAllCaps:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->E:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_space_equal:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->l:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_width:I

    invoke-virtual {p0, v6}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    sget v2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_padding:I

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->k:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_color:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->F:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_stroke_color:I

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->G:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_stroke_width:I

    invoke-virtual {p0, v7}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->H:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/flyco/tablayout/SegmentTabLayout;)Lcom/flyco/tablayout/a/b;
    .locals 1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->Q:Lcom/flyco/tablayout/a/b;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->k:F

    float-to-int v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->k:F

    float-to-int v4, v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v3, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->B:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->A:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->E:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->C:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget v0, v0, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget v1, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget v0, v0, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget v1, v1, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->S:Lcom/flyco/tablayout/SegmentTabLayout$a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->R:Lcom/flyco/tablayout/SegmentTabLayout$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->K:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->w:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f4

    :goto_1
    iput-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    :cond_2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xfa

    goto :goto_1
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v7

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x6

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v6

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    aput v3, v0, v7

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v4

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v6

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x6

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    aput v2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_segment:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method protected b(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Landroid/content/Context;

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

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->x:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->z:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->y:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->t:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->q:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->s:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->k:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->B:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->C:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->A:F

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/SegmentTabLayout$a;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v0, Lcom/flyco/tablayout/SegmentTabLayout$a;->a:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    iget v0, v0, Lcom/flyco/tablayout/SegmentTabLayout$a;->b:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v7, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getPaddingLeft()I

    move-result v9

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    int-to-float v0, v8

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->t:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    :cond_2
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    :cond_4
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->H:F

    float-to-int v1, v1

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->y:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->y:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v6, v7

    :goto_1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_5

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->z:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v3, v0

    int-to-float v0, v8

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->z:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->N:Z

    if-eqz v0, :cond_6

    iput-boolean v7, p0, Lcom/flyco/tablayout/SegmentTabLayout;->N:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->d()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->q:F

    float-to-int v1, v1

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->s:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->M:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->d()V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    invoke-direct {p0, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->a(I)V

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

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:I

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:I

    invoke-direct {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->L:Lcom/flyco/tablayout/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->L:Lcom/flyco/tablayout/b/a;

    invoke-virtual {v0, p1}, Lcom/flyco/tablayout/b/a;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->x:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->z:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->y:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->u:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->v:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->w:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->n:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->p:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->o:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->q:F

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->r:F

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->s:F

    invoke-virtual {p0, p4}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->t:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 4

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:I

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_1

    sget v2, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->O:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->A:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->O:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->O:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->O:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v0}, Lcom/flyco/tablayout/widget/MsgView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->I:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->I:I

    int-to-float v3, v3

    sub-float v2, v3, v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/widget/MsgView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v2

    goto :goto_0
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->Q:Lcom/flyco/tablayout/a/b;

    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Titles can not be NULL or EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->a()V

    return-void
.end method

.method public setTabData([Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->L:Lcom/flyco/tablayout/b/a;

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    return-void
.end method

.method public setTabPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->k:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->l:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->m:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->E:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->D:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->B:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->C:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->b(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->A:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->b()V

    return-void
.end method
