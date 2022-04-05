.class Landroidx/room/n;
.super Ljava/lang/Object;

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

.field private final c:La/g/a/c$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;La/g/a/c$c;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # La/g/a/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/n;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/n;->b:Ljava/io/File;

    iput-object p3, p0, Landroidx/room/n;->c:La/g/a/c$c;

    return-void
.end method


# virtual methods
.method public a(La/g/a/c$b;)La/g/a/c;
    .locals 7

    new-instance v6, Landroidx/room/m;

    iget-object v1, p1, La/g/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/n;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/n;->b:Ljava/io/File;

    iget-object v0, p1, La/g/a/c$b;->c:La/g/a/c$a;

    iget v4, v0, La/g/a/c$a;->a:I

    iget-object v0, p0, Landroidx/room/n;->c:La/g/a/c$c;

    invoke-interface {v0, p1}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILa/g/a/c;)V

    return-object v6
.end method
