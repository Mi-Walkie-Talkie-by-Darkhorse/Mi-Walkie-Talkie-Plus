.class public Lcom/bumptech/glide/load/b/n$a;
.super Ljava/lang/Object;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/c;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/bumptech/glide/load/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/a/b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/b/n$a;-><init>(Lcom/bumptech/glide/load/c;Ljava/util/List;Lcom/bumptech/glide/load/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/c;Ljava/util/List;Lcom/bumptech/glide/load/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c;",
            ">;",
            "Lcom/bumptech/glide/load/a/b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/n$a;->a:Lcom/bumptech/glide/load/c;

    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/n$a;->b:Ljava/util/List;

    invoke-static {p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/b;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/b;

    return-void
.end method
