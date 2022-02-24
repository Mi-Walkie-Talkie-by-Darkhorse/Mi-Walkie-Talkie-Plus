.class Lcom/ifengyu/intercom/lite/login/LoginFragment$i;
.super Landroid/content/BroadcastReceiver;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/login/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/login/LoginFragment;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/login/LoginFragment$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x2

    const-string v0, "login_weixin_resp_code"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->h(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "login_weixin_code"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    sget-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->d:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-static {p2, v0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110067

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110395

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_0
    return-void
.end method
