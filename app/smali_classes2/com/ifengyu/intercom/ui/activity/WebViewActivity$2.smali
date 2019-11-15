.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
