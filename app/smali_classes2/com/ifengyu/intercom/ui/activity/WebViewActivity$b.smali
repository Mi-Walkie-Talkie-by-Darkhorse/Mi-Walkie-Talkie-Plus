.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;->a:I

    rsub-int/lit8 v0, v0, 0x64

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;->a:I

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
