.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;
.super Ljava/lang/Object;
.source "DialogPlus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Landroid/view/View;)V

    goto :goto_0
.end method
