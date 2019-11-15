.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)I

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->f(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
