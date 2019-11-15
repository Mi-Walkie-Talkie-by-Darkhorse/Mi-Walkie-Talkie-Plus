.class public Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;
.super Landroid/support/design/widget/FloatingActionButton$Behavior;
.source "ScrollAwareFABBehaviorDefault.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;IIII)V
    .locals 1

    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    if-lez p5, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;)V

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p5, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;IIII)V

    return-void
.end method

.method public synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
