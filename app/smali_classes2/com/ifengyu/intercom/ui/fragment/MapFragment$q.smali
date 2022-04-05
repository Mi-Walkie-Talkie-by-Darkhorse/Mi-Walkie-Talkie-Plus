.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->m()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->l()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->n()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/lite/g/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/g/t;->b()V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/os/Message;->arg1:I

    const v0, 0x8f03

    iput v0, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f1100e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;->a(Ljava/lang/Boolean;)V

    return-void
.end method
