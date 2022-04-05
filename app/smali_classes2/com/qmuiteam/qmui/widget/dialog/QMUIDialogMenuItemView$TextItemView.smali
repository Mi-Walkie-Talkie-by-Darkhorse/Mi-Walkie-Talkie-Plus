.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextItemView"
.end annotation


# instance fields
.field protected f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColorAttr(I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->f:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-static {v0}, Lcom/qmuiteam/qmui/c/h;->a(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method
