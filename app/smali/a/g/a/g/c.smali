.class public final La/g/a/g/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements La/g/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/g/a/c$b;)La/g/a/c;
    .locals 4
    .param p1    # La/g/a/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, La/g/a/g/b;

    iget-object v1, p1, La/g/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, La/g/a/c$b;->b:Ljava/lang/String;

    iget-object v3, p1, La/g/a/c$b;->c:La/g/a/c$a;

    iget-boolean p1, p1, La/g/a/c$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, La/g/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;La/g/a/c$a;Z)V

    return-object v0
.end method
