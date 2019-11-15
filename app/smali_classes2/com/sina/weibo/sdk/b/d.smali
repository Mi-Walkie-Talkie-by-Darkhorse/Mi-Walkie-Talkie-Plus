.class Lcom/sina/weibo/sdk/b/d;
.super Ljava/lang/Object;
.source "AppInvokeCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/sina/weibo/sdk/b/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/sina/weibo/sdk/b/d$a;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/b/d$a;-><init>(Lcom/sina/weibo/sdk/b/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/d;->b:Lcom/sina/weibo/sdk/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/b/d;->b(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)V
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/utils/g$a;->a()Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->c(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/b/d;->c(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->b(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g;->a(I)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)Landroid/app/PendingIntent;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sina/weibo/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/sina/weibo/sdk/b/d;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sina/weibo/sdk/b/c;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/b/d;->b:Lcom/sina/weibo/sdk/b/d$a;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/b/d$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sina/weibo/sdk/b/d;->b:Lcom/sina/weibo/sdk/b/d$a;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/c;->g()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/sina/weibo/sdk/b/d$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
