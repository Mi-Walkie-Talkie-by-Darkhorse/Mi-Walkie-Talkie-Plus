.class public final synthetic Lcom/ifengyu/intercom/ui/activity/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

.field private final synthetic b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/z;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/z;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput p3, p0, Lcom/ifengyu/intercom/ui/activity/z;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/z;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/z;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/z;->c:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
