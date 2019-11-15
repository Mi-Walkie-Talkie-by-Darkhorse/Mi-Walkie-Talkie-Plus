.class public Lcom/xiaomi/mistatistic/sdk/MIWebView;
.super Landroid/webkit/WebView;
.source "MIWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/MIWebView$a;
    }
.end annotation


# virtual methods
.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;-><init>(Lcom/xiaomi/mistatistic/sdk/MIWebView;Landroid/webkit/WebViewClient;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
