.class public Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TextViewDrawable.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    sget-object p3, Lcom/ifengyu/intercom/R$styleable;->TextViewDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    const/4 p2, 0x7

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    const/4 p2, 0x5

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    const/4 v0, 0x6

    .line 7
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    .line 9
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    const/16 p3, 0x8

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    :cond_0
    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_4

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    goto :goto_2

    .line 3
    :cond_2
    iget-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->j:I

    neg-int p2, p2

    div-int/2addr p2, v0

    div-int/lit8 v0, p3, 0x2

    add-int/2addr p2, v0

    :goto_0
    add-int/2addr p3, p2

    add-int/2addr p4, v1

    move v1, p2

    const/4 p2, 0x0

    goto :goto_2

    .line 4
    :cond_4
    iget-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int p2, p2, v2

    div-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr p2, v2

    :goto_1
    add-int/2addr p4, p2

    .line 5
    :goto_2
    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->j:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    aget-object p3, p1, p2

    const/4 p4, 0x1

    .line 5
    aget-object v0, p1, p4

    const/4 v1, 0x2

    .line 6
    aget-object v2, p1, v1

    const/4 v3, 0x3

    .line 7
    aget-object p1, p1, v3

    if-eqz p3, :cond_0

    .line 8
    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    invoke-direct {p0, p3, p2, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c(Landroid/graphics/drawable/Drawable;III)V

    :cond_0
    if-eqz v0, :cond_1

    .line 9
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    invoke-direct {p0, v0, p4, p2, v4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c(Landroid/graphics/drawable/Drawable;III)V

    :cond_1
    if-eqz v2, :cond_2

    .line 10
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    invoke-direct {p0, v2, v1, p2, p4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c(Landroid/graphics/drawable/Drawable;III)V

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    invoke-direct {p0, p1, v3, p2, p4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c(Landroid/graphics/drawable/Drawable;III)V

    .line 12
    :cond_3
    invoke-virtual {p0, p3, v0, v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
