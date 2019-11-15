.class Lcom/ifengyu/intercom/ui/adapter/i$1;
.super Ljava/lang/Object;
.source "MyCommonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/i;->a(Landroid/view/ViewGroup;Lcom/zhy/a/a/a/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/a/a/a/c;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/i;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/i;Lcom/zhy/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->b:Lcom/ifengyu/intercom/ui/adapter/i;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->a:Lcom/zhy/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->b:Lcom/ifengyu/intercom/ui/adapter/i;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/i;->a(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->a:Lcom/zhy/a/a/a/c;

    invoke-virtual {v0}, Lcom/zhy/a/a/a/c;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->b:Lcom/ifengyu/intercom/ui/adapter/i;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/i;->b(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/i$1;->a:Lcom/zhy/a/a/a/c;

    invoke-interface {v1, p1, v2, v0}, Lcom/zhy/a/a/b$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method
