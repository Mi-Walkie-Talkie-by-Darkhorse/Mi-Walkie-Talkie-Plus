.class public Lcom/ifengyu/intercom/ui/activity/LoginActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;,
        Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;
    }
.end annotation


# static fields
.field public static final a:[I


# instance fields
.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field d:Lcom/ifengyu/intercom/b/y;

.field private q:[Landroid/view/View;

.field private r:Landroid/os/Bundle;

.field private final s:Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;

.field private t:Z

.field private u:Lcom/ifengyu/im/imservice/service/IMService;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/ifengyu/im/imservice/support/IMServiceConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020105
        0x7f020107
        0x7f020108
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b:[Ljava/lang/String;

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->c:[Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->s:Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->x:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/ifengyu/im/imservice/service/IMService;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->u:Lcom/ifengyu/im/imservice/service/IMService;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;I)V

    invoke-static {p1, p2, v0}, Lcom/ifengyu/intercom/a/a;->a(ILjava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f0f0073

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/LoginActivity$8;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$8;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(Lcom/afollestad/materialdialogs/MaterialDialog$h;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private a(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->u:Lcom/ifengyu/im/imservice/service/IMService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/service/IMService;->getLoginManager()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->login(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V

    return-void
.end method

.method private a(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->l(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    const-wide v2, 0x280000000005f8d3L    # 5.075883675072411E-116

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v1, "http://www.ifengyu.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->e()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->r()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->a(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Lcom/ifengyu/im/imservice/support/IMServiceConnector;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->x:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    return-object v0
.end method

.method private e()[I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    aput v3, v0, v3

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->u:Lcom/ifengyu/im/imservice/service/IMService;

    return-object v0
.end method

.method private f()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_last_login_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->e(I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$6;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->q()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->f()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->r:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->q:[Landroid/view/View;

    return-object v0
.end method

.method private q()V
    .locals 4

    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->e(I)V

    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$7;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private r()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private s()V
    .locals 11

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/16 v10, 0x21

    const/4 v7, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->q:[Landroid/view/View;

    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f1000f2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000f0

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->v:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1000ef

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000f1

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1000f4

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v2, 0x7f1000f5

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000f3

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->w:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->w:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v6, v7

    :goto_1
    sget-object v3, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a:[I

    array-length v3, v3

    if-ge v6, v3, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400c9

    invoke-virtual {v3, v4, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const v3, 0x7f1002cb

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1002cc

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1002cd

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->c:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a:[I

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->q:[Landroid/view/View;

    aput-object v8, v3, v6

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090251

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v3, v7, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v4, v7, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09024f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v7, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v4, v7, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f1000ec

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)V
    .locals 4

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d:Lcom/ifengyu/intercom/b/y;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->s()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1000ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f1000ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->r:Landroid/os/Bundle;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->s:Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->x:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->connect(Landroid/content/Context;)Z

    :cond_0
    invoke-static {v3}, Lcom/ifengyu/intercom/b/w;->l(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->s:Lcom/ifengyu/intercom/ui/activity/LoginActivity$b;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->x:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->disconnect(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->q()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->r:Landroid/os/Bundle;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "LoginActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->w:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ab()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->t:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->k()V

    :cond_0
    return-void
.end method
