.class Lcom/huawei/hms/scankit/p/Kc$b;
.super Ljava/lang/Object;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Kc$b$b;,
        Lcom/huawei/hms/scankit/p/Kc$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Timer;

.field private volatile c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Kc$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Kc$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/huawei/hms/scankit/p/Kc;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/scankit/p/Kc;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->f:Lcom/huawei/hms/scankit/p/Kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class p1, Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->b:Ljava/util/Timer;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->c:Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->e:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/scankit/p/Kc;Lcom/huawei/hms/scankit/p/Ic;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b;-><init>(Lcom/huawei/hms/scankit/p/Kc;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    .line 14
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->e:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/Kc$b;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/Kc$a;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->c:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->c:Z

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->b:Ljava/util/Timer;

    new-instance v0, Lcom/huawei/hms/scankit/p/Lc;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/p/Lc;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Kc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b;->a(Lcom/huawei/hms/scankit/p/Kc$a;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Kc$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/Kc$a;

    .line 22
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    new-instance v3, Lcom/huawei/hms/scankit/p/Kc$b$b;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/huawei/hms/scankit/p/Kc$b$b;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Ic;)V

    .line 27
    new-instance v5, Lcom/huawei/hms/scankit/p/Kc$b$a;

    invoke-direct {v5, v0, v4}, Lcom/huawei/hms/scankit/p/Kc$b$a;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Ic;)V

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v8, -0x8000000000000000L

    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-string v11, ""

    move-object v14, v11

    move-object v15, v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/Kc$a;

    .line 29
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->b(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->c(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;

    move-result-object v14

    .line 31
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->d(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;

    move-result-object v15

    .line 32
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->e(Lcom/huawei/hms/scankit/p/Kc$a;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 33
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v25

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->f(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v27

    sub-long v25, v25, v27

    add-long v18, v18, v25

    .line 34
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->g(Lcom/huawei/hms/scankit/p/Kc$a;)I

    move-result v12

    invoke-static {v3, v12}, Lcom/huawei/hms/scankit/p/Kc$b$b;->a(Lcom/huawei/hms/scankit/p/Kc$b$b;I)V

    .line 35
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->h(Lcom/huawei/hms/scankit/p/Kc$a;)I

    move-result v12

    invoke-static {v5, v12}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a(Lcom/huawei/hms/scankit/p/Kc$b$a;I)V

    const-wide/16 v12, 0x1

    add-long v16, v16, v12

    .line 36
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->i(Lcom/huawei/hms/scankit/p/Kc$a;)Z

    move-result v27

    if-eqz v27, :cond_1

    add-long v22, v22, v12

    .line 37
    :cond_1
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->g(Lcom/huawei/hms/scankit/p/Kc$a;)I

    move-result v27

    if-eqz v27, :cond_2

    add-long v20, v20, v12

    .line 38
    :cond_2
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v12

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->f(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v27

    sub-long v12, v12, v27

    cmp-long v27, v12, v6

    if-gez v27, :cond_3

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->f(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v12

    sub-long/2addr v6, v12

    .line 39
    :cond_3
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v12

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->f(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v27

    sub-long v12, v12, v27

    cmp-long v27, v12, v8

    if-lez v27, :cond_4

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v8

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Kc$a;->f(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    :cond_4
    move-object/from16 v4, v24

    goto :goto_2

    .line 40
    :cond_5
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    iget-object v12, v0, Lcom/huawei/hms/scankit/p/Kc$b;->f:Lcom/huawei/hms/scankit/p/Kc;

    iget-object v12, v12, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 42
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Kc$b$b;->a(Lcom/huawei/hms/scankit/p/Kc$b$b;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "result"

    invoke-virtual {v10, v12, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v5}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a(Lcom/huawei/hms/scankit/p/Kc$b$a;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "imgSizeHistogram"

    invoke-virtual {v10, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "callTime"

    .line 44
    invoke-virtual {v10, v3, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "transId"

    .line 45
    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v5, v16, v2

    if-eqz v5, :cond_6

    .line 46
    div-long v18, v18, v16

    :cond_6
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "costTime"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "allCnt"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failCnt"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codeCnt"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scanType"

    .line 50
    invoke-virtual {v10, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sceneType"

    .line 51
    invoke-virtual {v10, v2, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "min"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "algPhotoMode"

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/huawei/hms/scankit/p/Tc;->a()Lcom/huawei/hms/scankit/p/Tc;

    move-result-object v2

    const-string v3, "60001"

    invoke-virtual {v2, v3, v10}, Lcom/huawei/hms/scankit/p/Tc;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc$b;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/p/Kc$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Kc$b;->a()V

    return-void
.end method
