.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$c;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g()V
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
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$c;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$c;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$c;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    return-void
.end method
