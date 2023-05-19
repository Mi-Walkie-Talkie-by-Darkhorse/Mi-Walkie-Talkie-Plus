.class public Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;
.super Landroid/widget/HorizontalScrollView;
.source "QMUIBasicTabSegment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;
.implements Lcom/qmuiteam/qmui/c/d;
.implements Lcom/qmuiteam/qmui/c/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;,
        Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;,
        Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;,
        Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$Mode;
    }
.end annotation


# static fields
.field private static p:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

.field protected c:I

.field protected d:I

.field private e:Lcom/qmuiteam/qmui/widget/tab/d;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/qmuiteam/qmui/widget/tab/a;

.field protected j:Lcom/qmuiteam/qmui/widget/tab/b;

.field private k:Z

.field protected l:Landroid/animation/Animator;

.field private m:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;

.field private n:Z

.field private o:Lcom/qmuiteam/qmui/layout/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->p:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_separator_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bottomSeparator"

    invoke-virtual {v0, v3, v2}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->p:La/b/g;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "topSeparator"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->p:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_tab_bg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITabSegmentStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->f:Z

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 12
    new-instance v1, Lcom/qmuiteam/qmui/layout/a;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/qmuiteam/qmui/layout/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->v(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->x(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;F)V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->t(I)V

    return-void
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->u(I)V

    return-void
.end method

.method static synthetic f(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->w(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V

    return-void
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;)Lcom/qmuiteam/qmui/widget/tab/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    return-object p0
.end method

.method static synthetic k(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    return p0
.end method

.method static synthetic l(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->h:I

    return p0
.end method

.method static synthetic m(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;)Lcom/qmuiteam/qmui/widget/tab/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    return-object p0
.end method

.method static synthetic n(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->f:Z

    return p0
.end method

.method private r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_has_indicator:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_indicator_height:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qmuiteam/qmui/R$dimen;->qmui_tab_segment_indicator_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 5
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 6
    sget v2, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_indicator_top:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 7
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_indicator_with_follow_content:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 8
    invoke-virtual {p0, p3, v0, v2, v3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->q(ZIZZ)Lcom/qmuiteam/qmui/widget/tab/d;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    .line 9
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_android_textSize:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/qmuiteam/qmui/R$dimen;->qmui_tab_segment_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 11
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 12
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_normal_text_size:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 13
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_selected_text_size:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 14
    new-instance v2, Lcom/qmuiteam/qmui/widget/tab/b;

    invoke-direct {v2, p1}, Lcom/qmuiteam/qmui/widget/tab/b;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v2, p3, v0}, Lcom/qmuiteam/qmui/widget/tab/b;->e(II)Lcom/qmuiteam/qmui/widget/tab/b;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_icon_position:I

    .line 16
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/qmuiteam/qmui/widget/tab/b;->c(I)Lcom/qmuiteam/qmui/widget/tab/b;

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->j:Lcom/qmuiteam/qmui/widget/tab/b;

    .line 17
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_mode:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    .line 18
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_space:I

    const/16 v0, 0xa

    .line 19
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 20
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->h:I

    .line 21
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_select_no_animation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->k:Z

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    new-instance p2, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    .line 24
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/4 v0, -0x1

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->p(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/a;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    return-void
.end method

.method private w(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->s:I

    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->r:I

    iget v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez v3, :cond_1

    iget p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->e(III)V

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method private x(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->s:I

    iget v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->s:I

    sub-int/2addr v0, v1

    .line 3
    iget v2, p2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->r:I

    iget v3, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->r:I

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float v0, v0, p3

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v3

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 4
    iget v2, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez v2, :cond_1

    iget p1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, v2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    :goto_0
    iget v2, p2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->j:I

    if-nez v2, :cond_2

    iget p2, p2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;->h:I

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p2

    .line 7
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    invoke-virtual {p2, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/tab/d;->e(III)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method A(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->k:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->D(IZZ)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->m:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->r(I)V

    :cond_1
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/d;->f()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public D(IZZ)V
    .locals 15

    move-object v7, p0

    move/from16 v6, p1

    .line 1
    iget-boolean v0, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    .line 3
    iget-object v1, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/d;->j()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 5
    iget-object v1, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/d;->m()V

    .line 6
    iget-object v1, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object v1

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v6, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    iget-object v2, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 9
    :cond_3
    iget v2, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    if-ne v2, v6, :cond_5

    if-eqz p3, :cond_4

    .line 10
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->s(I)V

    .line 11
    :cond_4
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    .line 12
    iget-object v0, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 13
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-le v2, v3, :cond_6

    const-string v2, "QMUIBasicTabSegment"

    const-string v3, "selectTab: current selected index is bigger than views size."

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput v4, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    .line 16
    :cond_6
    iget v9, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v9, v4, :cond_7

    .line 17
    iget-object v3, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v3, v6}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 18
    invoke-direct {p0, v3, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->w(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V

    .line 19
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 20
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->t(I)V

    .line 21
    iput v6, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    .line 22
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    return-void

    .line 23
    :cond_7
    iget-object v3, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v3, v9}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 24
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    .line 25
    iget-object v3, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v3, v6}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 26
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/4 v3, 0x2

    if-eqz p2, :cond_c

    .line 27
    invoke-direct {p0, v9}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->u(I)V

    .line 28
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->t(I)V

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v11, v4}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 30
    invoke-virtual {v12, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 31
    iget v2, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    if-nez v2, :cond_b

    .line 32
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    .line 34
    iget-object v10, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    .line 35
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    .line 36
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    .line 37
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v13

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    .line 38
    iget-object v14, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v14}, Lcom/qmuiteam/qmui/widget/d;->j()I

    move-result v14

    sub-int/2addr v10, v4

    add-int/2addr v10, v13

    if-le v6, v9, :cond_9

    sub-int/2addr v14, v3

    if-lt v6, v14, :cond_8

    sub-int/2addr v10, v2

    .line 39
    invoke-virtual {p0, v10, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_8
    add-int/lit8 v9, v6, 0x1

    .line 40
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    sub-int/2addr v4, v1

    sub-int/2addr v4, v12

    iget v3, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->h:I

    sub-int/2addr v4, v3

    sub-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v12

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_b

    sub-int/2addr v3, v2

    .line 42
    invoke-virtual {p0, v3, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_9
    if-gt v6, v0, :cond_a

    neg-int v1, v2

    .line 43
    invoke-virtual {p0, v1, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_a
    add-int/lit8 v3, v6, -0x1

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v11, v1

    .line 45
    iget v1, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->h:I

    sub-int/2addr v11, v1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v1, v2, :cond_b

    sub-int/2addr v1, v2

    .line 46
    invoke-virtual {p0, v1, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 47
    :cond_b
    :goto_0
    iput v6, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    .line 48
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    .line 49
    invoke-direct {p0, v5, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->w(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V

    return-void

    :cond_c
    new-array v0, v3, [F

    .line 50
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 51
    sget-object v0, Lcom/qmuiteam/qmui/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    new-instance v14, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    new-instance v14, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;

    move-object v0, v14

    move/from16 v4, p1

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;IILcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 54
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    return-void

    .line 57
    :cond_d
    :goto_1
    iput v6, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    .line 58
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    return-void

    .line 59
    :cond_e
    :goto_2
    iput-boolean v8, v7, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public E(IF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->n:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    neg-float p2, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 5
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v3, v0}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 8
    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    .line 10
    invoke-direct {p0, v2, v3, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->x(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITab;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;La/b/g;)V
    .locals 2
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
    invoke-virtual {p1, p0, p3, p4}, Lcom/qmuiteam/qmui/c/g;->f(Landroid/view/View;Landroid/content/res/Resources$Theme;La/b/g;)V

    .line 2
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    if-eqz p4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/d;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/widget/tab/d;->b(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->e(I)V

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->g(I)V

    return-void
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->p:La/b/g;

    return-object v0
.end method

.method public getHideRadiusSide()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->r()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->u()I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->w()F

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->x()I

    move-result v0

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->y()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/d;->j()I

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->i(I)V

    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->j(I)V

    return-void
.end method

.method public o(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/d;->d(Ljava/lang/Object;)Lcom/qmuiteam/qmui/widget/d;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/a;->p(Landroid/graphics/Canvas;II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->o(Landroid/graphics/Canvas;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    const/4 p4, 0x0

    if-le p2, p3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p5

    if-ge p3, p5, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    .line 6
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected p(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/tab/a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected q(ZIZZ)Lcom/qmuiteam/qmui/widget/tab/d;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/tab/d;

    invoke-direct {p1, p2, p3, p4}, Lcom/qmuiteam/qmui/widget/tab/d;-><init>(IZZ)V

    return-object p1
.end method

.method public removeOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->H(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->I(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDefaultTabIconPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->j:Lcom/qmuiteam/qmui/widget/tab/b;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/b;->c(I)Lcom/qmuiteam/qmui/widget/tab/b;

    return-void
.end method

.method public setDefaultTextSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->j:Lcom/qmuiteam/qmui/widget/tab/b;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/tab/b;->e(II)Lcom/qmuiteam/qmui/widget/tab/b;

    return-void
.end method

.method public setHideIndicatorWhenTabCountLessTwo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->f:Z

    return-void
.end method

.method public setHideRadiusSide(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->J(I)V

    return-void
.end method

.method public setIndicator(Lcom/qmuiteam/qmui/widget/tab/d;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/tab/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->e:Lcom/qmuiteam/qmui/widget/tab/d;

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setItemSpaceInScrollMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->h:I

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->K(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->g:I

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->j:Lcom/qmuiteam/qmui/widget/tab/b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/b;->b(I)Lcom/qmuiteam/qmui/widget/tab/b;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnTabClickListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->m:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$d;

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->L(I)V

    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->M(Z)V

    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->N(IIII)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->O(I)V

    return-void
.end method

.method public setRadius(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/layout/a;->P(II)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/a;->Q(IIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->R(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/a;->S(IIIIF)V

    return-void
.end method

.method public setRightDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->T(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setSelectNoAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->k:Z

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->U(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->V(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->X(I)V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->Y(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->Z(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->a0()V

    return-void
.end method

.method protected y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->i:Lcom/qmuiteam/qmui/widget/tab/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/d;->m()V

    return-void
.end method
