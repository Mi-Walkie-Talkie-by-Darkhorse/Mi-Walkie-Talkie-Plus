.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/a0;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/a0;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/a0;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->s3(Ljava/lang/String;)V

    return-void
.end method