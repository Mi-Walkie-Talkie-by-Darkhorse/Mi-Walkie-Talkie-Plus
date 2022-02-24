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
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/ifengyu/library/R$drawable;->checkbox_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 8
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    .line 11
    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 12
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 14
    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 17
    new-instance v5, Landroidx/legacy/widget/Space;

    iget-object v6, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, -0x1

    .line 19
    invoke-virtual {v6, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    invoke-static {}, Lcom/ifengyu/library/a/m;->b()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    .line 22
    invoke-virtual {p0, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 24
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    .line 25
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 26
    iget-object v5, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 29
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-direct {p0, p3}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setDescText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    iget-object p3, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :goto_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setDescText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
