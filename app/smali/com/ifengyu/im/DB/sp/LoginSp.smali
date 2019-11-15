.class public Lcom/ifengyu/im/DB/sp/LoginSp;
.super Ljava/lang/Object;
.source "LoginSp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;
    }
.end annotation


# static fields
.field private static loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;


# instance fields
.field private final KEY_B2_TOKEN:Ljava/lang/String;

.field private final KEY_LOGIN_ID:Ljava/lang/String;

.field private final KEY_PUBLIC_ID:Ljava/lang/String;

.field private final KEY_PUBLIC_KEY:Ljava/lang/String;

.field private final KEY_PWD:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/im/DB/sp/LoginSp;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "login.ini"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->fileName:Ljava/lang/String;

    const-string v0, "pwd"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->KEY_PWD:Ljava/lang/String;

    const-string v0, "loginId"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->KEY_LOGIN_ID:Ljava/lang/String;

    const-string v0, "publicId"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->KEY_PUBLIC_ID:Ljava/lang/String;

    const-string v0, "publicKey"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->KEY_PUBLIC_KEY:Ljava/lang/String;

    const-string v0, "b2Token"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->KEY_B2_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/DB/sp/LoginSp;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/DB/sp/LoginSp;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    if-nez v0, :cond_0

    const-class v1, Lcom/ifengyu/im/DB/sp/LoginSp;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/ifengyu/im/DB/sp/LoginSp;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/sp/LoginSp;-><init>()V

    sput-object v0, Lcom/ifengyu/im/DB/sp/LoginSp;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/ifengyu/im/DB/sp/LoginSp;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLoginIdentity()Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pwd"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "loginId"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "publicId"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "publicKey"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "b2Token"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v7, 0x1

    aput-object v4, v1, v7

    const/4 v7, 0x2

    aput-object v5, v1, v7

    const/4 v7, 0x3

    aput-object v6, v1, v7

    invoke-static {v1}, Lcom/ifengyu/library/util/i;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;-><init>(Lcom/ifengyu/im/DB/sp/LoginSp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "login.ini"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setLoginInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "loginId"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "publicId"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "publicKey"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "b2Token"

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
