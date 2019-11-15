.class public Lcom/liulishuo/filedownloader/download/b;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/b$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:J

.field final d:J

.field private final e:Z

.field private final f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 11

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJZ)V

    return-void
.end method

.method synthetic constructor <init>(JJJJLcom/liulishuo/filedownloader/download/b$1;)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJ)V

    return-void
.end method

.method private constructor <init>(JJJJZ)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    cmp-long v0, p5, v2

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p9, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    iput-wide p5, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    iput-wide p7, p0, Lcom/liulishuo/filedownloader/download/b;->d:J

    iput-boolean p9, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    return-void
.end method

.method synthetic constructor <init>(JJJJZLcom/liulishuo/filedownloader/download/b$1;)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/a/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "HEAD"

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/b;->b(Ljava/lang/String;)Z

    :cond_1
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "bytes=%d-"

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "Range"

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "bytes=%d-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "range[%d, %d) current offset[%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
