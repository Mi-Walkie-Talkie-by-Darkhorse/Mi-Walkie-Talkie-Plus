.class Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BaseRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/imui/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/base/a;

.field final synthetic b:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;Lcom/ifengyu/intercom/ui/imui/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;->b:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;->a:Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;->b:Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->access$100(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;)Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;->a:Lcom/ifengyu/intercom/ui/imui/base/a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/base/a;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$2;->a:Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$b;->a(Landroid/view/View;I)V

    const/4 v0, 0x1

    return v0
.end method
