.class Lcom/qmuiteam/qmui/arch/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/arch/b;

.field final synthetic b:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->a:Lcom/qmuiteam/qmui/arch/b;

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/b$f;->a:Lcom/qmuiteam/qmui/arch/b;

    return-object p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/b$f;Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/b;
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->a:Lcom/qmuiteam/qmui/arch/b;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/arch/b$f$c;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/b$f$c;-><init>(Lcom/qmuiteam/qmui/arch/b$f;)V

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;La/a/a/c/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->a:Lcom/qmuiteam/qmui/arch/b;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;La/a/a/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "La/a/a/c/a<",
            "Landroid/view/View;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_layout_in_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "swipe_back_view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, La/a/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget v0, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_layout_in_back:I

    const-string v1, "swipe_back_view"

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    instance-of v5, v4, Lcom/qmuiteam/qmui/arch/b;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/qmuiteam/qmui/arch/b;

    :try_start_0
    const-class v6, Landroidx/fragment/app/Fragment;

    const-string v7, "mContainerId"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_0

    if-eq v2, v6, :cond_1

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    move v2, v6

    :cond_1
    if-eqz v3, :cond_0

    invoke-static {v5, v7}, Lcom/qmuiteam/qmui/arch/b;->c(Lcom/qmuiteam/qmui/arch/b;Z)Z

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v4, v6, v3, v0}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v1}, Lcom/qmuiteam/qmui/arch/b;->c(Lcom/qmuiteam/qmui/arch/b;Z)Z

    invoke-direct {p0, v3, v6}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-direct {p0, v4, v6}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/b$f;Landroid/view/ViewGroup;La/a/a/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;La/a/a/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/b$f;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/b$f;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/qmuiteam/qmui/arch/b;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeListener:onEdgeTouch:onScrollOverThreshold"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(IF)V
    .locals 4

    invoke-static {}, Lcom/qmuiteam/qmui/arch/b;->w()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwipeListener:onScrollStateChange: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ;scrollPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/b;->m()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/arch/b;->b(Lcom/qmuiteam/qmui/arch/b;Z)Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    cmpg-float p1, p2, v3

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    goto :goto_2

    :cond_2
    cmpl-float p1, p2, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/b;->t()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_exit_still:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_exit:I

    :goto_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_enter:I

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    cmpg-float p1, p2, v3

    if-gtz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_6
    cmpl-float p1, p2, v2

    if-ltz p1, :cond_7

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;)V

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->f()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, -0x1

    new-instance v0, Lcom/qmuiteam/qmui/arch/b$f$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/b$f$a;-><init>(Lcom/qmuiteam/qmui/arch/b$f;)V

    invoke-static {p1, p2, v0}, Lcom/qmuiteam/qmui/arch/g;->a(Landroidx/fragment/app/FragmentManager;ILcom/qmuiteam/qmui/arch/g$a;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/b;->t()V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(II)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    invoke-static {}, Lcom/qmuiteam/qmui/arch/b;->w()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwipeListener:onSwipeBackBegin: moveEdge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/b;->m()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v2}, Lcom/qmuiteam/qmui/arch/b;->g(Lcom/qmuiteam/qmui/arch/b;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/qmuiteam/qmui/util/f;->a(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/arch/b;->q()V

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->f()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-le v2, v3, :cond_1

    new-instance v2, Lcom/qmuiteam/qmui/arch/b$f$b;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/qmuiteam/qmui/arch/b$f$b;-><init>(Lcom/qmuiteam/qmui/arch/b$f;Landroidx/fragment/app/FragmentContainerView;II)V

    invoke-static {v0, v4, v2}, Lcom/qmuiteam/qmui/arch/g;->a(Landroidx/fragment/app/FragmentManager;ILcom/qmuiteam/qmui/arch/g$a;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/arch/f;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    invoke-static {v4, v3}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    new-instance v6, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    iget-object v7, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v5}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v3}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/arch/b;->u()Z

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a(Landroid/app/Activity;Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, p1, p2}, Lcom/qmuiteam/qmui/arch/b;->a(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(IIF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/arch/b;->m()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/c;->d()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/qmuiteam/qmui/arch/b;->a(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p3

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_layout_in_back:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "swipe_back_view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, p2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;II)V

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {p3}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {p3}, Lcom/qmuiteam/qmui/arch/b;->f(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;II)V

    :cond_3
    :goto_1
    return-void
.end method
