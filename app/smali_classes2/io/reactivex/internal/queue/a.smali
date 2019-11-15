.class public final Lio/reactivex/internal/queue/a;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/a/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:I

.field private static final j:Ljava/lang/Object;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field c:I

.field d:J

.field final e:I

.field f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:I

.field h:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/internal/queue/a;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/queue/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/reactivex/internal/util/j;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/queue/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lio/reactivex/internal/queue/a;->e:I

    invoke-direct {p0, v0}, Lio/reactivex/internal/queue/a;->a(I)V

    iput-object v2, p0, Lio/reactivex/internal/queue/a;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lio/reactivex/internal/queue/a;->g:I

    add-int/lit8 v0, v1, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lio/reactivex/internal/queue/a;->d:J

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/a;->a(J)V

    return-void
.end method

.method private static a(JI)I
    .locals 2

    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lio/reactivex/internal/queue/a;->b(I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/queue/a;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p2, p3, p4}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v0

    invoke-static {p1, v0}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {p0, v2, v3}, Lio/reactivex/internal/queue/a;->b(J)V

    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lio/reactivex/internal/queue/a;->b(I)I

    move-result v1

    invoke-static {p1, v1}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x4

    sget v1, Lio/reactivex/internal/queue/a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/queue/a;->c:I

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lio/reactivex/internal/queue/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-long v2, p2, p6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/queue/a;->d:J

    invoke-static {v1, p4, p5}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    sget-object v0, Lio/reactivex/internal/queue/a;->j:Ljava/lang/Object;

    invoke-static {p1, p4, v0}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    add-long v0, p2, v4

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/a;->a(J)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lio/reactivex/internal/queue/a;->b(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    invoke-static {p1, p5, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/a;->a(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private static b(I)I
    .locals 0

    return p0
.end method

.method private static b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/queue/a;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p2, p3, p4}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v0

    invoke-static {p1, v0}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private f()J
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()J
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private h()J
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()J
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null is not a valid element"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/reactivex/internal/queue/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/queue/a;->h()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v2, v0, Lio/reactivex/internal/queue/a;->e:I

    invoke-static {v6, v7, v2}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lio/reactivex/internal/queue/a;->d:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lio/reactivex/internal/queue/a;->c:I

    int-to-long v10, v3

    add-long/2addr v10, v6

    invoke-static {v10, v11, v2}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v5

    invoke-static {v4, v5}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    int-to-long v2, v3

    add-long/2addr v2, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lio/reactivex/internal/queue/a;->d:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    invoke-static {v10, v11, v2}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v3

    invoke-static {v4, v3}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    goto :goto_0

    :cond_3
    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move v14, v8

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    const-wide/16 v6, 0x2

    iget-object v0, p0, Lio/reactivex/internal/queue/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->f()J

    move-result-wide v2

    iget v1, p0, Lio/reactivex/internal/queue/a;->e:I

    add-long v4, v2, v6

    invoke-static {v4, v5, v1}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v4

    invoke-static {v0, v4}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {v2, v3, v1}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    add-long v0, v2, v6

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/a;->a(J)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v5, p0, Lio/reactivex/internal/queue/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v2, v3, v1}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v5, v4, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    invoke-static {v5, v1, p1}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    invoke-direct {p0, v0, v5}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    sget-object v4, Lio/reactivex/internal/queue/a;->j:Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    add-long v0, v2, v6

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/a;->a(J)V

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->f()J

    move-result-wide v0

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lio/reactivex/internal/queue/a;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->i()J

    move-result-wide v2

    iget v4, p0, Lio/reactivex/internal/queue/a;->g:I

    invoke-static {v2, v3, v4}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v0

    invoke-static {v1, v0}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lio/reactivex/internal/queue/a;->j:Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, v4}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e()I
    .locals 6

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->g()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->f()J

    move-result-wide v4

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public e_()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p0, Lio/reactivex/internal/queue/a;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0}, Lio/reactivex/internal/queue/a;->i()J

    move-result-wide v4

    iget v6, p0, Lio/reactivex/internal/queue/a;->g:I

    invoke-static {v4, v5, v6}, Lio/reactivex/internal/queue/a;->a(JI)I

    move-result v7

    invoke-static {v3, v7}, Lio/reactivex/internal/queue/a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/reactivex/internal/queue/a;->j:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    invoke-static {v3, v7, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lio/reactivex/internal/queue/a;->b(J)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v3, v0}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5, v6}, Lio/reactivex/internal/queue/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
