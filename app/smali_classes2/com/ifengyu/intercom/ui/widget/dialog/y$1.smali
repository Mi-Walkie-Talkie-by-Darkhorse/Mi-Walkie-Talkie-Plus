.class Lcom/ifengyu/intercom/ui/widget/dialog/y$1;
.super Ljava/lang/Object;
.source "SharkSetPowerListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/y;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/y;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/y;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/y;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a(Lcom/ifengyu/intercom/ui/widget/dialog/y;)Lcom/ifengyu/intercom/ui/widget/dialog/y$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/y;

    invoke-interface {v0, v1, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/y$b;->a(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/y;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->dismiss()V

    return-void
.end method
