.class Lcom/bumptech/glide/g$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/g;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/g$1;->a:Lcom/bumptech/glide/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/g$1;->a:Lcom/bumptech/glide/g;

    iget-object v0, v0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/g$1;->a:Lcom/bumptech/glide/g;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    return-void
.end method
