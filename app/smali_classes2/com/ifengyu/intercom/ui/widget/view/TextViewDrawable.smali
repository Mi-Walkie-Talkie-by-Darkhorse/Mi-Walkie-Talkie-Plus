.class public Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;
.super Landroidx/appcompat/widget/AppCompatTextView;


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

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget-object p3, Lcom/ifengyu/intercom/R$styleable;->TextViewDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    :cond_0
    if-nez p4, :cond_1

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

    :goto_2
    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->j:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    const/4 p4, 0x1

    aget-object v0, p1, p4

    const/4 v1, 0x2

    aget-object v2, p1, v1

    const/4 v3, 0x3

    aget-object p1, p1, v3

    if-eqz p3, :cond_0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    invoke-direct {p0, p3, p2, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_0
    if-eqz v0, :cond_1

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    invoke-direct {p0, v0, p4, p2, v4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_1
    if-eqz v2, :cond_2

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    invoke-direct {p0, v2, v1, p2, p4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_2
    if-eqz p1, :cond_3

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    invoke-direct {p0, p1, v3, p2, p4}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_3
    invoke-virtual {p0, p3, v0, v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
