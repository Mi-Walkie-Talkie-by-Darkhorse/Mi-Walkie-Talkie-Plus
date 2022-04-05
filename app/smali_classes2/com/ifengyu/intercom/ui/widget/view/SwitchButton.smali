.class public Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;,
        Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const v0, 0x7f06006c

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Landroid/content/Context;[Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f06006c

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/AttributeSet;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Landroid/content/Context;[Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:I

    return p0
.end method

.method private varargs a(Landroid/content/Context;[Landroid/util/AttributeSet;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->d(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-direct {p2, p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    aget-object p2, p2, v0

    invoke-direct {v2, p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object p2, v2

    :goto_0
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->d(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    new-instance v3, Landroid/graphics/RectF;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    int-to-float v4, v2

    int-to-float v5, v2

    sub-int v6, v1, v2

    int-to-float v6, v6

    sub-int v2, v1, v2

    int-to-float v2, v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/RectF;

    sub-int v2, v0, v1

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v4, v3

    sub-int v5, v0, v3

    int-to-float v5, v5

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-direct {v9, v2, v4, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/high16 v11, 0x43340000    # 180.0f

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    div-int/lit8 v2, v1, 0x2

    int-to-float v9, v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    int-to-float v5, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v7, v3

    iget-object v8, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v9

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    sub-int v3, v1, v2

    int-to-float v5, v3

    sub-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->c:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    mul-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    iget p5, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    sub-int/2addr p4, p5

    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    add-int/2addr p5, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    sub-int/2addr v0, v1

    add-int/2addr p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->d:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->b:I

    add-int p5, p4, p1

    add-int v0, p4, p1

    add-int/2addr p2, p1

    add-int p1, p2, p4

    sub-int/2addr p2, p4

    invoke-virtual {p3, p5, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$OnCheckedChangeListener;)V
    .locals 0

    return-void
.end method

.method public setStartState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->invalidate()V

    return-void
.end method
