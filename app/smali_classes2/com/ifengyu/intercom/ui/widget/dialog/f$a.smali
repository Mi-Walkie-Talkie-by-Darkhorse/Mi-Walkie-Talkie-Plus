.class Lcom/ifengyu/intercom/ui/widget/dialog/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900b1

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900b0

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const p2, 0x7f0900af

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900af
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
