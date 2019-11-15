.class public Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;
.super Landroid/view/ViewGroup;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;,
        Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field public a:Z

.field private final b:I

.field private c:I

.field private final d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

.field private h:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f00a3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    const v0, 0x7f0f0042

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->i:Z

    new-array v0, v1, [Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Landroid/content/Context;[Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0f00a3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    const v0, 0x7f0f0042

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->i:Z

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/AttributeSet;

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Landroid/content/Context;[Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:I

    return v0
.end method

.method private varargs a(Landroid/content/Context;[Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p2, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->setWillNotDraw(Z)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    aget-object v1, p2, v3

    invoke-direct {v0, p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v4, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getHeight()I

    move-result v7

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v5, v7, v5

    int-to-float v5, v5

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    invoke-direct {v1, v0, v2, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v7

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v5, v6, v5

    int-to-float v5, v5

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    invoke-direct {v1, v0, v2, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    div-int/lit8 v0, v7, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    int-to-float v2, v0

    div-int/lit8 v0, v7, 0x2

    sub-int v0, v6, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v7, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    div-int/lit8 v0, v7, 0x2

    sub-int v0, v6, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->addView(Landroid/view/View;)V

    :cond_0
    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->layout(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->g:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    add-int/2addr v4, v0

    add-int v5, v1, v0

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    add-int/2addr v5, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->layout(IIII)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->h:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;

    return-void
.end method

.method public setStartState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->i:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->invalidate()V

    return-void
.end method
