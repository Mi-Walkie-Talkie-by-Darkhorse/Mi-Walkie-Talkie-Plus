.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/x;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/x;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    check-cast p1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->w3(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V

    return-void
.end method
