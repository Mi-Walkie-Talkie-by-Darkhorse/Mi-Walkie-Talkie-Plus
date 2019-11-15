.class public final Lrx/e/d;
.super Lrx/d;
.source "NewThreadScheduler.java"


# static fields
.field private static final a:Lrx/internal/util/RxThreadFactory;

.field private static final b:Lrx/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/e/d;->a:Lrx/internal/util/RxThreadFactory;

    new-instance v0, Lrx/e/d;

    invoke-direct {v0}, Lrx/e/d;-><init>()V

    sput-object v0, Lrx/e/d;->b:Lrx/e/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrx/d;-><init>()V

    return-void
.end method

.method static c()Lrx/e/d;
    .locals 1

    sget-object v0, Lrx/e/d;->b:Lrx/e/d;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    new-instance v0, Lrx/internal/schedulers/c;

    sget-object v1, Lrx/e/d;->a:Lrx/internal/util/RxThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
