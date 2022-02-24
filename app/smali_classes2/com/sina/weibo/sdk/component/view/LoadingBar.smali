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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;

    invoke-direct {p2, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;

    invoke-direct {p2, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;-><init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/LoadingBar;I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    return-void
.end method

.method private getRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v3

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, -0xb26f02

    .line 6
    iput v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->b:I

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x46

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iput p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a:I

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
