.class public Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
.source "BottomSheetListItemView.java"


# instance fields
.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

.field private f:Landroidx/appcompat/widget/AppCompatImageView;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f040426

    .line 3
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040353

    .line 4
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 8
    invoke-static {p0, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 9
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 10
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 14
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 15
    new-instance v0, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    const-string v3, "textColor"

    const v4, 0x7f040427

    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 17
    iget-object v3, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v4, 0x7f040350

    invoke-static {v3, v4}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 18
    iget-object v3, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-static {v3, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/i/a;)V

    .line 19
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 20
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    const v3, 0x7f040429

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 22
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 24
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    if-eqz p2, :cond_0

    .line 25
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const v3, 0x7f040428

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/c/h;->c(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/c/h;->d()V

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    .line 32
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 33
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 34
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 35
    iget-object v6, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 36
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 37
    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    if-eqz p3, :cond_1

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 38
    :goto_0
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 39
    iget-object v6, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    const v5, 0x7f04034d

    .line 40
    invoke-static {p1, v5}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v5

    .line 41
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 42
    iput v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 43
    iput v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 44
    iget-object v5, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 45
    iput v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 46
    iput v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    if-eqz p3, :cond_3

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 47
    :goto_1
    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 48
    iget-object v5, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :goto_2
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_4

    .line 50
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    iput p2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    goto :goto_3

    .line 51
    :cond_4
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    iput p2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 52
    :goto_3
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    iput p2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 53
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 54
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 55
    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    if-eqz p3, :cond_5

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    .line 56
    :goto_4
    iput p2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    const p2, 0x7f04034c

    .line 57
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    iput p2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 58
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 59
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f04034f

    .line 60
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    .line 61
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 62
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    iput p2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 63
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 64
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 65
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 66
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 67
    :goto_5
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    const p2, 0x7f040351

    .line 68
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 69
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f04034b

    .line 70
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/dialog/list/c;Z)V
    .locals 6
    .param p1    # Lcom/ifengyu/intercom/lite/dialog/list/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v2, 0x8

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 3
    iget v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->d:I

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iget v5, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->d:I

    .line 7
    invoke-static {p0, v5}, Lcom/qmuiteam/qmui/c/e;->c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 11
    iget v5, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->b:I

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->b:I

    invoke-static {v1, v5}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v5, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->c:I

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v3}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v5, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->i:Landroid/graphics/Typeface;

    if-eqz v1, :cond_5

    .line 23
    iget-object v5, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    :cond_5
    iget v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->e:I

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    .line 26
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget v1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->e:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v3}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->e:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    iget-boolean p1, p1, Lcom/ifengyu/intercom/lite/dialog/list/c;->h:Z

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    .line 32
    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const p1, 0x7f0600c3

    goto :goto_3

    :cond_b
    const p1, 0x7f06002b

    .line 34
    :goto_3
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p1

    .line 35
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->d:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/BottomSheetListItemView;->g:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->onMeasure(II)V

    return-void
.end method
