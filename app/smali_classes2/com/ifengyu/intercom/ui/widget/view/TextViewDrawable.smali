.class public Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;
.super Landroid/support/v7/widget/AppCompatTextView;
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

.field private j:Z

.field private k:I

.field private l:I


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
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->j:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->TextViewDrawable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;III)V
    .locals 6

    const/4 v1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    :goto_0
    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    :cond_0
    packed-switch p2, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_1
    move v3, p3

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int v2, v0, p4

    move v4, v2

    move v2, v0

    move v0, v3

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->getLineCount()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->getLineHeight()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->getLineHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_2

    :pswitch_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v3, v0

    add-int v2, v1, p4

    move v4, v2

    move v2, v1

    move v1, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->k:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->k:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->l:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v6

    aget-object v2, v0, v7

    aget-object v3, v0, v8

    aget-object v0, v0, v9

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->e:I

    invoke-direct {p0, v1, v6, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_0
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->b:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->f:I

    invoke-direct {p0, v2, v7, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_1
    if-eqz v3, :cond_2

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->c:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->g:I

    invoke-direct {p0, v3, v8, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_2
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->d:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->h:I

    invoke-direct {p0, v0, v9, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->a(Landroid/graphics/drawable/Drawable;III)V

    :cond_3
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ifengyu/intercom/ui/widget/view/TextViewDrawable;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
