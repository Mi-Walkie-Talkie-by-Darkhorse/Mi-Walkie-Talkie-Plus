.class Lcom/ifengyu/intercom/ui/adapter/d$2;
.super Ljava/lang/Object;
.source "DolphinRelayAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/d$b;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/d;Lcom/ifengyu/intercom/ui/adapter/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->a:Lcom/ifengyu/intercom/ui/adapter/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->a:Lcom/ifengyu/intercom/ui/adapter/d$b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/d$b;->getAdapterPosition()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->b(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/adapter/d$a;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->a:Lcom/ifengyu/intercom/ui/adapter/d$b;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/adapter/d$b;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$2;->b:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v2, v3, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/d$a;->b(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
