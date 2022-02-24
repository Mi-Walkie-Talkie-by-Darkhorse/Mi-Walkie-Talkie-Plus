.class Lcom/xiaomi/account/openauth/AuthorizeActivity$1;
.super Ljava/lang/Object;
.source "AuthorizeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

.field final synthetic val$mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->val$mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->val$mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->val$mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
