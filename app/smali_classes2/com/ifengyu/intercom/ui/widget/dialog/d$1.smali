.class Lcom/ifengyu/intercom/ui/widget/dialog/d$1;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const v1, 0x7f1001de

    invoke-interface {v0, v2, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const v1, 0x7f1001df

    invoke-interface {v0, v2, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const v1, 0x7f1001e0

    invoke-interface {v0, v2, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001de
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
