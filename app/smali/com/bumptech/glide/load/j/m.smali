.class public Lcom/bumptech/glide/load/j/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/j/m$b;
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
.field private final a:Lcom/bumptech/glide/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/f<",
            "Lcom/bumptech/glide/load/j/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/j/m$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/j/m$a;-><init>(Lcom/bumptech/glide/load/j/m;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/j/m;->a:Lcom/bumptech/glide/util/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/j/m$b;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/j/m$b;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/j/m;->a:Lcom/bumptech/glide/util/f;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/j/m$b;->a()V

    return-object p2
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/j/m$b;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/j/m$b;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/j/m;->a:Lcom/bumptech/glide/util/f;

    invoke-virtual {p2, p1, p4}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
