.class final Lcom/bumptech/glide/load/engine/y/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/util/k/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/y/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/bumptech/glide/util/k/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/util/k/c;->b()Lcom/bumptech/glide/util/k/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/y/j$b;->b:Lcom/bumptech/glide/util/k/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/y/j$b;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public h()Lcom/bumptech/glide/util/k/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y/j$b;->b:Lcom/bumptech/glide/util/k/c;

    return-object v0
.end method
