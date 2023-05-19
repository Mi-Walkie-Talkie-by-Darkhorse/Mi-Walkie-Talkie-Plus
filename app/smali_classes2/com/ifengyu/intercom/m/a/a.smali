.class public abstract Lcom/ifengyu/intercom/m/a/a;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "BaseQMUIDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/m/a/a;",
        ">",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/m/a/a;->t:I

    return-void
.end method

.method private D(Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/m/a/a;->t:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/m/a/a;->t:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/m/a/a;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/m/a/a;->t:I

    .line 4
    instance-of v1, v0, Lcom/qmuiteam/qmui/layout/QMUIButton;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->h(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMinWidth(I)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMaxWidth(I)V

    return-void
.end method

.method protected j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x51

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f120360

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->getDialogView()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    move-result-object p1

    const p2, 0x7f090388

    .line 5
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;->D(Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e()I

    move-result v4

    if-ne v4, v2, :cond_1

    const v1, 0x7f080069

    .line 10
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f08006a

    .line 12
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 14
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p3, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method protected n(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04042c

    .line 2
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040393

    .line 3
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->setRadius(II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->A(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    return-object v0
.end method
