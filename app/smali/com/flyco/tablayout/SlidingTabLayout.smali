.class public Lcom/flyco/tablayout/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/tablayout/SlidingTabLayout$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

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

.field private N:I

.field private O:I

.field private P:Z

.field private Q:F

.field private R:Landroid/graphics/Paint;

.field private S:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lcom/flyco/tablayout/a/b;

.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:F

.field private g:I

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Path;

.field private o:I

.field private p:F

.field private q:Z

.field private r:F

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyco/tablayout/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    iput v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->S:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->setFillViewport(Z)V

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setClipToPadding(Z)V

    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    return-void

    :cond_1
    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [I

    const v1, 0x10100f5

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->O:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v1, p1, :cond_1

    move v3, v4

    :goto_1
    sget v5, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->J:I

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

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
    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->K:I

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(ILjava/lang/String;Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/flyco/tablayout/SlidingTabLayout$1;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SlidingTabLayout$1;-><init>(Lcom/flyco/tablayout/SlidingTabLayout;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->q:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    float-to-int v1, v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_1
    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_style:I

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    sget v6, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_color:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-ne v0, v1, :cond_1

    const-string v0, "#4B6A87"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    sget v6, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_height:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    sget v6, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_width:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    :goto_2
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    sget v6, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_corner_radius:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    sget v6, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_margin_top:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-ne v0, v1, :cond_6

    move v0, v4

    :goto_4
    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_margin_bottom:I

    iget v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-ne v6, v1, :cond_7

    :goto_5
    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_gravity:I

    const/16 v1, 0x50

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->A:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_indicator_width_equal_title:I

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->B:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_underline_color:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->C:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_underline_height:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_underline_gravity:I

    const/16 v1, 0x50

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->E:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_divider_color:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->F:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_divider_width:I

    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->G:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_divider_padding:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->H:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_textsize:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_textSelectColor:I

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->J:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_textUnselectColor:I

    const-string v1, "#AAffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->K:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_textBold:I

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_textAllCaps:I

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->M:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_tab_space_equal:I

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->q:Z

    sget v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_tab_width:I

    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    sget v1, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout_tl_tab_padding:I

    iget-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->q:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    :cond_0
    invoke-virtual {p0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    :goto_6
    invoke-virtual {v5, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const-string v0, "#ffffff"

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

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
    move v4, v3

    goto/16 :goto_5

    :cond_8
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_6
.end method

.method static synthetic b(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->J:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    float-to-int v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    float-to-int v4, v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->M:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

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
    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->K:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    if-gtz v2, :cond_2

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->d()V

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->N:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->N:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flyco/tablayout/SlidingTabLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->P:Z

    return v0
.end method

.method static synthetic d(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/a/b;
    .locals 1

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->T:Lcom/flyco/tablayout/a/b;

    return-object v0
.end method

.method private d()V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->B:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float v4, v1, v2

    sub-float v0, v4, v0

    div-float/2addr v0, v8

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    :cond_0
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    sub-float v7, v4, v2

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    iget v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    sub-float v7, v5, v1

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    iget v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->B:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    iget v7, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float v4, v5, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v8

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    iget v6, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    sub-float/2addr v0, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    :cond_1
    move v0, v1

    move v1, v2

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    float-to-int v4, v1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    float-to-int v4, v0

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->B:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->Q:F

    sub-float v4, v0, v4

    sub-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    :cond_2
    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->i:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->i:Landroid/graphics/Rect;

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method protected a(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->a:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(ILjava/lang/String;Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method protected b(F)I
    .locals 2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->a:Landroid/content/Context;

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

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->F:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->H:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->G:F

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->J:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->K:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->C:I

    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v11, 0x50

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->getPaddingLeft()I

    move-result v8

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->G:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->G:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->H:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v0, v7

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->H:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->E:I

    if-ne v0, v11, :cond_4

    int-to-float v1, v8

    int-to-float v0, v7

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->d()V

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v7

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    int-to-float v1, v8

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    iget-object v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->k:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_6

    int-to-float v0, v7

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    :cond_6
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    div-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    div-float/2addr v0, v10

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    :cond_8
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->A:I

    if-ne v0, v11, :cond_a

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    float-to-int v2, v2

    sub-int v2, v7, v2

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    float-to-int v4, v4

    sub-int v4, v7, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :goto_3
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->j:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    float-to-int v4, v4

    iget v5, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    iput p2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->f:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->c()V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    invoke-direct {p0, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(I)V

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->c()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "mCurrentTab"

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->e:I

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->F:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->H:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->G:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->s:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->v:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->A:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->t:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->w:F

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->x:F

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->y:F

    invoke-virtual {p0, p4}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->z:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->o:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->u:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidthEqualTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->B:Z

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->g:I

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->d:Landroid/widget/LinearLayout;

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

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v3, p0, Lcom/flyco/tablayout/SlidingTabLayout;->R:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {v0}, Lcom/flyco/tablayout/widget/MsgView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    div-float/2addr v4, v6

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->O:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/flyco/tablayout/SlidingTabLayout;->O:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/widget/MsgView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    add-float/2addr v2, v4

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->T:Lcom/flyco/tablayout/a/b;

    return-void
.end method

.method public setSnapOnTabClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->P:Z

    return-void
.end method

.method public setTabPadding(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->p:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->q:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->r:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->M:Z

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->L:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->J:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->K:I

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->b(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->I:F

    invoke-direct {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->b()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->C:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->E:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->D:F

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->a()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Titles can not be EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p2

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Titles length must be the same as the page count !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->c:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->a()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;[Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/ViewPager;",
            "[",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager can not be NULL !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Titles can not be EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/flyco/tablayout/SlidingTabLayout$a;

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, p4, p2}, Lcom/flyco/tablayout/SlidingTabLayout$a;-><init>(Lcom/flyco/tablayout/SlidingTabLayout;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/flyco/tablayout/SlidingTabLayout;->a()V

    return-void
.end method
