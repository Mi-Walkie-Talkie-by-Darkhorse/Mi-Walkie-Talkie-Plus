.class public final Lcom/efs/sdk/pa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Lcom/efs/sdk/pa/PAFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/efs/sdk/pa/c;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/efs/sdk/base/protocol/file/EfsTextFile;

    invoke-direct {v1, p1}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;-><init>(Ljava/lang/String;)V

    const-string p1, "custom_info"

    .line 2
    invoke-virtual {v1, p1}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->createAndAddKVSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object p1

    const-string v2, "bserial"

    .line 3
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v2, "bsver"

    .line 4
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getSver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 5
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getExtend()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    goto :goto_0

    :cond_0
    const-string v2, "crver"

    const-string v3, "2.1.154.umeng"

    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "stack"

    .line 13
    invoke-virtual {v1, p1}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->createAndAddTextSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/TextSection;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/protocol/file/section/TextSection;->setBody(Ljava/lang/String;)V

    const-string v2, "linebreak"

    .line 15
    invoke-virtual {p1, v2}, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->setSep(Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, v1}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/pa/config/ConfigManager;->increaseUploadSmoothLogCnt()V

    const-string p0, "fred_xx"

    const-string p1, "reportPaWpkStats: stack: "

    .line 19
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
