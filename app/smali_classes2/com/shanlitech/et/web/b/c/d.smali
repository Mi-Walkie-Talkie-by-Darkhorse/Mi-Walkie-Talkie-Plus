.class public abstract Lcom/shanlitech/et/web/b/c/d;
.super Ljava/lang/Object;
.source "HistoryAudioMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryAudioMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Lb/c/a/c/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getSid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/shanlitech/et/web/a;->e(JLb/c/a/c/c;)V

    return-void
.end method

.method public abstract getCachePath()Ljava/lang/String;
.end method

.method public abstract getGid()J
.end method

.method public abstract getPayload()I
.end method

.method public abstract getSid()J
.end method

.method public abstract getUid()J
.end method

.method public play()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->j()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "HistoryAudioMethod"

    if-eqz v0, :cond_0

    const-string v0, "play break by<ptt status is busy ~ listening>"

    .line 2
    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getSid()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->build(JJ)Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "play break by<ptt status is busy ~ speaking>"

    .line 5
    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getSid()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->build(JJ)Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getSid()J

    move-result-wide v6

    .line 8
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getPayload()I

    move-result v8

    .line 9
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u64ad\u653e\u7f13\u5b58\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v7, v8}, Lcom/shanlitech/et/core/c/n;->f(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u64ad\u653e\u6210\u529f"

    .line 14
    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u7f13\u5b58\uff0c\u4e0b\u8f7d\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/shanlitech/et/web/b/c/d$a;

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/d;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/shanlitech/et/web/b/c/d$a;-><init>(Lcom/shanlitech/et/web/b/c/d;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/web/b/c/d;->download(Lb/c/a/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/n;->g()Z

    move-result v0

    const-string v1, "HistoryAudioMethod"

    if-eqz v0, :cond_0

    const-string v0, "\u505c\u6b62\u6210\u529f"

    .line 2
    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u505c\u6b62\u5931\u8d25"

    .line 3
    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
