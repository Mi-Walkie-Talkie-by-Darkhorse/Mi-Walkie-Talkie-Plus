.class Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;
.super Ljava/lang/Object;
.source "LiteChannelFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/base/recycler/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/lite/base/recycler/c$a<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    invoke-static {p3}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;I)I

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;->a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method
