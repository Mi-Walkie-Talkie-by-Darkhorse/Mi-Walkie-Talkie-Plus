.class public Lcom/shanlitech/et/model/Account;
.super Lcom/shanlitech/et/b/c/a;
.source "Account.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Account"

.field private static volatile mInstance:Lcom/shanlitech/et/model/Account;


# instance fields
.field private account:Ljava/lang/String;

.field private audioRecorder:Lcom/shanlitech/et/core/sl/hal/a;

.field private audioTracker:Lcom/shanlitech/et/core/sl/hal/b;

.field private coreStore:Lcom/shanlitech/et/core/b;

.field private mContext:Landroid/content/Context;

.field private option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

.field private pwd:Ljava/lang/String;

.field private service:Lcom/shanlitech/et/core/CoreService;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/shanlitech/et/core/sl/model/IAccountOption;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/b/c/a;-><init>()V

    .line 2
    new-instance v0, Lcom/shanlitech/et/model/Account$1;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/model/Account$1;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/shanlitech/et/model/Account;->serviceConnection:Landroid/content/ServiceConnection;

    .line 3
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/model/Account;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getAudioStream()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/hal/Hal;->initialize(Landroid/content/Context;I)V

    .line 9
    invoke-direct {p0}, Lcom/shanlitech/et/model/Account;->enableLog()Z

    move-result v0

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/model/Account;->setLogEnable(ZLjava/lang/String;)Z

    .line 10
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    const-string v1, "record"

    const-string v2, "quality"

    const-string v3, "6"

    invoke-virtual {v0, v1, v2, v3}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    const-string v2, "record quality set 6 ok!"

    invoke-static {v0, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    const-string v2, "play"

    const-string v3, "agc_enable"

    const-string v4, "0"

    invoke-virtual {v0, v2, v3, v4}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getAudioStream()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stream_type"

    invoke-virtual {v0, v2, v3, v1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    const-string v1, "audio_engine"

    const-string v3, "1"

    invoke-virtual {v0, v2, v1, v3}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/model/Account;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/b;->e(Landroid/content/Context;)Lcom/shanlitech/et/core/b;

    iput-object v0, p0, Lcom/shanlitech/et/model/Account;->coreStore:Lcom/shanlitech/et/core/b;

    .line 17
    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->enableContact()Z

    move-result v1

    const-string v2, "sdk.contact.enable"

    invoke-virtual {v0, v2, v1}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->enableContactInvitation()Z

    move-result v1

    const-string v2, "sdk.contact.invitation.enable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sdk.group.invitation.enable"

    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sdk.location.enable"

    .line 20
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sdk.history.enable"

    const/4 v2, 0x1

    .line 21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->alertNotOrgAccountSourceType()Z

    move-result v1

    const-string v3, "sdk.account.alert_not_shanli_source_type"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->useCPULock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/c/r;->r(Z)V

    .line 25
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->useAlarm()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/r;->q(Z)V

    .line 26
    iget-object p1, p0, Lcom/shanlitech/et/model/Account;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shanlitech/et/model/Account;->mContext:Landroid/content/Context;

    const-class v3, Lcom/shanlitech/et/core/CoreService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/shanlitech/et/model/Account;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Account loadAll>bind success"

    .line 27
    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Account loadAll>bind fail"

    .line 28
    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PocAccountOption.Context is null..."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/CoreService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/model/Account;->service:Lcom/shanlitech/et/core/CoreService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/shanlitech/et/model/Account;Lcom/shanlitech/et/core/CoreService;)Lcom/shanlitech/et/core/CoreService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->service:Lcom/shanlitech/et/core/CoreService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/sl/model/IAccountOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/model/Account;->account:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->account:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/model/Account;->coreStore:Lcom/shanlitech/et/core/b;

    return-object p0
.end method

.method static synthetic access$500(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/model/Account;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->pwd:Ljava/lang/String;

    return-object p1
.end method

.method public static account()Lcom/shanlitech/et/model/Account;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    const-string v1, "getAccount: error!!! must be > Account.account() in mainProcess !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Account.build(option) frist!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build(Lcom/shanlitech/et/core/sl/model/IAccountOption;)Lcom/shanlitech/et/model/Account;
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shanlitech/et/model/Account;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/model/Account;-><init>(Lcom/shanlitech/et/core/sl/model/IAccountOption;)V

    sput-object v0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    .line 4
    sget-object p0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build: create Account instace...\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    .line 6
    sget-object p0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    const-string v0, "build: error!!! must be > build account in mainProcess !"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/shanlitech/et/model/Account;->mInstance:Lcom/shanlitech/et/model/Account;

    return-object p0
.end method

.method private enableLog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->logEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->logEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configAudioServer(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "audio_server"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/shanlitech/et/core/b;->l(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/b;->k(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->logout()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shanlitech/et/model/Account;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/model/Account;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method public getAllUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/g;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUser(Ljava/lang/String;Lcom/shanlitech/et/c/k;)Ljava/util/List;
    .locals 3
    .param p2    # Lcom/shanlitech/et/c/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/c/k<",
            "Lcom/shanlitech/et/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/g;->e()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/User;

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2, v1}, Lcom/shanlitech/et/c/k;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public getAudioRecorder()Lcom/shanlitech/et/core/sl/hal/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->audioRecorder:Lcom/shanlitech/et/core/sl/hal/a;

    return-object v0
.end method

.method public getAudioTracker()Lcom/shanlitech/et/core/sl/hal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->audioTracker:Lcom/shanlitech/et/core/sl/hal/b;

    return-object v0
.end method

.method public getContactList()Lcom/shanlitech/et/model/ContactList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/g;->h()Lcom/shanlitech/et/model/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentGroup()Lcom/shanlitech/et/core/sl/model/IGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->i()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->k()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(J)Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGroupList()Lcom/shanlitech/et/core/sl/model/list/IGroupList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->getGroupList()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public getGroupList()Lcom/shanlitech/et/model/GroupList;
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->n()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public getListeningGroup()Lcom/shanlitech/et/model/Group;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->a()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getListeningGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/Group;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMemberList(J)Lcom/shanlitech/et/model/MemberList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/l;->q(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOption()Lcom/shanlitech/et/core/sl/model/IAccountOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformAccount()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingSoundUser()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->c()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getPwdExpireInfo()Lcom/shanlitech/et/model/PwdExpireInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->h()Lcom/shanlitech/et/model/PwdExpireInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v1.1.0-20221116"

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionGroupList()Lcom/shanlitech/et/model/session/SessionGroupList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->w()Lcom/shanlitech/et/model/session/SessionGroupList;

    move-result-object v0

    return-object v0
.end method

.method public getSesstionTime()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/r;->u()I

    move-result v0

    return v0
.end method

.method public getSpeakingUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserConfig()Lcom/shanlitech/et/model/UserConfigure;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->getCurrentUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getUserconfigure()Lcom/shanlitech/et/model/UserConfigure;

    move-result-object v0

    return-object v0
.end method

.method public inBlockList()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAudioEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->k()Z

    move-result v0

    return v0
.end method

.method public isDispatcher()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->l()Z

    move-result v0

    return v0
.end method

.method public isListening()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->j()Z

    move-result v0

    return v0
.end method

.method public isLogOpened()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isLogOpened()Z

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->n()Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->o()Z

    move-result v0

    return v0
.end method

.method public isPushEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/r;->h()Z

    move-result v0

    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->g()Z

    move-result v0

    return v0
.end method

.method public joinGroup(JLjava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/core/c/l;->H(JLjava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs listenGroups([J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/l;->Q([J)Z

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/c;->s()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->account:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/model/Account;->pwd:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->coreStore:Lcom/shanlitech/et/core/b;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/b;->k(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwd"

    .line 5
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "role"

    .line 6
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "type"

    .line 7
    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_login"

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->service:Lcom/shanlitech/et/core/CoreService;

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-static {p4}, Lcom/shanlitech/et/web/LoginType;->a(I)Lcom/shanlitech/et/web/LoginType;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/core/c/h;->r(Ljava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/web/LoginType;)Z

    move-result p1

    return p1

    .line 13
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "login(wait service loadAll...): "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public logout()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->coreStore:Lcom/shanlitech/et/core/b;

    const-string v1, "auto_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "login_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwd"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->s()Z

    move-result v0

    return v0
.end method

.method public modifyEMail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/h;->t(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/h;->u(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyPhone(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/h;->v(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyPwd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/h;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifySex(Lcom/shanlitech/et/ETStatusCode$UserSex;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->getCurrentUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getSex()I

    move-result v0

    invoke-virtual {p1}, Lcom/shanlitech/et/ETStatusCode$UserSex;->a()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/ETStatusCode$UserSex;->a()I

    move-result p1

    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->setSex(I)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public queryGroupList()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->C0()Z

    return-void
.end method

.method public releaseMic()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/c/s;->q(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public reportLocation(DDDLcom/shanlitech/et/ETStatusCode$LocationType;DDLjava/lang/String;)Z
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v14}, Lcom/shanlitech/et/model/Account;->reportLocation(DDDLcom/shanlitech/et/ETStatusCode$LocationType;DDLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public reportLocation(DDDLcom/shanlitech/et/ETStatusCode$LocationType;DDLjava/lang/String;J)Z
    .locals 15

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Lcom/shanlitech/et/ETStatusCode$LocationType;->getNumber()I

    move-result v7

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/shanlitech/et/core/c/h;->F(DDDIDDLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public reportTerminalInfo(Ljava/lang/String;II)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/shanlitech/et/core/c/h;->E(IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestMic()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/c/s;->r(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public responseContact(JZ)Z
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Lcom/shanlitech/et/CoreEngine;->responseContact(JZ)I

    move-result p3

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    sget-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseContact: invitation=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p3
.end method

.method public responseGroup(JZZ)Z
    .locals 4

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/shanlitech/et/CoreEngine;->responseGroup(JZZ)I

    move-result p4

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 2
    :goto_0
    sget-object v0, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "responseGroup: invitation=[%s] accept=[%s] result=[%s]"

    .line 4
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public setLogEnable(ZLjava/lang/String;)Z
    .locals 7

    const-string v0, "save_pcm"

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->p()Lcom/blankj/utilcode/util/LogUtils$d;

    move-result-object v1

    sget-boolean v2, Lcom/shanlitech/et/a;->a:Z

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/LogUtils$d;->x(Z)Lcom/blankj/utilcode/util/LogUtils$d;

    .line 2
    sget-object v1, Lcom/shanlitech/et/model/Account;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/shanlitech/et/hal/Hal;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/shanlitech/et/c/i;->a:Ljava/lang/Boolean;

    .line 9
    sput-object p2, Lcom/shanlitech/et/c/i;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    const-string v3, "record"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    const-string v5, "0"

    if-eqz p1, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    :try_start_1
    invoke-virtual {v1, v3, v0, v6}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    const-string v3, "play"

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    invoke-virtual {v1, v3, v0, v4}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "a+"

    const/4 v1, 0x1

    .line 12
    invoke-static {p1, v0, p2, v1}, Lcom/shanlitech/et/CoreEngine;->setLogFile(ZLjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt p1, p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return v2
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/h;->G(Z)Z

    return-void
.end method

.method public setPushEnable(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/r;->p(Z)Z

    move-result p1

    return p1
.end method

.method public setSesstionTime(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/r;->s(I)Lcom/shanlitech/et/core/c/r;

    return-void
.end method

.method public updateUserConfigure(Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;I)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shanlitech/et/model/User;

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Account;->getCurrentUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/shanlitech/et/model/Account;->updateUserConfigure(Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;I[Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public varargs updateUserConfigure(Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;I[Lcom/shanlitech/et/model/User;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/core/c/i;->l(Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;I[Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public useHal(Lcom/shanlitech/et/core/sl/hal/a;Lcom/shanlitech/et/core/sl/hal/b;)Z
    .locals 6

    const/4 v0, 0x1

    const-string v1, "1"

    const-string v2, "audio_engine\uff1a"

    const-string v3, "-"

    const-string v4, "audio_engine"

    const-string v5, "record"

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->audioRecorder:Lcom/shanlitech/et/core/sl/hal/a;

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->audioTracker:Lcom/shanlitech/et/core/sl/hal/b;

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v3}, Lcom/shanlitech/et/core/c/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 6
    iput-object p1, p0, Lcom/shanlitech/et/model/Account;->audioRecorder:Lcom/shanlitech/et/core/sl/hal/a;

    .line 7
    iput-object p2, p0, Lcom/shanlitech/et/model/Account;->audioTracker:Lcom/shanlitech/et/core/sl/hal/b;

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p2

    const-string v1, "3"

    invoke-virtual {p2, v5, v4, v1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p2

    invoke-interface {p1}, Lcom/shanlitech/et/core/sl/hal/a;->c()Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "in_rate"

    invoke-virtual {p2, v5, v1, p1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v3}, Lcom/shanlitech/et/core/c/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    return v0

    .line 12
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v3}, Lcom/shanlitech/et/core/c/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/model/Account;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public useIMCache()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Account;->option:Lcom/shanlitech/et/core/sl/model/IAccountOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->useIMCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
