.class final Landroidx/room/j0;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelper.java"

# interfaces
.implements La/g/a/c;
.implements Landroidx/room/a0;


# instance fields
.field private final a:La/g/a/c;

.field private final b:Landroidx/room/RoomDatabase$e;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(La/g/a/c;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # La/g/a/c;
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
    iput-object p1, p0, Landroidx/room/j0;->a:La/g/a/c;

    .line 3
    iput-object p2, p0, Landroidx/room/j0;->b:Landroidx/room/RoomDatabase$e;

    .line 4
    iput-object p3, p0, Landroidx/room/j0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->a:La/g/a/c;

    invoke-interface {v0}, La/g/a/c;->close()V

    return-void
.end method

.method public f()La/g/a/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->a:La/g/a/c;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->a:La/g/a/c;

    invoke-interface {v0}, La/g/a/c;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->a:La/g/a/c;

    invoke-interface {v0, p1}, La/g/a/c;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public v()La/g/a/b;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/i0;

    iget-object v1, p0, Landroidx/room/j0;->a:La/g/a/c;

    invoke-interface {v1}, La/g/a/c;->v()La/g/a/b;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/j0;->b:Landroidx/room/RoomDatabase$e;

    iget-object v3, p0, Landroidx/room/j0;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/i0;-><init>(La/g/a/b;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public w()La/g/a/b;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/i0;

    iget-object v1, p0, Landroidx/room/j0;->a:La/g/a/c;

    invoke-interface {v1}, La/g/a/c;->w()La/g/a/b;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/j0;->b:Landroidx/room/RoomDatabase$e;

    iget-object v3, p0, Landroidx/room/j0;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/i0;-><init>(La/g/a/b;Landroidx/room/RoomDatabase$e;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
