.class public Lcom/bumptech/glide/load/b/b$a;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/o",
        "<[B",
        "Ljava/nio/ByteBuffer;",
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
.method public a(Lcom/bumptech/glide/load/b/r;)Lcom/bumptech/glide/load/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/r;",
            ")",
            "Lcom/bumptech/glide/load/b/n",
            "<[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/b/b;

    new-instance v1, Lcom/bumptech/glide/load/b/b$a$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/b/b$a$1;-><init>(Lcom/bumptech/glide/load/b/b$a;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b;-><init>(Lcom/bumptech/glide/load/b/b$b;)V

    return-object v0
.end method
