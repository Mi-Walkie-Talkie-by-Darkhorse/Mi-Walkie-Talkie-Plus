.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;
.super Landroid/text/style/ClickableSpan;
.source "MobileRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->b:Landroid/content/Context;

    const-class v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_url"

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$d;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const v0, -0xaf8251

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
