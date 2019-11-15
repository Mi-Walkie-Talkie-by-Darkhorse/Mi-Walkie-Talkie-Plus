.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z

    return-void
.end method
