.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/d;

    move-result-object p1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/sina/weibo/sdk/component/d;->a(Landroid/app/Activity;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$b;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
