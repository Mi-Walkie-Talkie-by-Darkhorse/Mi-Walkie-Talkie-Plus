.class final Lcom/bumptech/glide/util/a/a$2;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Lcom/bumptech/glide/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/util/a/a;->a(I)Landroid/support/v4/util/Pools$Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/a$a",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/util/a/a$2;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
