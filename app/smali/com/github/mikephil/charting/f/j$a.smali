.class Lcom/github/mikephil/charting/f/j$a;
.super Ljava/lang/Object;
.source "LineChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/github/mikephil/charting/f/j;

.field private b:Landroid/graphics/Path;

.field private c:[Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/github/mikephil/charting/f/j;)V
    .locals 1

    iput-object p1, p0, Lcom/github/mikephil/charting/f/j$a;->a:Lcom/github/mikephil/charting/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j$a;->b:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/mikephil/charting/f/j;Lcom/github/mikephil/charting/f/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/f/j$a;-><init>(Lcom/github/mikephil/charting/f/j;)V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/f;ZZ)V
    .locals 10

    const-wide v8, 0x4000cccccccccccdL    # 2.1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->G()I

    move-result v1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->A()F

    move-result v2

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->B()F

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    float-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    float-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    aput-object v4, v6, v0

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->a:Lcom/github/mikephil/charting/f/j;

    iget-object v4, v4, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/e/b/f;->e(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->b:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->b:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v2, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->b:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->b:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/j$a;->a:Lcom/github/mikephil/charting/f/j;

    iget-object v6, v6, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->a:Lcom/github/mikephil/charting/f/j;

    iget-object v4, v4, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v2, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j$a;->a:Lcom/github/mikephil/charting/f/j;

    iget-object v4, v4, Lcom/github/mikephil/charting/f/j;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/f;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->G()I

    move-result v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/github/mikephil/charting/f/j$a;->c:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
