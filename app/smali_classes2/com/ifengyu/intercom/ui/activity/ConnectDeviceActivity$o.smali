.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 p4, 0x0

    invoke-static {p2, p4}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result p2

    const p4, 0x8f03

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    move-result-object p2

    new-instance p4, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;

    invoke-direct {p4, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/baseui/c;->a(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1100bf

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
