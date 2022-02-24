.class public final synthetic Lcom/ifengyu/intercom/ui/activity/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/e;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/ui/activity/e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/e;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/e;->c:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/String;ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
