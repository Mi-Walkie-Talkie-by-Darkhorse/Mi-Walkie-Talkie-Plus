.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

.field public final synthetic b:Lcom/ifengyu/intercom/m/b/h;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;Lcom/ifengyu/intercom/m/b/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->b:Lcom/ifengyu/intercom/m/b/h;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->b:Lcom/ifengyu/intercom/m/b/h;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/u;->c:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->p3(Lcom/ifengyu/intercom/m/b/h;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
