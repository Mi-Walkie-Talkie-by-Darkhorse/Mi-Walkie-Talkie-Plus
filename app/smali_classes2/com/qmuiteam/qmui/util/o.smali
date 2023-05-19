.class public Lcom/qmuiteam/qmui/util/o;
.super Ljava/lang/Object;
.source "QMUIWindowInsetHelper.java"


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qmuiteam/qmui/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/util/o;->d:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/util/o;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/util/o;->b:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x64

    invoke-static {p2, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/util/o;->a:I

    .line 5
    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->x()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/o;->m(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/qmuiteam/qmui/util/o$a;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/util/o$a;-><init>(Lcom/qmuiteam/qmui/util/o;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->H0(Landroid/view/View;Landroidx/core/view/q;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/util/o;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/util/o;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/util/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/a;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/a;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/util/o;->j(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k(Landroid/view/View;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/qmuiteam/qmui/widget/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 2
    :cond_2
    sget-object v0, Lcom/qmuiteam/qmui/util/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 3
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public static l(Landroid/view/View;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/o;->k(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private m(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/util/o$b;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/util/o$b;-><init>(Lcom/qmuiteam/qmui/util/o;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private n(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/qmuiteam/qmui/util/DoNotInterceptKeyboardInset;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/util/o;->d(Landroid/view/View;Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/util/o;->e(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-nez p1, :cond_0

    .line 3
    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-nez p1, :cond_1

    .line 5
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    :cond_1
    :goto_0
    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne p1, v0, :cond_3

    .line 7
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-nez p1, :cond_2

    .line 8
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-nez p1, :cond_3

    .line 10
    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    return-void
.end method

.method public e(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 1
    instance-of p1, p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 2
    move-object p1, p3

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    const/16 p1, 0x33

    .line 3
    :cond_1
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4

    and-int/lit8 v1, p1, 0x7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 5
    :cond_3
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 6
    :cond_4
    :goto_1
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v0, :cond_7

    and-int/lit8 p1, p1, 0x70

    const/16 p3, 0x30

    if-eq p1, p3, :cond_6

    const/16 p3, 0x50

    if-eq p1, p3, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    iput v2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 8
    :cond_6
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    :cond_7
    :goto_2
    return-void
.end method

.method public f(Landroid/view/ViewGroup;Landroid/view/WindowInsets;)Z
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/o;->j(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p2

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iget v2, p0, Lcom/qmuiteam/qmui/util/o;->a:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/o;->n(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    .line 11
    :goto_0
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    sget-object v2, Lcom/qmuiteam/qmui/util/o;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_2

    .line 12
    :cond_3
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    invoke-interface {v0, v3}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    .line 15
    :goto_1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 16
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 18
    invoke-static {v5}, Lcom/qmuiteam/qmui/util/o;->l(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_6

    .line 19
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    .line 21
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v8

    .line 22
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v9

    if-eqz v0, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v10

    :goto_4
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    invoke-virtual {p0, v5, v6}, Lcom/qmuiteam/qmui/util/o;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    invoke-virtual {p2, v6}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v5

    if-nez v4, :cond_8

    .line 27
    invoke-virtual {v5}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v4, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_9
    iget p1, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/qmuiteam/qmui/util/o;->c:I

    return v4
.end method

.method public g(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/qmuiteam/qmui/util/o;->a:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/o;->n(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    .line 5
    :goto_0
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    sget-object v1, Lcom/qmuiteam/qmui/util/o;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 6
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 7
    :cond_1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 8
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/qmuiteam/qmui/util/o;->l(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    invoke-virtual {p0, v3, v4}, Lcom/qmuiteam/qmui/util/o;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 16
    invoke-static {v3}, Lcom/qmuiteam/qmui/util/o;->k(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 17
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 18
    :cond_4
    instance-of v5, v3, Lcom/qmuiteam/qmui/widget/c;

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 19
    check-cast v3, Lcom/qmuiteam/qmui/widget/c;

    invoke-interface {v3, v4}, Lcom/qmuiteam/qmui/widget/c;->f(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 20
    :cond_7
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v4}, Lcom/qmuiteam/qmui/util/o;->g(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

.method public h(Landroid/view/ViewGroup;Ljava/lang/Object;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/util/o;->f(Landroid/view/ViewGroup;Landroid/view/WindowInsets;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast p2, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/util/o;->i(Landroid/view/ViewGroup;Landroidx/core/view/WindowInsetsCompat;)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/view/ViewGroup;Landroidx/core/view/WindowInsetsCompat;)Z
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/util/o;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/o;->n(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    .line 6
    :goto_0
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    sget-object v1, Lcom/qmuiteam/qmui/util/o;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_2

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/b;

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/widget/b;

    invoke-interface {v0, v3}, Lcom/qmuiteam/qmui/widget/b;->a(I)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/l;->h(Landroid/view/View;I)V

    .line 10
    :goto_1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_window_inset_keyboard_area_consumer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 11
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lcom/qmuiteam/qmui/util/o;->l(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_6

    .line 14
    :cond_3
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->g()I

    move-result v6

    .line 15
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v7

    .line 16
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/h;->y(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 18
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/h;->m(Landroid/view/View;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 19
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/h;->o(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 20
    :cond_4
    new-instance v8, Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    move-result v9

    if-eqz v0, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    .line 22
    :cond_5
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v10

    :goto_4
    invoke-direct {v8, v6, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 23
    invoke-virtual {p0, v5, v8}, Lcom/qmuiteam/qmui/util/o;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 24
    invoke-virtual {p2, v8}, Landroidx/core/view/WindowInsetsCompat;->o(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->m()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v4, 0x1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return v4
.end method
