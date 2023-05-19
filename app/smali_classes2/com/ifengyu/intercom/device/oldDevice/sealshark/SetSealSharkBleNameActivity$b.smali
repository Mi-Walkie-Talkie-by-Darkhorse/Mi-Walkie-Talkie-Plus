.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity$b;
.super Ljava/lang/Object;
.source "SetSealSharkBleNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SetSealSharkBleNameActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
