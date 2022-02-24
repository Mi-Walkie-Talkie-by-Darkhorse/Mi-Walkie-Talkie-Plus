.class public La/g/a/c$b$a;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:La/g/a/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/g/a/c$b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(La/g/a/c$a;)La/g/a/c$b$a;
    .locals 0
    .param p1    # La/g/a/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iput-object p1, p0, La/g/a/c$b$a;->c:La/g/a/c$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)La/g/a/c$b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, La/g/a/c$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()La/g/a/c$b;
    .locals 4

    .line 1
    iget-object v0, p0, La/g/a/c$b$a;->c:La/g/a/c$a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, La/g/a/c$b$a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, La/g/a/c$b;

    iget-object v3, p0, La/g/a/c$b$a;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, La/g/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;La/g/a/c$a;)V

    return-object v2

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
