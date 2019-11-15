.class public Lcom/tencent/bugly/mimsg/proguard/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field c:Lcom/tencent/bugly/mimsg/proguard/i;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->d:Ljava/util/HashMap;

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->b:Ljava/lang/String;

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->c:Lcom/tencent/bugly/mimsg/proguard/i;

    return-void
.end method

.method public static a(I)Lcom/tencent/bugly/mimsg/proguard/ag;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/af;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/af;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/ae;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/ae;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/tencent/bugly/mimsg/proguard/am;
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string v0, "Can not create request pkg for parameters is invalid."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/tencent/bugly/mimsg/proguard/am;

    invoke-direct {v2}, Lcom/tencent/bugly/mimsg/proguard/am;-><init>()V

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->a:I

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->b:Ljava/lang/String;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->c:Ljava/lang/String;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->d:Ljava/lang/String;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "2.6.5"

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->f:Ljava/lang/String;

    iput p1, v2, Lcom/tencent/bugly/mimsg/proguard/am;->g:I

    if-nez p2, :cond_5

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->h:[B

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->i:Ljava/lang/String;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->l:Ljava/lang/String;

    iget-wide v6, v4, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    iput-wide v6, v2, Lcom/tencent/bugly/mimsg/proguard/am;->m:J

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tencent/bugly/mimsg/proguard/am;->q:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->r:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->t:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->v:Ljava/lang/String;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->p:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.tencent.bugly"

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->n:Ljava/lang/String;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "F11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "F12"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->K()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->L()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G4"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->O()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->P()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "D3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/bugly/mimsg/b;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/bugly/mimsg/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/a;

    iget-object v6, v0, Lcom/tencent/bugly/mimsg/a;->versionKey:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/tencent/bugly/mimsg/a;->version:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    iget-object v7, v0, Lcom/tencent/bugly/mimsg/a;->versionKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/a;->version:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, p2

    goto/16 :goto_1

    :cond_6
    :try_start_3
    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "G15"

    const-string v6, "G15"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    const-string v5, "D4"

    const-string v6, "D4"

    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->a()Lcom/tencent/bugly/mimsg/proguard/u;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->h:[B

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v4, v4, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    invoke-static {v0, v5, v6, v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a([BIILjava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->h:[B

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/proguard/am;->h:[B

    if-nez v0, :cond_7

    const-string v0, "reqPkg sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, v2, Lcom/tencent/bugly/mimsg/proguard/am;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static a([BZ)Lcom/tencent/bugly/mimsg/proguard/an;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/d;->b()V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/mimsg/proguard/d;->a([B)V

    const-string v2, "detail"

    new-instance v3, Lcom/tencent/bugly/mimsg/proguard/an;

    invoke-direct {v3}, Lcom/tencent/bugly/mimsg/proguard/an;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Lcom/tencent/bugly/mimsg/proguard/an;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lcom/tencent/bugly/mimsg/proguard/an;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/an;

    :goto_0
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    array-length v2, v2

    if-lez v2, :cond_0

    const-string v2, "resp buf %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/z;->b([BIILjava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/an;->c:[B

    if-nez v2, :cond_0

    const-string v0, "resp sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/mimsg/proguard/aq;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/tencent/bugly/mimsg/proguard/aq;

    invoke-direct {v4}, Lcom/tencent/bugly/mimsg/proguard/aq;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    iput-wide v6, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->a:J

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->g:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->o:I

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->h:Z

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0xa

    if-lt v0, v5, :cond_4

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0x14

    if-ge v0, v5, :cond_4

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    int-to-byte v0, v0

    iput-byte v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    if-ltz v0, :cond_1

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_2

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "C03_"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :pswitch_0
    iput-byte v2, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    goto/16 :goto_2

    :pswitch_1
    iput-byte v8, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    goto/16 :goto_2

    :pswitch_2
    const/4 v0, 0x4

    iput-byte v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    goto/16 :goto_2

    :pswitch_3
    const/4 v0, 0x3

    iput-byte v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    goto/16 :goto_2

    :cond_4
    const-string v0, "unknown uinfo type %d "

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v1, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v5, "A36"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    if-nez v0, :cond_7

    move v0, v2

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "summary type %d vm:%d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-byte v5, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, v4, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/bugly/mimsg/proguard/ar;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/tencent/bugly/mimsg/proguard/ar;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->t()Ljava/lang/String;

    new-instance v3, Lcom/tencent/bugly/mimsg/proguard/ar;

    invoke-direct {v3}, Lcom/tencent/bugly/mimsg/proguard/ar;-><init>()V

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->c:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/mimsg/proguard/aq;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v4, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A6"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A24"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A15"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A13"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "F08"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "F09"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v5, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->e:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown up type %d "

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    goto/16 :goto_0

    :pswitch_0
    iput-byte v8, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->a:B

    :goto_3
    move-object v0, v3

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput-byte v0, v3, Lcom/tencent/bugly/mimsg/proguard/ar;->a:B

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a([BLjava/lang/Class;)Lcom/tencent/bugly/mimsg/proguard/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/bugly/mimsg/proguard/k;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/k;

    new-instance v2, Lcom/tencent/bugly/mimsg/proguard/i;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/mimsg/proguard/i;-><init>([B)V

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/k;->a(Lcom/tencent/bugly/mimsg/proguard/i;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v0, "int32"

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v0, "bool"

    goto :goto_1

    :cond_4
    const-string v4, "java.lang.Byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v0, "char"

    goto :goto_1

    :cond_6
    const-string v4, "java.lang.Double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "double"

    goto :goto_1

    :cond_8
    const-string v4, "java.lang.Float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const-string v0, "float"

    goto :goto_1

    :cond_a
    const-string v4, "java.lang.Long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string v0, "int64"

    goto :goto_1

    :cond_c
    const-string v4, "java.lang.Short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const-string v0, "short"

    goto :goto_1

    :cond_e
    const-string v4, "java.lang.Character"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support java.lang.Character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v4, "java.lang.String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v0, "string"

    goto/16 :goto_1

    :cond_10
    const-string v4, "java.util.List"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v0, "list"

    goto/16 :goto_1

    :cond_11
    const-string v4, "java.util.Map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "map"

    goto/16 :goto_1

    :cond_12
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_14
    const-string v4, "map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_15
    const-string v4, "Array"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_16
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_17
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only byte[] is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Array"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/Array;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Array, please use List"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_5

    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "java.util.Map"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/tencent/bugly/mimsg/proguard/k;)[B
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/j;-><init>()V

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/mimsg/proguard/k;->a(Lcom/tencent/bugly/mimsg/proguard/j;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/j;->b()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/d;->b()V

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/d;->b(I)V

    const-string v1, "RqdServer"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/d;->b(Ljava/lang/String;)V

    const-string v1, "sync"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/d;->c(Ljava/lang/String;)V

    const-string v1, "detail"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/mimsg/proguard/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/d;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put key can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put value can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/j;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v2, p2}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([B)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->c:Lcom/tencent/bugly/mimsg/proguard/i;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/proguard/i;->a([B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->c:Lcom/tencent/bugly/mimsg/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->c:Lcom/tencent/bugly/mimsg/proguard/i;

    invoke-virtual {v1, v0, v4, v4}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public a()[B
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/j;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/j;-><init>(I)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
