.class final Landroidx/room/x;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements La/g/a/c;
.implements Landroidx/room/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/x$b;,
        Landroidx/room/x$c;,
        Landroidx/room/x$a;
    }
.end annotation


# instance fields
.field private final a:La/g/a/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroidx/room/x$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroidx/room/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(La/g/a/c;Landroidx/room/w;)V
    .locals 0
    .param p1    # La/g/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/x;->a:La/g/a/c;

    .line 3
    iput-object p2, p0, Landroidx/room/x;->c:Landroidx/room/w;

    .line 4
    invoke-virtual {p2, p1}, Landroidx/room/w;->f(La/g/a/c;)V

    .line 5
    new-instance p1, Landroidx/room/x$a;

    invoke-direct {p1, p2}, Landroidx/room/x$a;-><init>(Landroidx/room/w;)V

    iput-object p1, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    invoke-virtual {v0}, Landroidx/room/x$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Landroidx/room/w0/e;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f()La/g/a/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x;->a:La/g/a/c;

    return-object v0
.end method

.method g()Landroidx/room/w;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x;->c:Landroidx/room/w;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x;->a:La/g/a/c;

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
    iget-object v0, p0, Landroidx/room/x;->a:La/g/a/c;

    invoke-interface {v0, p1}, La/g/a/c;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public v()La/g/a/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    invoke-virtual {v0}, Landroidx/room/x$a;->i()V

    .line 2
    iget-object v0, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    return-object v0
.end method

.method public w()La/g/a/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    invoke-virtual {v0}, Landroidx/room/x$a;->i()V

    .line 2
    iget-object v0, p0, Landroidx/room/x;->b:Landroidx/room/x$a;

    return-object v0
.end method
