.class Lcom/qmuiteam/qmui/arch/b$e;
.super Ljava/lang/Object;
.source "QMUIFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b;->a2()Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v1}, Lcom/qmuiteam/qmui/arch/b;->C1(Lcom/qmuiteam/qmui/arch/b;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/arch/b;->W1()Lcom/qmuiteam/qmui/arch/c;

    move-result-object v1

    if-nez v1, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/c;->s0()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4
    iget-object v4, v0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    return v3

    .line 6
    :cond_3
    iget-object v4, v0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_7

    .line 8
    instance-of v5, v4, Landroidx/viewpager/widget/ViewPager;

    if-nez v5, :cond_6

    instance-of v5, v4, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_6
    :goto_1
    return v3

    .line 10
    :cond_7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-gt v1, v2, :cond_8

    .line 11
    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/arch/f;->a()Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 12
    :cond_8
    iget-object v4, v0, Lcom/qmuiteam/qmui/arch/b$e;->a:Lcom/qmuiteam/qmui/arch/b;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/qmuiteam/qmui/arch/b;->X1(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I

    move-result v1

    return v1

    :cond_9
    :goto_2
    return v3
.end method
