.class public Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;
.super Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.source "DialogMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextItemView"
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    const/16 v5, 0xf

    const/4 v4, -0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/Space;->setId(I)V

    invoke-virtual {p0, v1, v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/support/v4/widget/Space;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->setExtraText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public setExtraText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtraTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
