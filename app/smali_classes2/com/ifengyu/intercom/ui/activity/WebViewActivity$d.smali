.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->L(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->K(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)I

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->M(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->N(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->L(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->L(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->O(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->P(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    .line 7
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedTitle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewActivity"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->R(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->R(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->R(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->F(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
