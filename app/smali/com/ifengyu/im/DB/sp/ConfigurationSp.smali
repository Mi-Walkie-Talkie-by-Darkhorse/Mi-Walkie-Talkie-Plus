.class public Lcom/ifengyu/im/DB/sp/ConfigurationSp;
.super Ljava/lang/Object;
.source "ConfigurationSp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;,
        Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;
    }
.end annotation


# static fields
.field private static configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;


# instance fields
.field private ctx:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private loginId:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->ctx:Landroid/content/Context;

    iput p2, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->loginId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    iget v0, v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->loginId:I

    if-eq v0, p1, :cond_1

    :cond_0
    const-class v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    goto :goto_0
.end method


# virtual methods
.method public getCfg(Ljava/lang/String;Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;)Z
    .locals 4

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSessionTalk()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTALK:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionTopList()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/HashSet;

    goto :goto_0
.end method

.method public getTimeLine(Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;)I
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isTopSession(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getSessionTopList()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCfg(Ljava/lang/String;Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;Z)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSessionTalk(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTALK:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->SET_SESSION_TALK:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionTop(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->SET_SESSION_TOP:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setTimeLine(Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
