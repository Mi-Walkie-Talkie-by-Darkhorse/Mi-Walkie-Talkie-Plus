.class Lb/b/a/a/d/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/d/b;


# direct methods
.method public constructor <init>(Lb/b/a/a/d/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/d/b$a;->a:Lb/b/a/a/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/d/b$a;->a:Lb/b/a/a/d/b;

    invoke-static {p1}, Lb/b/a/a/d/b;->a(Lb/b/a/a/d/b;)Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    iget-object p1, p0, Lb/b/a/a/d/b$a;->a:Lb/b/a/a/d/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/b/a/a/d/b;->a(Lb/b/a/a/d/b;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/a/a/d/b$a;->a:Lb/b/a/a/d/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/b/a/a/d/a;

    invoke-static {v0, p1}, Lb/b/a/a/d/b;->a(Lb/b/a/a/d/b;Lb/b/a/a/d/a;)V

    :goto_0
    return-void
.end method
