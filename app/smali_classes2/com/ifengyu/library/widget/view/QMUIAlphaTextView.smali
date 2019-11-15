.class public Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;
.super Landroid/widget/TextView;
.source "QMUIAlphaTextView.java"


# instance fields
.field private a:Lcom/ifengyu/library/widget/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getAlphaViewHelper()Lcom/ifengyu/library/widget/view/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->a:Lcom/ifengyu/library/widget/view/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/library/widget/view/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->a:Lcom/ifengyu/library/widget/view/a;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->a:Lcom/ifengyu/library/widget/view/a;

    return-object v0
.end method


# virtual methods
.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/ifengyu/library/widget/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/a;->b(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/ifengyu/library/widget/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/a;->a(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/ifengyu/library/widget/view/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/library/widget/view/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->getAlphaViewHelper()Lcom/ifengyu/library/widget/view/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/library/widget/view/a;->a(Landroid/view/View;Z)V

    return-void
.end method
