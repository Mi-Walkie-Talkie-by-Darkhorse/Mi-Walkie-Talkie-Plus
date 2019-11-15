.class public Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;
.super Ljava/lang/Object;
.source "OldRecentlyServerDataManager.java"


# static fields
.field private static final EXPIRE_TIME:J = -0x3083a800L

.field private static final TAG:Ljava/lang/String; = "OldRecentlyServerDataManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mRecentlyServerProfileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ipmap"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mFileName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->loadHashMap()Z

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;

    return-object v0
.end method

.method private loadHashMap()Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "OldRecentlyServerDataManager"

    const-string v2, "loadHashMap"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "OldRecentlyServerDataManager"

    const-string v2, "loadHashMap() Global.getApplicationContext() == null"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "OldRecentlyServerDataManager"

    const-string v2, "loadHashMap() FileNotFoundException"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "OldRecentlyServerDataManager"

    const-string v5, "closeObject Exception"

    invoke-static {v3, v5, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_2
    const-string v3, "OldRecentlyServerDataManager"

    const-string v5, "loadHashMap() readObject Exception"

    invoke-static {v3, v5, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->print()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "OldRecentlyServerDataManager"

    const-string v3, "closeObject Exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v1, "OldRecentlyServerDataManager"

    const-string v2, "closeObject Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private print()V
    .locals 6

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;

    if-eqz v1, :cond_0

    const-string v3, "OldRecentlyServerDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRecentlyServerProfileMap key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",value = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeExpireData()V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->getTimeStamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, -0x3083a800

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;

    const-string v4, "OldRecentlyServerDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeExpireData key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",value = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private saveHashMap()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "OldRecentlyServerDataManager"

    const-string v2, "saveHashMap"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->removeExpireData()V

    const/4 v2, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "OldRecentlyServerDataManager"

    const-string v2, "saveHashMap() Global.getApplicationContext() == null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->print()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const-string v2, "OldRecentlyServerDataManager"

    const-string v3, "writeObject Exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OldRecentlyServerDataManager"

    const-string v2, "closeObject Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;

    return-object v0
.end method

.method public setData(Ljava/lang/String;Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->mRecentlyServerProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerDataManager;->saveHashMap()Z

    return-void
.end method
