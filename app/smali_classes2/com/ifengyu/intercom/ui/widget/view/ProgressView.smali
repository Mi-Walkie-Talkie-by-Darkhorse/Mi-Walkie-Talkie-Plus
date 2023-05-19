.class public Lcom/ifengyu/intercom/ui/widget/view/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/SweepGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/SweepGradient;

    const/16 p2, 0x8

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, p2, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1f63b8ff
        0x3f63b8ff
        0x5f63b8ff
        0x7f63b8ff
        -0x609c4701
        -0x409c4701
        -0x209c4701
        -0x9c4701
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v1

    const v3, 0x3e570a3d    # 0.21f

    mul-float v3, v3, v2

    const v4, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v4

    .line 3
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSweepGradient([I)V
    .locals 3

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/SweepGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
