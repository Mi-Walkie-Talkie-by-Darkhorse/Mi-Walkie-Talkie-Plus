.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/en/productshark.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/productshark.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/en/productseal.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/productseal.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/en/product.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    const-string v1, "https://m.ifengyu.com/resources/product.html"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
