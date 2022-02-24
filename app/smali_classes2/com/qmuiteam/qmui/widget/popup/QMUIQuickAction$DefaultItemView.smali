.class public Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;
.super Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$ItemView;
.source "QMUIQuickAction.java"


# instance fields
.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_quick_action_item_padding_hor:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_quick_action_item_padding_ver:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    .line 5
    invoke-virtual {p0, p2, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 8
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->d:Landroid/widget/TextView;

    .line 9
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 10
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->d:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->d:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaConstraintLayout;->setChangeAlphaWhenPress(Z)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaConstraintLayout;->setChangeAlphaWhenDisable(Z)V

    .line 14
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 15
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 16
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 17
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 18
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    const/4 v2, 0x2

    .line 19
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 20
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 22
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 23
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 24
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 25
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 26
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_quick_action_item_middle_space:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 28
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 29
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIQuickAction$DefaultItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
