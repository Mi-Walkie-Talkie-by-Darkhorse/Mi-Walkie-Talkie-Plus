.class public Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "AfxTextView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->c()V

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->h(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private getDrawableHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getDrawableWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->getDrawableWidth()I

    move-result p2

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->getDrawableHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v4

    .line 9
    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-ge p2, v1, :cond_0

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v3, v1

    sub-int/2addr v5, v6

    .line 10
    div-int/lit8 v5, v5, 0x2

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    div-int/lit8 v4, v2, 0x2

    :cond_1
    add-int/2addr v5, v4

    int-to-float p2, v3

    int-to-float v0, v5

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidthAndState()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeightAndState()I

    move-result v3

    .line 6
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 7
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-ne v0, v7, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->getDrawableWidth()I

    move-result v9

    if-le v9, v0, :cond_0

    .line 11
    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ne v1, v7, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/AfxTextView;->getDrawableHeight()I

    move-result v7

    if-le v7, v1, :cond_1

    .line 15
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 16
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 17
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 19
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 20
    invoke-virtual {p0, p1, v3}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 21
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 22
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
