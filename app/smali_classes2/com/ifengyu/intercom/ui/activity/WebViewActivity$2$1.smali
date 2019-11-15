.class Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->g(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2$1;->a:Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->g(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
