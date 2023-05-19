.class Lcom/ifengyu/intercom/ui/widget/dialog/o$a;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/o;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$c;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-interface {p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/o$c;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
