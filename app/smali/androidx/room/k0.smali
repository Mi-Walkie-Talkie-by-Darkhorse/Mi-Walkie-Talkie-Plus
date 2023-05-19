.class final Landroidx/room/k0;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelperFactory.java"

# interfaces
.implements La/g/a/c$c;


# instance fields
.field private final a:La/g/a/c$c;

.field private final b:Landroidx/room/RoomDatabase$e;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(La/g/a/c$c;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # La/g/a/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/k0;->a:La/g/a/c$c;

    .line 3
    iput-object p2, p0, Landroidx/room/k0;->b:Landroidx/room/RoomDatabase$e;

    .line 4
    iput-object p3, p0, Landroidx/room/k0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(La/g/a/c$b;)La/g/a/c;
    .locals 3
    .param p1    # La/g/a/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/j0;

    iget-object v1, p0, Landroidx/room/k0;->a:La/g/a/c$c;

    invoke-interface {v1, p1}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/k0;->b:Landroidx/room/RoomDatabase$e;

    iget-object v2, p0, Landroidx/room/k0;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, v2}, Landroidx/room/j0;-><init>(La/g/a/c;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
