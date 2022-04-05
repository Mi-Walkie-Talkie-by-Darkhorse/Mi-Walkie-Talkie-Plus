.class public Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;
.super Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkItemView"
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;


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
    .locals 8

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    sget v0, Lcom/ifengyu/library/R$drawable;->checkbox_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroidx/legacy/widget/Space;

    iget-object v6, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    iget-object v5, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p3}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setDescText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setDescText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
