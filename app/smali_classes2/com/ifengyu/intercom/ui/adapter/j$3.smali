.class Lcom/ifengyu/intercom/ui/adapter/j$3;
.super Ljava/lang/Object;
.source "NoAlphaItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/j;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/j;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->b:Lcom/ifengyu/intercom/ui/adapter/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->b:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/ui/adapter/j;->a(Lcom/ifengyu/intercom/ui/adapter/j;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->b:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/j;->c(Lcom/ifengyu/intercom/ui/adapter/j;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
