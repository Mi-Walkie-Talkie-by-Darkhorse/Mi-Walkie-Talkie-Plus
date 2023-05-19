.class Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;
.super Ljava/lang/Object;
.source "LiteChannelFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->h3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/device/lite/base/recycler/c$a<",
        "Lcom/ifengyu/intercom/models/ChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;->b(Landroid/view/View;ILcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method public b(Landroid/view/View;ILcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    invoke-static {p3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->q3(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/qmuiteam/qmui/arch/b;->y2(Lcom/qmuiteam/qmui/arch/b;I)I

    return-void
.end method
