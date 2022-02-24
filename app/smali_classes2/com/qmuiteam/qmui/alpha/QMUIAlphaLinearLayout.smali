.class public Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "QMUIAlphaLinearLayout.java"


# instance fields
.field private a:Lcom/qmuiteam/qmui/alpha/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->a:Lcom/qmuiteam/qmui/alpha/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/alpha/a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/alpha/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->a:Lcom/qmuiteam/qmui/alpha/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->a:Lcom/qmuiteam/qmui/alpha/a;

    return-object v0
.end method


# virtual methods
.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Landroid/view/View;Z)V

    return-void
.end method
