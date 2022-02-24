.class Lcom/ifengyu/intercom/ui/adapter/c$e;
.super Landroidx/recyclerview/widget/RecyclerView$y;
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
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901d9

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f0901da

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f0901db

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->c:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/c$a;->b()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/c$a;->d()V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$e;->d:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/c$a;->c()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
