.class Lcom/bumptech/glide/g$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/a/h;

.field final synthetic b:Lcom/bumptech/glide/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/g;Lcom/bumptech/glide/request/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/g$2;->b:Lcom/bumptech/glide/g;

    iput-object p2, p0, Lcom/bumptech/glide/g$2;->a:Lcom/bumptech/glide/request/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/g$2;->b:Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/bumptech/glide/g$2;->a:Lcom/bumptech/glide/request/a/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/a/h;)V

    return-void
.end method
