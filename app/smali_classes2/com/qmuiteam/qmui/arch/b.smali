.class public abstract Lcom/qmuiteam/qmui/arch/b;
.super Landroidx/fragment/app/Fragment;
.source "QMUIFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;
.implements Lcom/qmuiteam/qmui/arch/record/LatestVisitArgumentCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/b$h;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/String;

.field public static final w:Lcom/qmuiteam/qmui/arch/b$h;

.field private static final x:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:I

.field private final b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

.field private j:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Runnable;

.field private q:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;

.field private r:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

.field private s:Landroidx/activity/OnBackPressedDispatcher;

.field private t:Landroidx/activity/b;

.field private u:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/arch/b$h;

    sget v1, Lcom/qmuiteam/qmui/arch/R$anim;->slide_in_right:I

    sget v2, Lcom/qmuiteam/qmui/arch/R$anim;->slide_out_left:I

    sget v3, Lcom/qmuiteam/qmui/arch/R$anim;->slide_in_left:I

    sget v4, Lcom/qmuiteam/qmui/arch/R$anim;->slide_out_right:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/arch/b$h;-><init>(IIII)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/b;->w:Lcom/qmuiteam/qmui/arch/b$h;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/b;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/arch/b;->a:I

    .line 3
    sget-object v1, Lcom/qmuiteam/qmui/arch/b;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/arch/b;->b:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/qmuiteam/qmui/arch/b;->c:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/arch/b;->d:I

    .line 6
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b;->k:Z

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b;->m:Z

    .line 10
    new-instance v1, Lcom/qmuiteam/qmui/arch/b$a;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/arch/b$a;-><init>(Lcom/qmuiteam/qmui/arch/b;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->p:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lcom/qmuiteam/qmui/arch/b$b;

    invoke-direct {v1, p0, v0}, Lcom/qmuiteam/qmui/arch/b$b;-><init>(Lcom/qmuiteam/qmui/arch/b;Z)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->t:Landroidx/activity/b;

    .line 12
    new-instance v0, Lcom/qmuiteam/qmui/arch/b$f;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/b$f;-><init>(Lcom/qmuiteam/qmui/arch/b;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->u:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    return-void
.end method

.method static synthetic A1(Lcom/qmuiteam/qmui/arch/b;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->O1(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic B1(Lcom/qmuiteam/qmui/arch/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/arch/b;->b:I

    return p0
.end method

.method static synthetic C1(Lcom/qmuiteam/qmui/arch/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    return p0
.end method

.method static synthetic D1()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E1(Lcom/qmuiteam/qmui/arch/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/b;->k:Z

    return p1
.end method

.method static synthetic F1(Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/b;->j:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    return-object p0
.end method

.method static synthetic G1(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->j:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    return-object p1
.end method

.method static synthetic H1(Lcom/qmuiteam/qmui/arch/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic I1(Lcom/qmuiteam/qmui/arch/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/b;->h:Z

    return p1
.end method

.method private N1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->V(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private O1(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b;->m:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->g2(Landroid/view/animation/Animation;)V

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/arch/b;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QMUIFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onEnterAnimationEnd(Animation)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private P1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, p0, Lcom/qmuiteam/qmui/arch/e;

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 5
    instance-of v1, v1, Lcom/qmuiteam/qmui/arch/e;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    const-class v2, Lcom/qmuiteam/qmui/arch/annotation/LatestVisitRecord;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/d;->c(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/d;->b()V

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/qmuiteam/qmui/arch/annotation/LatestVisitRecord;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v2}, Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v2, v5, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/d;->c(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/arch/d;->g(Lcom/qmuiteam/qmui/arch/b;)V

    goto :goto_0

    .line 13
    :cond_4
    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;

    .line 14
    invoke-static {}, Lcom/qmuiteam/qmui/arch/h/b;->b()Lcom/qmuiteam/qmui/arch/h/b;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/qmuiteam/qmui/arch/h/b;->a(Ljava/lang/Class;)Lcom/qmuiteam/qmui/arch/h/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qmuiteam/qmui/arch/h/a;->getIdByFragmentClass(Ljava/lang/Class;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/d;->c(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/arch/d;->g(Lcom/qmuiteam/qmui/arch/b;)V

    :goto_0
    return-void

    .line 16
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Can not perform LatestVisitRecord, %s must be annotated by FirstFragments which contains %s"

    .line 18
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Can not perform LatestVisitRecord, %s must be annotated by LatestVisitRecord"

    .line 21
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private Q1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "popBackStack"

    .line 2
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->R1(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private R1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be invoked after onSaveInstanceState"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private V1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->r:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->A()Landroidx/lifecycle/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Landroidx/lifecycle/w;

    invoke-direct {v1, v0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->r:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    :cond_1
    return-void
.end method

.method private Z1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private a2()Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->e2()Landroid/view/View;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->g:Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_reused_layout:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->z2()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->U1()Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    move-result-object v1

    new-instance v2, Lcom/qmuiteam/qmui/arch/b$e;

    invoke-direct {v2, p0}, Lcom/qmuiteam/qmui/arch/b$e;-><init>(Lcom/qmuiteam/qmui/arch/b;)V

    .line 11
    invoke-static {v0, v1, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->H(Landroid/view/View;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->u:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->k(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->i:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    .line 13
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/arch/b;->h:Z

    if-eqz v1, :cond_3

    .line 14
    sget v1, Lcom/qmuiteam/qmui/arch/R$id;->fragment_container_view_tag:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method private c2(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->q:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->d(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 6
    instance-of v2, v1, Lcom/qmuiteam/qmui/arch/b;

    if-eqz v2, :cond_1

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/arch/b;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-direct {v2, v1}, Lcom/qmuiteam/qmui/arch/b;->c2(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic w1(Lcom/qmuiteam/qmui/arch/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/b;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method private w2(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/c;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/b;->i2()Lcom/qmuiteam/qmui/arch/b$h;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p2}, Lcom/qmuiteam/qmui/arch/c;->s0()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget v3, v0, Lcom/qmuiteam/qmui/arch/b$h;->a:I

    iget v4, v0, Lcom/qmuiteam/qmui/arch/b$h;->b:I

    iget v5, v0, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    iget v0, v0, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    .line 5
    invoke-virtual {v2, v3, v4, v5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 6
    invoke-interface {p2}, Lcom/qmuiteam/qmui/arch/c;->N0()I

    move-result p2

    invoke-virtual {v0, p2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result p1

    return p1
.end method

.method static synthetic x1(Lcom/qmuiteam/qmui/arch/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->o:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic y1(Lcom/qmuiteam/qmui/arch/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/arch/b;->a:I

    return p0
.end method

.method static synthetic z1(Lcom/qmuiteam/qmui/arch/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/arch/b;->a:I

    return p1
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected J1()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected K1(Landroid/content/Context;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->J1()I

    move-result p1

    return p1
.end method

.method protected L1()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected M1(Landroid/content/Context;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->L1()Z

    move-result p1

    return p1
.end method

.method protected S1()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->T1()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected T1()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected U1()Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->E:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    return-object v0
.end method

.method protected W1()Lcom/qmuiteam/qmui/arch/c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/qmuiteam/qmui/arch/c;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/qmuiteam/qmui/arch/c;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/qmuiteam/qmui/arch/c;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Lcom/qmuiteam/qmui/arch/c;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected X1(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->S1()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->c(I)I

    move-result p2

    invoke-virtual {p0, v1, v0, p2}, Lcom/qmuiteam/qmui/arch/b;->M1(Landroid/content/Context;II)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v2, 0x14

    invoke-static {p2, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    int-to-float p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_4

    cmpl-float p1, p5, p7

    if-ltz p1, :cond_4

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    neg-float p1, p5

    cmpl-float p1, p1, p7

    if-ltz p1, :cond_4

    return v0

    :cond_2
    const/4 p3, 0x3

    if-ne v0, p3, :cond_3

    int-to-float p1, p2

    cmpg-float p1, p4, p1

    if-gez p1, :cond_4

    cmpl-float p1, p6, p7

    if-ltz p1, :cond_4

    return v0

    :cond_3
    const/4 p3, 0x4

    if-ne v0, p3, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_4

    neg-float p1, p6

    cmpl-float p1, p1, p7

    if-ltz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public Y1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b;->k:Z

    return v0
.end method

.method public b2(Lcom/qmuiteam/qmui/arch/effect/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") not attached to Activity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->V1()V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->r:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b(Lcom/qmuiteam/qmui/arch/effect/a;)V

    return-void
.end method

.method protected d2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->s0()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->s0()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->i2()Lcom/qmuiteam/qmui/arch/b$h;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/arch/f;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, v0, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    iget v0, v0, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->m2()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    instance-of v2, v1, Lcom/qmuiteam/qmui/arch/b;

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Lcom/qmuiteam/qmui/arch/b;

    .line 11
    invoke-virtual {p0, v1, v3}, Lcom/qmuiteam/qmui/arch/b;->x2(Lcom/qmuiteam/qmui/arch/b;Z)I

    goto :goto_1

    .line 12
    :cond_2
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, v0, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    iget v0, v0, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "can not handle the result in onLastFragmentFinish"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, v0, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    iget v0, v0, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 20
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->t:Landroidx/activity/b;

    invoke-virtual {v0, v3}, Landroidx/activity/b;->setEnabled(Z)V

    .line 21
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->s:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->t:Landroidx/activity/b;

    invoke-virtual {v0, v2}, Landroidx/activity/b;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method protected abstract e2()Landroid/view/View;
.end method

.method protected f2()V
    .locals 0

    return-void
.end method

.method protected g2(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/arch/b;->m:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/b;->m:Z

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "don\'t call #onEnterAnimationEnd() directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected h2(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    return-void
.end method

.method public i2()Lcom/qmuiteam/qmui/arch/b$h;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/b;->w:Lcom/qmuiteam/qmui/arch/b$h;

    return-object v0
.end method

.method protected j2(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public k2(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l2(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m2()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected n2(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected o2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->s:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->s:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->t:Landroidx/activity/b;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/j;Landroidx/activity/b;)V

    .line 4
    new-instance p1, Lcom/qmuiteam/qmui/arch/b$c;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/arch/b$c;-><init>(Lcom/qmuiteam/qmui/arch/b;)V

    invoke-virtual {p0, p0, p1}, Lcom/qmuiteam/qmui/arch/b;->r2(Landroidx/lifecycle/j;Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Lcom/qmuiteam/qmui/arch/effect/c;

    return-void
.end method

.method public onCollectLatestVisitArgument(Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/qmuiteam/qmui/arch/R$integer;->qmui_anim_duration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_3

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 8
    new-instance p1, Lcom/qmuiteam/qmui/arch/b$g;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/arch/b$g;-><init>(Lcom/qmuiteam/qmui/arch/b;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->h2(Landroid/view/animation/Animation;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->O1(Landroid/view/animation/Animation;)V

    :goto_2
    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->a2()Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->N1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->N1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    const-string p2, "can not use cache swipeBackLayout, this may happen if invoke popBackStack duration fragment transition"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->o()V

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->a2()Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    .line 12
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->g:Landroid/view/View;

    sget p3, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_reused_layout:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    :goto_0
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/arch/b;->h:Z

    if-nez p2, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->getContentView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    .line 15
    sget p2, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_swipe_layout_in_back:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :cond_3
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lcom/qmuiteam/qmui/util/l;->d(Landroid/view/Window;)V

    :cond_4
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->i:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;->remove()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->j:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->c()V

    .line 6
    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->j:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->f:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    .line 8
    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->g:Landroid/view/View;

    .line 9
    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    .line 10
    iput-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->P1()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    sget p2, Lcom/qmuiteam/qmui/arch/R$id;->qmui_arch_reused_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->n2(Landroid/view/View;)V

    .line 4
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;-><init>(Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b;->q:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->d(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->q:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/i;)V

    return-void
.end method

.method protected p2(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qmuiteam/qmui/arch/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->Q1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected q2(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qmuiteam/qmui/arch/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->Q1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public r2(Landroidx/lifecycle/j;Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Lcom/qmuiteam/qmui/arch/effect/c;
    .locals 1
    .param p1    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">(",
            "Landroidx/lifecycle/j;",
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler<",
            "TT;>;)",
            "Lcom/qmuiteam/qmui/arch/effect/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->V1()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b;->r:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->c(Landroidx/lifecycle/j;Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Lcom/qmuiteam/qmui/arch/effect/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") not attached to Activity."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected s2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->c2(Z)V

    return-void
.end method

.method public t2(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/arch/g;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/qmuiteam/qmui/arch/b;->l:I

    if-eqz p2, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public u2(ILandroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/arch/b;->d:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/qmuiteam/qmui/arch/effect/b;

    iget v2, p0, Lcom/qmuiteam/qmui/arch/b;->c:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/qmuiteam/qmui/arch/effect/b;-><init>(IIILandroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/arch/b;->b2(Lcom/qmuiteam/qmui/arch/effect/a;)V

    return-void
.end method

.method public v2(Lcom/qmuiteam/qmui/arch/b;)I
    .locals 2

    const-string v0, "startFragment"

    .line 1
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->R1(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    const-string v0, "Can not find the fragment container provider."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/arch/b;->w2(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/c;)I

    move-result p1

    return p1
.end method

.method protected x2(Lcom/qmuiteam/qmui/arch/b;Z)I
    .locals 10

    const-string v0, "startFragmentAndDestroyCurrent"

    .line 1
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->R1(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    const-string p2, "Can not find the fragment container provider."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/b;->i2()Lcom/qmuiteam/qmui/arch/b$h;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->s0()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    iget v6, v2, Lcom/qmuiteam/qmui/arch/b$h;->a:I

    iget v7, v2, Lcom/qmuiteam/qmui/arch/b$h;->b:I

    iget v8, v2, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    iget v9, v2, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    .line 8
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 9
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/c;->N0()I

    move-result v0

    invoke-virtual {v5, v0, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    .line 11
    new-instance v3, Lcom/qmuiteam/qmui/arch/b$d;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/qmuiteam/qmui/arch/b$d;-><init>(Lcom/qmuiteam/qmui/arch/b;ZLcom/qmuiteam/qmui/arch/b$h;Lcom/qmuiteam/qmui/arch/b;)V

    invoke-static {v4, v1, v3}, Lcom/qmuiteam/qmui/arch/g;->f(Landroidx/fragment/app/FragmentManager;ILcom/qmuiteam/qmui/arch/g$a;)V

    return v0
.end method

.method public y2(Lcom/qmuiteam/qmui/arch/b;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "startFragmentForResult"

    .line 1
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->R1(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/qmuiteam/qmui/arch/b;->v:Ljava/lang/String;

    const-string p2, "Can not find the fragment container provider."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iput p2, p0, Lcom/qmuiteam/qmui/arch/b;->a:I

    .line 5
    iget v1, p0, Lcom/qmuiteam/qmui/arch/b;->b:I

    iput v1, p1, Lcom/qmuiteam/qmui/arch/b;->c:I

    .line 6
    iput p2, p1, Lcom/qmuiteam/qmui/arch/b;->d:I

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/arch/b;->w2(Lcom/qmuiteam/qmui/arch/b;Lcom/qmuiteam/qmui/arch/c;)I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "requestCode can not be 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected z2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
