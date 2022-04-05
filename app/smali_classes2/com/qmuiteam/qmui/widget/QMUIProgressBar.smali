.class public Lcom/qmuiteam/qmui/widget/QMUIProgressBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;,
        Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;
    }
.end annotation


# static fields
.field public static B:I


# instance fields
.field private A:Ljava/lang/Runnable;

.field a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;

.field b:Landroid/graphics/RectF;

.field c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/RectF;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Point;

.field private z:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->a(I)I

    move-result v0

    sput v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->u:Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->u:Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->u:Landroid/graphics/RectF;

    const-string p3, ""

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    new-instance p3, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;

    invoke-direct {p3, p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;
    .locals 0

    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->z:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;

    return-object p0
.end method

.method private a()V
    .locals 6

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->w:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->x:I

    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    div-int/2addr v2, v1

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    div-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->y:Landroid/graphics/Point;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c:Landroid/graphics/RectF;

    :goto_1
    return-void
.end method

.method private a(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->w:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->y:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->u:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->y:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->x:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->left:F

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v1, v0, v2

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/RectF;->top:F

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    if-lez v0, :cond_0

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    int-to-float v1, v1

    div-float v7, v0, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->u:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v0

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->y:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private b()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)I
    .locals 0

    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v0

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)I
    .locals 0

    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    return p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v0

    add-float/2addr v2, v4

    div-float/2addr v2, v1

    add-float/2addr v3, v2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    return v0
.end method

.method public getQMUIProgressBarTextGenerator()Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->l:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->n:I

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v4, v2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->m:I

    int-to-float v0, v0

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    float-to-int v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    invoke-interface {v0, p0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;->a(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->v:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->y:Landroid/graphics/Point;

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a()V

    :cond_6
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a()V

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->d:I

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->e:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->h:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBarColor(II)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->h:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->g:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->g:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->z:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    if-eq v0, p1, :cond_2

    :cond_1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    if-eq v0, v1, :cond_3

    if-ne v0, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->A:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    sub-int/2addr p2, p1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-float p2, p2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->n:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->l:J

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->m:I

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->g:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setQMUIProgressBarTextGenerator(Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar$c;

    return-void
.end method

.method public setStrokeRoundCap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->s:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->t:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->p:I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->o:I

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->q:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a(IIZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_progress_color:I

    const v1, -0xffff01

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->g:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_background_color:I

    const v1, -0x777778

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->h:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_max_value:I

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->i:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_value:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_stroke_round_cap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->q:Z

    const/16 p2, 0x14

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->o:I

    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textSize:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->o:I

    :cond_0
    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->p:I

    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_android_textColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->p:I

    :cond_1
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->f:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIProgressBar_qmui_stroke_width:I

    sget v0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->B:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->w:I

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->p:I

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->o:I

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->q:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a(IIZ)V

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->j:I

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setProgress(I)V

    return-void
.end method
