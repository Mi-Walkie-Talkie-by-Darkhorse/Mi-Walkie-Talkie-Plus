.class public Lcom/bumptech/glide/load/j/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/j/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j/o<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/j/r;)Lcom/bumptech/glide/load/j/n;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/j/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j/r;",
            ")",
            "Lcom/bumptech/glide/load/j/n<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/j/b;

    new-instance v0, Lcom/bumptech/glide/load/j/b$d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/j/b$d$a;-><init>(Lcom/bumptech/glide/load/j/b$d;)V

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/j/b;-><init>(Lcom/bumptech/glide/load/j/b$b;)V

    return-object p1
.end method
