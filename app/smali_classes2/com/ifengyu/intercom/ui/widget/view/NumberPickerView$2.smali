.class Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;
.super Landroid/os/Handler;
.source "NumberPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
