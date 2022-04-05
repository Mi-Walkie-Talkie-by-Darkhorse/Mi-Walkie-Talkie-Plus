.class Lcom/ifengyu/intercom/ui/widget/dialog/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/w;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/w;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

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

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Lcom/ifengyu/intercom/ui/widget/dialog/w$c;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-interface {p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w$c;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
