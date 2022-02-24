.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(I)V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z

    return-void
.end method
