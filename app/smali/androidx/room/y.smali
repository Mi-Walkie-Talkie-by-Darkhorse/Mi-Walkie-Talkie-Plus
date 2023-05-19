.class final Landroidx/room/y;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelperFactory.java"

# interfaces
.implements La/g/a/c$c;


# instance fields
.field private final a:La/g/a/c$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroidx/room/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(La/g/a/c$c;Landroidx/room/w;)V
    .locals 0
    .param p1    # La/g/a/c$c;
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
    iput-object p1, p0, Landroidx/room/y;->a:La/g/a/c$c;

    .line 3
    iput-object p2, p0, Landroidx/room/y;->b:Landroidx/room/w;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(La/g/a/c$b;)La/g/a/c;
    .locals 0
    .param p1    # La/g/a/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/y;->b(La/g/a/c$b;)Landroidx/room/x;

    move-result-object p1

    return-object p1
.end method

.method public b(La/g/a/c$b;)Landroidx/room/x;
    .locals 2
    .param p1    # La/g/a/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/x;

    iget-object v1, p0, Landroidx/room/y;->a:La/g/a/c$c;

    invoke-interface {v1, p1}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/y;->b:Landroidx/room/w;

    invoke-direct {v0, p1, v1}, Landroidx/room/x;-><init>(La/g/a/c;Landroidx/room/w;)V

    return-object v0
.end method
