.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;->a:I

    rsub-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;->a:I

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
