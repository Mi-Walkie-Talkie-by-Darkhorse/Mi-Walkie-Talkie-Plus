.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;
.super Ljava/lang/Object;
.source "DialogPlus.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
