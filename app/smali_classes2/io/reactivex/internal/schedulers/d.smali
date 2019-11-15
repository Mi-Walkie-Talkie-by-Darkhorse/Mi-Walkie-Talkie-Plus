.class public final Lio/reactivex/internal/schedulers/d;
.super Lio/reactivex/r;
.source "NewThreadScheduler.java"


# static fields
.field private static final c:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xa

    const-string v2, "rx2.newthread-priority"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/d;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/internal/schedulers/d;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/d;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/r;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/r$c;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v0, Lio/reactivex/internal/schedulers/e;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
