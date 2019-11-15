.class public Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;
.super Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.source "DialogMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkItemView"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9

    const/high16 v8, 0x41800000    # 16.0f

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, -0x2

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/ifengyu/library/R$drawable;->checkbox_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/support/v4/widget/Space;

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, -0x1

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/Space;->setId(I)V

    invoke-virtual {p0, v2, v3}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/support/v4/widget/Space;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p3}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setDescText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setDescText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
