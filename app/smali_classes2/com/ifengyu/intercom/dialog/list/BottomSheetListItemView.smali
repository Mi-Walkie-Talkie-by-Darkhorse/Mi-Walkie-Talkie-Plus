.class public Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;
.source "BottomSheetListItemView.java"


# instance fields
.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

.field private g:Landroidx/appcompat/widget/AppCompatImageView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f040417

    .line 3
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040345

    .line 4
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v1, 0x10

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 7
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    .line 8
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 9
    invoke-static {p0, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 10
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    .line 11
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 15
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 16
    new-instance v0, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    const-string v2, "textColor"

    const v3, 0x7f040418

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 18
    iget-object v2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v3, 0x7f040342

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 19
    iget-object v2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-static {v2, v0}, Lcom/qmuiteam/qmui/c/e;->f(Landroid/view/View;Lcom/qmuiteam/qmui/c/i/a;)V

    .line 20
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    .line 21
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 22
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 23
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    const v2, 0x7f04041a

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 25
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 27
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    if-eqz p2, :cond_0

    .line 28
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f040419

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->v(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->q()V

    const/16 v0, 0x14

    const/4 v1, -0x2

    if-eqz p2, :cond_1

    .line 35
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x6

    .line 37
    iget-object v3, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x8

    .line 38
    iget-object v3, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f04033f

    .line 40
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v2

    .line 41
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    const v3, 0x7f04033e

    const/16 v4, 0x11

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 46
    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 49
    :cond_4
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 51
    :goto_1
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f040341

    .line 52
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    .line 53
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x15

    .line 54
    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    invoke-virtual {p3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const p2, 0x7f040343

    .line 56
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 57
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p0, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x3

    .line 59
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p3, 0x12

    .line 60
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    iget-object p3, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f04033d

    .line 62
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->h:I

    return-void
.end method


# virtual methods
.method public d(Lcom/ifengyu/intercom/dialog/list/c;Z)V
    .locals 6
    .param p1    # Lcom/ifengyu/intercom/dialog/list/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, ""

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 3
    iget v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->d:I

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iget v5, p1, Lcom/ifengyu/intercom/dialog/list/c;->d:I

    .line 7
    invoke-static {p0, v5}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 11
    iget v5, p1, Lcom/ifengyu/intercom/dialog/list/c;->b:I

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p1, Lcom/ifengyu/intercom/dialog/list/c;->b:I

    invoke-static {v1, v5}, Landroidx/core/content/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v5, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->c:I

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->D(I)Lcom/qmuiteam/qmui/c/h;

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/c/e;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v5, p1, Lcom/ifengyu/intercom/dialog/list/c;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->j:Landroid/graphics/Typeface;

    if-eqz v1, :cond_5

    .line 23
    iget-object v5, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    :cond_5
    iget v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->e:I

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->w(I)Lcom/qmuiteam/qmui/c/h;

    .line 26
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->e:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/c/e;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 31
    iget-object v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ifengyu/intercom/dialog/list/c;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    const v1, 0x7f060030

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->e:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 36
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->f:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    iget-boolean p1, p1, Lcom/ifengyu/intercom/dialog/list/c;->i:Z

    if-eqz p1, :cond_a

    const/4 v3, 0x0

    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v4, 0x4

    .line 39
    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_c
    iget-object p1, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->g:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    const p1, 0x7f06018b

    goto :goto_4

    :cond_d
    const p1, 0x7f060029

    .line 41
    :goto_4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/ifengyu/intercom/dialog/list/BottomSheetListItemView;->h:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->onMeasure(II)V

    return-void
.end method
