.class public Lcom/bumptech/glide/load/j/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/j/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/j/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j/o<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
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
    .locals 3
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
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/j/u;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/j/r;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/j/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/j/u;-><init>(Lcom/bumptech/glide/load/j/n;)V

    return-object v0
.end method
