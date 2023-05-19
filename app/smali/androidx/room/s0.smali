.class Landroidx/room/s0;
.super Ljava/lang/Object;
.source "SQLiteCopyOpenHelperFactory.java"

# interfaces
.implements La/g/a/c$c;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Callable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final d:La/g/a/c$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;La/g/a/c$c;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # La/g/a/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "La/g/a/c$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/s0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/room/s0;->b:Ljava/io/File;

    .line 4
    iput-object p3, p0, Landroidx/room/s0;->c:Ljava/util/concurrent/Callable;

    .line 5
    iput-object p4, p0, Landroidx/room/s0;->d:La/g/a/c$c;

    return-void
.end method


# virtual methods
.method public a(La/g/a/c$b;)La/g/a/c;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/room/r0;

    iget-object v1, p1, La/g/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/s0;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/s0;->b:Ljava/io/File;

    iget-object v4, p0, Landroidx/room/s0;->c:Ljava/util/concurrent/Callable;

    iget-object v0, p1, La/g/a/c$b;->c:La/g/a/c$a;

    iget v5, v0, La/g/a/c$a;->a:I

    iget-object v0, p0, Landroidx/room/s0;->d:La/g/a/c$c;

    .line 2
    invoke-interface {v0, p1}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/room/r0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILa/g/a/c;)V

    return-object v7
.end method
