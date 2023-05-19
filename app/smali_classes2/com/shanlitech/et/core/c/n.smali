.class public Lcom/shanlitech/et/core/c/n;
.super Ljava/lang/Object;
.source "PocHistoryManager.java"


# static fields
.field private static final a:Lcom/shanlitech/et/core/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/n;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/n;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/n;->a:Lcom/shanlitech/et/core/c/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/history/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/shanlitech/et/core/c/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/n;->a:Lcom/shanlitech/et/core/c/n;

    return-object v0
.end method


# virtual methods
.method public b(J)Lcom/shanlitech/et/model/HistoryList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->w(J)Lcom/shanlitech/et/model/HistoryList;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shanlitech/et/model/HistoryAudio;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/shanlitech/et/core/c/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/HistoryAudio;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/HistoryAudio;->getUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JJ)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->build(JJ)Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;JI)Z
    .locals 0

    .line 1
    invoke-static {p4, p1, p2, p3}, Lcom/shanlitech/et/CoreEngine;->playAudioFile(ILjava/lang/String;J)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Z
    .locals 4

    const/16 v0, 0x67

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/shanlitech/et/CoreEngine;->playAudioFile(ILjava/lang/String;J)I

    move-result v0

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
