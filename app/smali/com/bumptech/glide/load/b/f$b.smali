.class public Lcom/bumptech/glide/load/b/f$b;
.super Lcom/bumptech/glide/load/b/f$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/f$a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/b/f$b$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/f$b$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/f$a;-><init>(Lcom/bumptech/glide/load/b/f$d;)V

    return-void
.end method
