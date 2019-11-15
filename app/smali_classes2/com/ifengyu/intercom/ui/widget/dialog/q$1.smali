.class Lcom/ifengyu/intercom/ui/widget/dialog/q$1;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/q;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/q;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Lcom/ifengyu/intercom/ui/widget/dialog/q;)Lcom/ifengyu/intercom/ui/widget/dialog/q$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-interface {v0, v1, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->dismiss()V

    return-void
.end method
