.class public Lcom/ifengyu/im/DB/sp/SystemConfigSp;
.super Ljava/lang/Object;
.source "SystemConfigSp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;
    }
.end annotation


# static fields
.field private static systemConfigSp:Lcom/ifengyu/im/DB/sp/SystemConfigSp;


# instance fields
.field private ctx:Landroid/content/Context;

.field private final fileName:Ljava/lang/String;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->systemConfigSp:Lcom/ifengyu/im/DB/sp/SystemConfigSp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "systemconfig.ini"

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/DB/sp/SystemConfigSp;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->systemConfigSp:Lcom/ifengyu/im/DB/sp/SystemConfigSp;

    if-nez v0, :cond_0

    const-class v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/sp/SystemConfigSp;-><init>()V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->systemConfigSp:Lcom/ifengyu/im/DB/sp/SystemConfigSp;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->systemConfigSp:Lcom/ifengyu/im/DB/sp/SystemConfigSp;

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
.method public getIntConfig(Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;)I
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntConfig(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStrConfig(Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->ctx:Landroid/content/Context;

    const-string v0, "systemconfig.ini"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setIntConfig(Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIntConfig(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setStrConfig(Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/SystemConfigSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
