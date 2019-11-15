.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;
.super Ljava/lang/Object;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-static {v0, p2, p4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    const/4 v2, 0x2

    if-nez p4, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_0
.end method
