.class final Lcom/bumptech/glide/load/engine/DecodeJob$b;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f$a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/DecodeJob;

.field private final b:Lcom/bumptech/glide/load/DataSource;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->b:Lcom/bumptech/glide/load/DataSource;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/q;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TZ;>;)",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/q;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/q;)Lcom/bumptech/glide/load/engine/q;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/q",
            "<TZ;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$b;->b(Lcom/bumptech/glide/load/engine/q;)Ljava/lang/Class;

    move-result-object v6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->b:Lcom/bumptech/glide/load/DataSource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/load/engine/e;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/h;

    move-result-object v5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/e;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v3, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->e:I

    invoke-interface {v5, v0, p1, v2, v3}, Lcom/bumptech/glide/load/h;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/q;II)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    move-object v8, v0

    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/q;->e()V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/e;->a(Lcom/bumptech/glide/load/engine/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/e;->b(Lcom/bumptech/glide/load/engine/q;)Lcom/bumptech/glide/load/g;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v0

    move-object v9, v1

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/e;->a(Lcom/bumptech/glide/load/c;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/load/engine/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->b:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v2, v1, v3, v0}, Lcom/bumptech/glide/load/engine/g;->a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v9, :cond_3

    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/q;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->c:Lcom/bumptech/glide/load/EncodeStrategy;

    move-object v9, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->a:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/c;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V

    :goto_3
    invoke-static {v8}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/engine/q;)Lcom/bumptech/glide/load/engine/p;

    move-result-object v8

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v1, v0, v9, v8}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/p;)V

    :cond_4
    return-object v8

    :cond_5
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->b:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/bumptech/glide/load/engine/s;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v3, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v4, v4, Lcom/bumptech/glide/load/engine/DecodeJob;->e:I

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/s;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/h;Ljava/lang/Class;Lcom/bumptech/glide/load/e;)V

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v8, p1

    move-object v5, v1

    goto/16 :goto_0
.end method
