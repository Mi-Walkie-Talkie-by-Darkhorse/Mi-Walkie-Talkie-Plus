.class public Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
.super Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;


# instance fields
.field private e:Lcom/qmuiteam/qmui/alpha/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->e:Lcom/qmuiteam/qmui/alpha/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/alpha/a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/alpha/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->e:Lcom/qmuiteam/qmui/alpha/a;

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->e:Lcom/qmuiteam/qmui/alpha/a;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->a(Z)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Landroid/view/View;Z)V

    return-void
.end method
