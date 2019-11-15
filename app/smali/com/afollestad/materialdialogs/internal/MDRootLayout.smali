.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# instance fields
.field private final a:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Lcom/afollestad/materialdialogs/StackingBehavior;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/afollestad/materialdialogs/GravityEnum;

.field private p:I

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->b:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->b:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-direct {p0, p1, p2, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->b:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    sget-object v0, Lcom/afollestad/materialdialogs/StackingBehavior;->b:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/view/View;ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/ScrollView;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_3
    if-eqz p3, :cond_0

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/widget/AdapterView;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_6
    if-eqz p3, :cond_0

    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    goto :goto_0

    :cond_7
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz p2, :cond_9

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_9
    if-eqz p3, :cond_a

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    :cond_a
    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1, v2, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_4

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :goto_1
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;ZZZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/webkit/WebView;ZZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Landroid/webkit/WebView;)Z
    .locals 1

    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/widget/AdapterView;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private static a(Landroid/widget/ScrollView;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object v0
.end method

.method private static b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->a:[I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/webkit/WebView;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_titleFrame:I

    if-ne v3, v4, :cond_0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNegative:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultPositive:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v0, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v0, v3, v4

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    add-int v2, p3, v0

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr p3, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int v0, p5, v0

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v3, v2

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v4, p2, v5, p4, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    add-int/2addr p3, v0

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int/2addr p5, v0

    :cond_5
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    sub-int v6, p5, v0

    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_8

    add-int v1, p2, v4

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v2, v3

    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v9

    invoke-virtual {v7, v1, v6, v0, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    :goto_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v4, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v4, :cond_9

    add-int v1, p2, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v4, v3

    :goto_4
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v6, v0, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    :goto_5
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    sub-int v2, p4, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    sub-int v4, v2, v0

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4, v6, v2, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    :cond_7
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-direct {p0, v0, v8, v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    return-void

    :cond_8
    sub-int v0, p4, v4

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    move v2, v1

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v4, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v4, :cond_a

    sub-int v0, p4, v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    move v4, v3

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    add-int v1, p2, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v4, v0

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    add-int v4, p2, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto :goto_6

    :cond_c
    if-ne v4, v3, :cond_d

    if-eq v2, v3, :cond_d

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    sub-int v4, v2, v0

    goto :goto_6

    :cond_d
    if-ne v2, v3, :cond_e

    if-eq v4, v3, :cond_e

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto :goto_6

    :cond_e
    if-ne v2, v3, :cond_6

    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v0

    add-int v2, v4, v0

    goto/16 :goto_6

    :cond_f
    move v4, v3

    goto/16 :goto_5

    :cond_10
    move v2, v3

    move v0, v4

    goto/16 :goto_3
.end method

.method public onMeasure(II)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:I

    :cond_0
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v2, Lcom/afollestad/materialdialogs/StackingBehavior;->a:Lcom/afollestad/materialdialogs/StackingBehavior;

    if-ne v1, v2, :cond_2

    move v1, v3

    move v2, v4

    :goto_0
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz v1, :cond_10

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v8, v6

    move v5, v4

    move v1, v4

    :goto_1
    if-ge v5, v8, :cond_7

    aget-object v9, v6, v5

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v3, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v2, Lcom/afollestad/materialdialogs/StackingBehavior;->c:Lcom/afollestad/materialdialogs/StackingBehavior;

    if-ne v1, v2, :cond_3

    move v1, v4

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v8, v6

    move v5, v4

    move v1, v4

    move v2, v4

    :goto_2
    if-ge v5, v8, :cond_5

    aget-object v9, v6, v5

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v4, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v7, v5

    if-le v1, v5, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_0

    :cond_7
    move v6, v2

    :goto_3
    if-eqz v6, :cond_b

    iget-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz v2, :cond_a

    sub-int v5, v0, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int v2, v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    :goto_4
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v4}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    :cond_8
    :goto_5
    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v10, v5, v1

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v9, v5, v2

    if-gt v8, v9, :cond_e

    iget-boolean v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v8}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz v6, :cond_d

    :cond_9
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v4, v5, v1

    :goto_6
    sub-int/2addr v0, v4

    invoke-virtual {p0, v7, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    return-void

    :cond_a
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    sub-int v2, v0, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    move v5, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_b
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    move v2, v1

    move v5, v0

    move v1, v4

    goto :goto_4

    :cond_c
    iget-boolean v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    if-nez v8, :cond_8

    iget v8, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    add-int/2addr v2, v8

    goto :goto_5

    :cond_d
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v4, v5, v1

    goto :goto_6

    :cond_e
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    goto :goto_6

    :cond_f
    move v4, v5

    goto :goto_6

    :cond_10
    move v1, v4

    move v6, v2

    goto/16 :goto_3
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b()V

    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:I

    return-void
.end method

.method public setStackingBehavior(Lcom/afollestad/materialdialogs/StackingBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Lcom/afollestad/materialdialogs/StackingBehavior;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method
