.class public Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;,
        Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$Holder;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/content/Context;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please call DiagnosisController.init() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "name must be ^[A-Za-z]{0,10}$"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/e;->a()Lcom/xiaomi/accountsdk/diagnosis/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/a/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-Za-z]{0,10}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static get()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a()V

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$Holder;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a()V

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getLogName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a:Landroid/content/Context;

    new-instance p0, Lcom/xiaomi/accountsdk/diagnosis/a;

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/diagnosis/a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->set(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;)V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkStart(Lcom/xiaomi/accountsdk/diagnosis/c;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;-><init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;Lcom/xiaomi/accountsdk/diagnosis/c;Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$1;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getDiagnosisDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
