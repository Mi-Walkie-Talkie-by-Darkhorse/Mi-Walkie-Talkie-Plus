.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

.field public final synthetic b:Lcom/ifengyu/intercom/models/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->C3(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
