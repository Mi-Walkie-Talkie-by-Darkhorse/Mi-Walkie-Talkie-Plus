.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;
.super Landroid/os/CountDownTimer;
.source "MobileRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Get code"

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    const-string v4, "\u7372\u53d6\u9a57\u8b49\u78bc"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->i(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->h(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Get code"

    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    const-string v5, "\u7372\u53d6\u9a57\u8b49\u78bc"

    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
