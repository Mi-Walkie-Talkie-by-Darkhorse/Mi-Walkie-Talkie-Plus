.class public Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.source "ScrollAwareBehavior.java"


# static fields
.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/e/a/a/b;

    invoke-direct {v0}, La/e/a/a/b;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a:Z

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 10
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)Landroidx/core/view/a0;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->b(F)Landroidx/core/view/a0;

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->c(F)Landroidx/core/view/a0;

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(F)Landroidx/core/view/a0;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b:Landroid/view/animation/Interpolator;

    .line 11
    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroid/view/animation/Interpolator;)Landroidx/core/view/a0;

    invoke-virtual {p1}, Landroidx/core/view/a0;->d()Landroidx/core/view/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    .line 12
    invoke-virtual {p1}, Landroidx/core/view/a0;->c()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010024

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a:Z

    return p1
.end method

.method private b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)Landroidx/core/view/a0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->b(F)Landroidx/core/view/a0;

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->c(F)Landroidx/core/view/a0;

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(F)Landroidx/core/view/a0;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroid/view/animation/Interpolator;)Landroidx/core/view/a0;

    invoke-virtual {p1}, Landroidx/core/view/a0;->d()Landroidx/core/view/a0;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/a0;->c()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xc8

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;-><init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;IIII)V
    .locals 0

    .line 3
    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    if-lez p5, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    goto :goto_0

    :cond_0
    if-gez p5, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 2
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

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

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual/range {p0 .. p7}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
