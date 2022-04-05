.class public Lcom/ifengyu/intercom/lite/widget/EmptyView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field protected d:Landroid/widget/Button;

.field private e:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->e()V

    sget-object p3, Lcom/ifengyu/intercom/R$styleable;->EmptyView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->a(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0093

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b:Landroid/widget/TextView;

    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c:Landroid/widget/TextView;

    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d:Landroid/widget/Button;

    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setLoadingShowing(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setDetailText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d()V

    return-void
.end method

.method public a(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setLoadingShowing(Z)V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setDetailText(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p6}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d()V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setLoadingShowing(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setDetailText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setBtnSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->d:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDetailColor(I)V
    .locals 1
    .annotation runtime Lcom/qmuiteam/qmui/skin/annotation/QMUISkinChangeNotAdapted;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDetailSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setLoadingShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLoadingSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .annotation runtime Lcom/qmuiteam/qmui/skin/annotation/QMUISkinChangeNotAdapted;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleSkinValue(Lcom/qmuiteam/qmui/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
