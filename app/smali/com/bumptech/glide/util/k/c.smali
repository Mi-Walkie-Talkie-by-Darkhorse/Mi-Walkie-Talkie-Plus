.class public abstract Lcom/bumptech/glide/util/k/c;
.super Ljava/lang/Object;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/k/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/util/k/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/util/k/c;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/util/k/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/k/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/k/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method abstract a(Z)V
.end method
