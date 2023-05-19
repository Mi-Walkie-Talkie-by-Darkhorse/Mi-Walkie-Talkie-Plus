.class Lcom/ifengyu/intercom/ui/widget/dialog/d$a;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900c2

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900c1

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900c0

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
