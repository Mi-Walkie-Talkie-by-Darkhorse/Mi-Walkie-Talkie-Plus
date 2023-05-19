.class public Lcom/shanlitech/et/core/c/s;
.super Ljava/lang/Object;
.source "PocSpeakManager.java"


# static fields
.field private static final c:Ljava/lang/String; = "s"

.field public static volatile d:Z = false

.field public static volatile e:Z = false

.field public static volatile f:J

.field private static volatile g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/shanlitech/et/core/c/s;


# instance fields
.field private a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/notice/event/SpeakEvent;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/notice/event/SpeakEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/s;->a:Landroid/util/LongSparseArray;

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/s;->b:Landroid/util/LongSparseArray;

    .line 4
    invoke-static {}, Lcom/shanlitech/et/hal/Hal;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isSpeaking()Z

    move-result v0

    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->d:Z

    .line 6
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isListening()Z

    move-result v0

    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->e:Z

    :cond_0
    return-void
.end method

.method public static i()Lcom/shanlitech/et/core/c/s;
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/s;->h:Lcom/shanlitech/et/core/c/s;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shanlitech/et/core/c/s;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/core/c/s;->h:Lcom/shanlitech/et/core/c/s;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shanlitech/et/core/c/s;

    invoke-direct {v1}, Lcom/shanlitech/et/core/c/s;-><init>()V

    sput-object v1, Lcom/shanlitech/et/core/c/s;->h:Lcom/shanlitech/et/core/c/s;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shanlitech/et/core/c/s;->h:Lcom/shanlitech/et/core/c/s;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/s;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    sget-wide v1, Lcom/shanlitech/et/core/c/s;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/e;->n(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/Group;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/shanlitech/et/core/c/e;->n(J)Lcom/shanlitech/et/model/Group;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public c()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->getPlayingSoundUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/shanlitech/et/model/User;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/s;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    sget-object v2, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/shanlitech/et/core/c/e;->y(J)Lcom/shanlitech/et/model/User;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v3}, Lcom/shanlitech/et/CoreEngine;->getUsers([J)[Lcom/shanlitech/et/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    array-length v2, v1

    if-lez v2, :cond_1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public f(J)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method public g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/core/c/s;->d:Z

    return v0
.end method

.method public h(J)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/core/c/s;->e:Z

    return v0
.end method

.method public k(JLjava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/Tts;->stopTts()I

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->d:Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v12, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v3

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/e;->s()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V

    .line 5
    invoke-virtual {v0, v12}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public l(JILjava/lang/String;)V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/core/c/s;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->d:Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v12, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v3

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/e;->s()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, 0x0

    move-object v1, v12

    move-wide v6, p1

    move-object/from16 v8, p4

    move/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V

    .line 5
    invoke-virtual {v0, v12}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public m(JLjava/lang/String;JLjava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/shanlitech/et/hal/Tts;->stopTts()I

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->e:Z

    .line 3
    sput-wide p1, Lcom/shanlitech/et/core/c/s;->f:J

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v12, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->START_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V

    invoke-virtual {v0, v12}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public n(JLjava/lang/String;JLjava/lang/String;)V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/core/c/s;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/shanlitech/et/core/c/s;->e:Z

    const-wide/16 v0, 0x0

    .line 3
    sput-wide v0, Lcom/shanlitech/et/core/c/s;->f:J

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v12, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STOP_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V

    invoke-virtual {v0, v12}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public o(JLjava/lang/String;JLjava/lang/String;J)V
    .locals 15

    .line 1
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v5, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const/4 v14, 0x0

    move-object v4, v0

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    move-wide/from16 v12, p7

    invoke-direct/range {v4 .. v14}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V

    move-object v2, p0

    .line 5
    iget-object v1, v2, Lcom/shanlitech/et/core/c/s;->a:Landroid/util/LongSparseArray;

    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, p0

    .line 7
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public p(JLjava/lang/String;JLjava/lang/String;JII)V
    .locals 15

    .line 1
    sget-object v1, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v0, Lcom/shanlitech/et/core/c/s;->g:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Lcom/shanlitech/et/notice/event/SpeakEvent;

    sget-object v4, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    move-object v3, v0

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v3 .. v14}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JII)V

    move-object v2, p0

    .line 5
    iget-object v1, v2, Lcom/shanlitech/et/core/c/s;->b:Landroid/util/LongSparseArray;

    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, p0

    .line 7
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public q(Lcom/shanlitech/et/model/Group;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/s;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " speaking="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/shanlitech/et/core/c/s;->d:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " listening="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/shanlitech/et/core/c/s;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->stopSpeak()I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Lcom/shanlitech/et/model/Group;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/s;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " speaking="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/shanlitech/et/core/c/s;->d:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " listening="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/shanlitech/et/core/c/s;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->startSpeak()I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
