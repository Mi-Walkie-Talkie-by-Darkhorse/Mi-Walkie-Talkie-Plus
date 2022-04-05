.class Lb/b/a/a/d/d$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/d/d;


# direct methods
.method public constructor <init>(Lb/b/a/a/d/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/d/d$a;->a:Lb/b/a/a/d/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/d/d$a;->a:Lb/b/a/a/d/d;

    invoke-static {v0}, Lb/b/a/a/d/d;->a(Lb/b/a/a/d/d;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/b/a/a/d/c;

    invoke-static {v0, p1}, Lb/b/a/a/d/d;->a(Landroid/content/Context;Lb/b/a/a/d/c;)V

    :goto_0
    return-void
.end method
