.class Lb/b/a/a/d/d;
.super Ljava/lang/Object;
.source "AppInvokeCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/d/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lb/b/a/a/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lb/b/a/a/d/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/d/d;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lb/b/a/a/d/d$a;

    iget-object v0, p0, Lb/b/a/a/d/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lb/b/a/a/d/d$a;-><init>(Lb/b/a/a/d/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lb/b/a/a/d/d;->b:Lb/b/a/a/d/d$a;

    return-void
.end method

.method static synthetic a(Lb/b/a/a/d/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/a/a/d/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 16
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lb/b/a/a/d/c;)V
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lb/b/a/a/d/d;->c(Landroid/content/Context;Lb/b/a/a/d/c;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lb/b/a/a/d/c;)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lb/b/a/a/d/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lb/b/a/a/d/c;->f()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lb/b/a/a/d/c;->d()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lb/b/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-static {v1}, Lb/b/a/a/d/d;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    const/high16 v0, 0x10000000

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 10
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static c(Landroid/content/Context;Lb/b/a/a/d/c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sina/weibo/sdk/utils/g$a;->a()Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    .line 3
    invoke-static {p0, p1}, Lb/b/a/a/d/d;->b(Landroid/content/Context;Lb/b/a/a/d/c;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/g$a;

    .line 4
    invoke-virtual {p1}, Lb/b/a/a/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->b(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/utils/g$a;->c(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    .line 5
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/g;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/utils/g;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/a/d/c;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/b/a/a/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/a/a/d/d;->b:Lb/b/a/a/d/d$a;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lb/b/a/a/d/d;->b:Lb/b/a/a/d/d$a;

    invoke-virtual {p1}, Lb/b/a/a/d/e;->a()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
