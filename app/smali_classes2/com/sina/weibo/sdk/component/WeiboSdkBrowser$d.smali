.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$d;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    :cond_0
    return-void
.end method
