.class public Lcom/ifengyu/intercom/ui/widget/view/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/SweepGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/SweepGradient;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->getHeight()I

    move-result v1

    const v2, 0x3e570a3d    # 0.21f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    int-to-float v4, v1

    mul-float/2addr v3, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSweepGradient([I)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/SweepGradient;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, p1, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->b:Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressView;->invalidate()V

    return-void
.end method
