.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/m/b/c$c;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/t;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/t;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/t;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/t;->b:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->m3(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
