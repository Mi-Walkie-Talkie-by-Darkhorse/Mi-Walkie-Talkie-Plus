.class public Lcom/shanlitech/et/core/c/q;
.super Lcom/shanlitech/et/core/c/f;
.source "PocRecorderManager.java"


# static fields
.field private static final c:Ljava/lang/String; = "q"

.field private static d:Lcom/shanlitech/et/core/c/q;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/f;-><init>()V

    return-void
.end method

.method public static c()Lcom/shanlitech/et/core/c/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/q;->d:Lcom/shanlitech/et/core/c/q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shanlitech/et/core/c/q;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/q;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/q;->d:Lcom/shanlitech/et/core/c/q;

    .line 3
    :cond_0
    sget-object v0, Lcom/shanlitech/et/core/c/q;->d:Lcom/shanlitech/et/core/c/q;

    return-object v0
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(II)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;

    invoke-direct {v1, p1, p2}, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public e(JIJJLjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move/from16 v4, p3

    const/4 v1, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shanlitech/et/core/c/q;->b:J

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/shanlitech/et/core/c/q;->a:J

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/shanlitech/et/core/c/q;->b:J

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/shanlitech/et/core/c/q;->a:J

    .line 4
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v12

    new-instance v13, Lcom/shanlitech/et/notice/event/RecordStatusEvent;

    iget-wide v10, v0, Lcom/shanlitech/et/core/c/q;->a:J

    move-object v1, v13

    move-wide v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/shanlitech/et/notice/event/RecordStatusEvent;-><init>(JIJJLjava/lang/String;J)V

    invoke-virtual {v12, v13}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method
