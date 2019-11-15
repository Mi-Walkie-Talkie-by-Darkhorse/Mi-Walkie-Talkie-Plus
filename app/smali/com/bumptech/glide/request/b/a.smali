.class public Lcom/bumptech/glide/request/b/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/e",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private c:Lcom/bumptech/glide/request/b/b;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/b/a;->a:I

    iput-boolean p2, p0, Lcom/bumptech/glide/request/b/a;->b:Z

    return-void
.end method

.method private a()Lcom/bumptech/glide/request/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/b/d",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/b/a;->c:Lcom/bumptech/glide/request/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/b/b;

    iget v1, p0, Lcom/bumptech/glide/request/b/a;->a:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/b/a;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/b/b;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/b/a;->c:Lcom/bumptech/glide/request/b/b;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/b/a;->c:Lcom/bumptech/glide/request/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/b/d",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/request/b/c;->b()Lcom/bumptech/glide/request/b/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/a;->a()Lcom/bumptech/glide/request/b/d;

    move-result-object v0

    goto :goto_0
.end method
