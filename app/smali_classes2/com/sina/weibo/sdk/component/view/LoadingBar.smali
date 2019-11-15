.class public Lcom/sina/weibo/sdk/component/view/LoadingBar;
.super Landroid/widget/TextView;
.source "LoadingBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I
    .locals 1

    iget v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/LoadingBar;I)V
    .locals 0

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    return-void
.end method

.method private getRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getBottom()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    sub-int v0, v2, v0

    sub-int v1, v3, v1

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, -0xb26f02

    iput v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->b:I

    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
