.class public Lcom/bumptech/glide/load/b/m;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/e",
            "<",
            "Lcom/bumptech/glide/load/b/m$a",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/m$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/b/m$1;-><init>(Lcom/bumptech/glide/load/b/m;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/util/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/util/e;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/m$a;->a()V

    return-object v1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/util/e;

    invoke-virtual {v1, v0, p4}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
