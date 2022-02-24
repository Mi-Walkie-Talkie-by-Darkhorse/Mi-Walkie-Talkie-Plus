.class Lcom/ifengyu/intercom/ui/adapter/d$a;
.super Ljava/lang/Object;
.source "DolphinRelayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/d$d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/d;Lcom/ifengyu/intercom/ui/adapter/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->a:Lcom/ifengyu/intercom/ui/adapter/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->a:Lcom/ifengyu/intercom/ui/adapter/d$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->b(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/adapter/d$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->a:Lcom/ifengyu/intercom/ui/adapter/d$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$a;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v0, v1, p1, v2}, Lcom/ifengyu/intercom/ui/adapter/d$c;->b(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    return-void
.end method
