.class final Lde/greenrobot/event/g;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/greenrobot/event/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/Object;

.field b:Lde/greenrobot/event/l;

.field c:Lde/greenrobot/event/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/greenrobot/event/g;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/g;->a:Ljava/lang/Object;

    iput-object p2, p0, Lde/greenrobot/event/g;->b:Lde/greenrobot/event/l;

    return-void
.end method

.method static a(Lde/greenrobot/event/l;Ljava/lang/Object;)Lde/greenrobot/event/g;
    .locals 3

    sget-object v0, Lde/greenrobot/event/g;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lde/greenrobot/event/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lde/greenrobot/event/g;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/g;

    iput-object p1, v1, Lde/greenrobot/event/g;->a:Ljava/lang/Object;

    iput-object p0, v1, Lde/greenrobot/event/g;->b:Lde/greenrobot/event/l;

    const/4 p0, 0x0

    iput-object p0, v1, Lde/greenrobot/event/g;->c:Lde/greenrobot/event/g;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lde/greenrobot/event/g;

    invoke-direct {v0, p1, p0}, Lde/greenrobot/event/g;-><init>(Ljava/lang/Object;Lde/greenrobot/event/l;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static a(Lde/greenrobot/event/g;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lde/greenrobot/event/g;->a:Ljava/lang/Object;

    iput-object v0, p0, Lde/greenrobot/event/g;->b:Lde/greenrobot/event/l;

    iput-object v0, p0, Lde/greenrobot/event/g;->c:Lde/greenrobot/event/g;

    sget-object v0, Lde/greenrobot/event/g;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lde/greenrobot/event/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    sget-object v1, Lde/greenrobot/event/g;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
