.class Lcom/ifengyu/intercom/ui/adapter/n$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/n$e;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/n;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/n;Lcom/ifengyu/intercom/ui/adapter/n$e;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->a:Lcom/ifengyu/intercom/ui/adapter/n$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->a:Lcom/ifengyu/intercom/ui/adapter/n$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->b(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->c(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->c(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->a:Lcom/ifengyu/intercom/ui/adapter/n$e;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/n$c;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/n;->b(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/n$d;->a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
