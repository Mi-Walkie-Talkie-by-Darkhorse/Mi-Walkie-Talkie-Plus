.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/z;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/z;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->m3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method
