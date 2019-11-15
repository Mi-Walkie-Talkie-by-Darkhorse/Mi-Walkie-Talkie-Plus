.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/view/TitleBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->a:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    return-void
.end method
