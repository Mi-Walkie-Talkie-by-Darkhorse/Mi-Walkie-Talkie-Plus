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
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const v1, -0xa2a2a3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getContext()Landroid/content/Context;

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

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const v3, -0x77888878

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    :goto_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    if-nez v2, :cond_9

    const/16 v2, 0x41

    :goto_1
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-lt v1, v3, :cond_2

    :goto_2
    return-void

    :cond_1
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    const-string v3, "#"

    :goto_3
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v6

    sub-int v5, v6, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v4, v4

    iget-object v6, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, 0x1

    int-to-char v3, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->l:Landroid/graphics/drawable/Drawable;

    sub-int v6, v2, v4

    add-int v7, v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-lt v1, v2, :cond_6

    goto/16 :goto_2

    :cond_a
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v5

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->h:I

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->k:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->setMeasuredDimension(II)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->j:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    return v2

    :pswitch_0
    iput-boolean v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->a:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    :cond_1
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;->a(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->i:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndexChangeListener(Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->g:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;

    return-void
.end method

.method public setIndexLetter([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->c:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->f:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method

.method public setIndexMark([Z)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->d:[Z

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method
