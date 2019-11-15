.class Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;
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
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v4, v1, v1, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v6, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v4

    add-int/2addr v4, v3

    mul-int/lit8 v5, v6, 0x3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)I

    move-result v0

    move v1, v6

    :goto_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    :goto_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v6, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v4

    mul-int/lit8 v5, v6, 0x3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)I

    move-result v0

    move v1, v6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IILjava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
