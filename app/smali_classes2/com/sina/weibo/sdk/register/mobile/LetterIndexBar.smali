.class public Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;
.super Landroid/view/View;
.source "LetterIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:[Ljava/lang/String;

.field private d:[Z

.field private e:I

.field private f:I

.field private g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

.field private h:I

.field private i:Z

.field private j:Landroid/graphics/RectF;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 p1, 0x1b

    .line 3
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    .line 4
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 p1, 0x1b

    .line 11
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    .line 12
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 p1, 0x1b

    .line 7
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    .line 8
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const v1, -0xa2a2a3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const v2, -0x77888878

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    .line 8
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    if-le v0, v1, :cond_1

    move v0, v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/16 v1, 0x41

    .line 11
    :goto_0
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-lt v2, v3, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    mul-int v3, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    add-int/2addr v3, v4

    .line 13
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v4, :cond_3

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_5

    .line 14
    :cond_3
    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    const-string v4, "#"

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v1, 0x1

    int-to-char v4, v4

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    move v8, v4

    move-object v4, v1

    move v1, v8

    .line 16
    :goto_1
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v5, v6

    int-to-float v3, v3

    .line 18
    iget-object v6, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_6
    :goto_2
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-lt v2, v1, :cond_7

    :goto_3
    return-void

    .line 20
    :cond_7
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    mul-int v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    add-int/2addr v1, v3

    .line 21
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v3, :cond_8

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_a

    .line 22
    :cond_8
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, ""

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 24
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 26
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->l:Landroid/graphics/drawable/Drawable;

    sub-int v6, v1, v4

    add-int v7, v3, v4

    add-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v5, v4, v6, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 28
    :cond_9
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v4, v5

    int-to-float v1, v1

    .line 30
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    div-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    int-to-float v0, v0

    .line 5
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    .line 6
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p2, v2, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 11
    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->j:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    div-int/2addr p1, v0

    .line 6
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v0, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-ge p1, v0, :cond_3

    if-ltz p1, :cond_3

    .line 8
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    .line 9
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;->a(I)V

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public setIndexChangeListener(Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

    return-void
.end method

.method public setIndexLetter([Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    .line 2
    array-length p1, p1

    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndexMark([Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
