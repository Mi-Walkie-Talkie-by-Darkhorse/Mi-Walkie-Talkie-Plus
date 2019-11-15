.class Lcom/ifengyu/intercom/ui/adapter/c$e;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DiscoveryFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/ifengyu/intercom/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f10021c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f10021d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f10021e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/c$a;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/c$a;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/c$a;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10021c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
