.class public Lcom/sina/weibo/sdk/component/view/ResizeableLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

    iput p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->c:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->c:I

    iget v4, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->a:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;->a(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->a:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->c:I

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setSizeChangeListener(Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->b:Lcom/sina/weibo/sdk/component/view/ResizeableLayout$a;

    return-void
.end method
