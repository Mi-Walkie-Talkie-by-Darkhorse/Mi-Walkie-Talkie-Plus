.class Lcom/bumptech/glide/load/k/f/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/k/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/k/f/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/k/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/k/f/g$c;->a:Lcom/bumptech/glide/load/k/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/k/f/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/k/f/g$c;->a:Lcom/bumptech/glide/load/k/f/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/k/f/g;->a(Lcom/bumptech/glide/load/k/f/g$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/k/f/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/k/f/g$c;->a:Lcom/bumptech/glide/load/k/f/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/k/f/g;->d:Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/h/h;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
